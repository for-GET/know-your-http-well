#!/usr/bin/env coffee

fs = require 'fs'
path = require 'path'

RegExp::execAll = (string) ->
  @lastIndex = 0
  matches = []
  while (match = @exec string)
    match = match.slice 1
    matches.push(group for group in match)
  matches

module.exports = (filename, pattern, columnNames, fun) ->
  RE = new RegExp pattern, 'gm'

  filename = path.resolve __dirname, filename
  file = fs.readFileSync filename, 'utf8'

  unless fun
    fun = (matches, columnNames) ->
      matchesObj = []
      for match in matches
        matchObj = {}
        for column, index in columnNames
          matchObj[column] = match[index]
        matchesObj.push matchObj
      matchesObj

  matches = RE.execAll file
  fun matches, columnNames

if require.main is module
  do () ->
    filename = process.argv[2]
    pattern = process.argv[3]
    columnNames = process.argv.slice 4
    console.log columnNames
    console.log module.exports filename, pattern, columnNames
