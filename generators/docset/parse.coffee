fs = require 'fs'
path = require 'path'
url = require 'url'
request = require 'request'

downloadQueueCount = 0
downloadFilenames = []

download = ({docsFolder, URI}) ->
  options = url.parse URI
  filename = path.basename options.pathname
  filename += '.html'  if path.extname(filename) isnt '.html'
  fragment = options.hash
  delete options.hash

  if filename in downloadFilenames
    return "#{filename}#{fragment}"
  downloadFilenames.push filename

  console.log "Downloading #{filename} from #{URI}..."
  downloadQueueCount += 1

  options =
    uri: url.format options
    headers:
      'User-Agent': 'know-your-http-well 0.0.0'

  request options, (err, res, body) ->
    if err? or res.statusCode isnt 200 or !body?
      console.error "Error downloading #{filename}"
      throw err

    fs.writeFile "#{docsFolder}/#{filename}", body, 'utf8', (err) ->
      if err?
        console.error "Error writing #{filename}"
        throw err
      downloadQueueCount -= 1

  "#{filename}#{fragment}"

module.exports =
  parse: ({docsetName, db, docsFolder, filePattern}) ->
    db.serialize () ->
      db.run 'DROP TABLE IF EXISTS searchIndex;'
      db.run 'CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);'
      db.run 'CREATE UNIQUE INDEX anchor ON searchIndex (name, type, path);'

      stmt = db.prepare 'INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES (?, ?, ?);'

      methods = JSON.parse fs.readFileSync '../../master/json/methods.json', 'utf8'
      for method in methods
        spec_href = download {docsFolder, URI: method.spec_href}
        stmt.run ["#{method.method}", 'Method', spec_href]

      headers = JSON.parse fs.readFileSync '../../master/json/headers.json', 'utf8'
      for header in headers
        spec_href = download {docsFolder, URI: header.spec_href}
        stmt.run ["#{header.header}", 'Field', spec_href]

      statuses = JSON.parse fs.readFileSync '../../master/json/status-codes.json', 'utf8'
      for status in statuses
        spec_href = download {docsFolder, URI: status.spec_href}
        stmt.run ["#{status.code} #{status.phrase}", 'Service', spec_href]

      stmt.finalize()
      db.close()
