#!/usr/bin/env bash

generators=(
    "emacs/http-headers.el"
    "emacs/http-methods.el"
    "emacs/http-relations.el"
    "emacs/http-status-codes.el"
    "emacs/know-your-http-well.el"
    "json/headers.json"
    "json/methods.json"
    "json/relations.json"
    "json/status-codes.json"
)

for generator in ${generators[*]}; do
    ./generators/$generator > master/$generator
done
