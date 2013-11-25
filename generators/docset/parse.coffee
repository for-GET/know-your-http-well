fs = require 'fs'

module.exports =
  parse: ({docsetName, db, docsFolder, filePattern}) ->
    methods = JSON.parse fs.readFileSync '../master/json/methods.json', 'utf8'
    stmt = db.prepare 'INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES (?, ?, ?);'
    for method in methods
      stmt.run [method.method, 'Method', method.spec_href]
    stmt.finalize()
