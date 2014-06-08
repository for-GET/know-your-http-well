export DOCSET_ID=know-your-http-well
export DOCSET_NAME =know-your-http-well
export DOCSET_VERSION=DOCSET_VERSION_PKG
export DOCSET_VERSION_PKG=../../master/package.json
export DOCSET_INDEX_URL=https://github.com/for-GET/know-your-http-well
export DOCSET_ENTRY_URL=https://raw.github.com/for-GET/know-your-http-well/master/docset/know-your-http-well.docset.tgz
export DOCSET_PARSER=parse.coffee
export DOCSET_ENTRY=https://raw.github.com/for-GET/know-your-http-well/master/docset/feed.xml

.PHONY: all

all:
	@$(MAKE) -f .dash.mk/dash.mk $@
