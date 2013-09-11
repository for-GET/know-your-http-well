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

exports = module.exports = (filename, pattern, columnNames, fun) ->
  RE = new RegExp pattern, 'gm'
  replace =
    '✔': true
    '✘': false

  filename = path.resolve __dirname, filename
  file = fs.readFileSync filename, 'utf8'

  unless fun
    fun = (matches, columnNames) ->
      matchesObj = []
      for match in matches
        matchObj = {}
        for column, index in columnNames
          matchObj[column] = replace[match[index]]
          matchObj[column] ?= match[index]
        matchesObj.push matchObj
      matchesObj

  matches = RE.execAll file
  result = fun matches, columnNames
  JSON.stringify result, null, 4

if require.main is module
  do () ->
    filename = process.argv[2]
    pattern = process.argv[3]
    columnNames = process.argv.slice 4
    console.log module.exports filename, pattern, columnNames
