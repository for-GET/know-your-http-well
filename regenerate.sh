#!/usr/bin/env bash

./http-methods.el > master/emacs/http-methods.el
./methods.json > master/js/methods.json

./http-headers.el > master/emacs/http-headers.el
./headers.json > master/js/headers.json

./relations.json > master/js/relations.json

./http-status-codes.el > master/emacs/http-status-codes.el
./status-codes.json > master/js/status-codes.json
