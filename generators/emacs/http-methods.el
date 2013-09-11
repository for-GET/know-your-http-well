#!/usr/bin/env coffee

fs = require 'fs'
path = require 'path'
extract = require '../extract'

extract '../master/methods.md', "^`([A-Z\-]+)` \\\| ([^\\\|]+) \\\|", [], (matches) ->
  tpl = fs.readFileSync path.resolve(__dirname, './http-methods.el.tpl'), 'utf8'
  matchesEl = []
  for match in matches
    match = (item.replace /\"/g, ''  for item in match)
    # Ignore headers with no explanation
    continue  unless match[1]
    match[0] = match[0].toUpperCase()
    matchesEl.push "(\"#{match[0]}\" (\"#{match[1]}\"))"
  matchesEl = matchesEl.join "\n"
  console.log tpl.replace '{{ HTTP_METHODS }}', matchesEl
