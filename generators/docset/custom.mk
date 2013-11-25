DOCSET_NAME := "know-your-http-well"
DOCSET_PARSER := "parse.coffee"
DOCSET_ENTRY := "https://raw.github.com/for-GET/know-your-http-well/master/docset/feed.xml"

.PHONY: all

all:
	@$(MAKE) -f .dash.mk/dash.mk $@
