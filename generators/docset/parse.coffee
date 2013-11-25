fs = require 'fs'

module.exports =
  parse: ({docsetName, db, docsFolder, filePattern}) ->
    db.serialize () ->
      db.run 'DROP TABLE IF EXISTS searchIndex;'
      db.run 'CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);'
      db.run 'CREATE UNIQUE INDEX anchor ON searchIndex (name, type, path);'

      stmt = db.prepare 'INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES (?, ?, ?);'

      methods = JSON.parse fs.readFileSync '../../master/json/methods.json', 'utf8'
      for method in methods
        stmt.run ["#{method.method} (#{method.spec_title})", 'Method', method.spec_href]

      headers = JSON.parse fs.readFileSync '../../master/json/headers.json', 'utf8'
      for header in headers
        stmt.run ["#{header.header} (#{header.spec_title})", 'Field', header.spec_href]

      statuses = JSON.parse fs.readFileSync '../../master/json/status-codes.json', 'utf8'
      for status in statuses
        stmt.run ["#{status.code} #{status.phrase} (#{status.spec_title})", 'Service', status.spec_href]

      stmt.finalize()
      db.close()
