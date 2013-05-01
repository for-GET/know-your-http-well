#!/usr/bin/env coffee

fs = require 'fs'
path = require 'path'
extract = require './extract'

extract 'master/status-codes.md', "^`([0-9a-zA-Z]{3})` \\\| ([^\\\|]+) \\\| ([^\\\|]+) \\\|", [], (matches) ->
  tpl = fs.readFileSync path.resolve(__dirname, './status-codes.el.tpl'), 'utf8'
  matchesEl = []
  for match in matches
    continue  unless parseInt(match[0]).toString() is match[0]
    match = (item.replace /\"/g, ''  for item in match)
    matchesEl.push "(#{match[0]} (\"#{match[1]}\" \"#{match[2]}\"))"
  matchesEl = matchesEl.join "\n"
  console.log tpl.replace '{{ HTTP_CODES }}', matchesEl
