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

# Dash docset
(
    cd generators/docset
    make publish
    cp $(ls -t know-your-http-well.docset-*.tgz | head -1) ../../master/docset/know-your-http-well.docset.tgz
    cp know-your-http-well.xml ../../master/docset/
    cd -
)
