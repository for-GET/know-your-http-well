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
    DOCSET_NAME="know-your-http-well" \
        DOCSET_VERSION="DOCSET_VERSION_PKG" \
        DOCSET_VERSION_PKG=../../master/package.json \
        DOCSET_ENTRY_URL="https://raw.github.com/for-GET/know-your-http-well/master/docset/know-your-http-well.docset.tgz" \
        npm pack
    cp know-your-http-well.docset-*.tgz ../../master/docset/know-your-http-well.docset.tgz
    cp feed.xml ../../master/docset/
    cd -
)
