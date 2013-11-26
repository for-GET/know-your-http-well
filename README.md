# KNOW YOUR HTTP * WELL

HTTP headers, media types, methods, relations and status codes, all summarized and linking to their specification.

This project is used by [HyperREST bin](https://github.com/andreineculau/hyperrest-bin) at [bin.hyperrest.com](http://bin.hyperrest.com) .


## Table of Contents

- [SPECS](specs.md)
- [HEADERS](headers.md)
- MEDIA TYPES
- [METHODS](methods.md)
- [RELATIONS](relations.md)
- [STATUS CODES](status-codes.md)


## How to convert to other formats

* [pandoc](http://johnmacfarlane.net/pandoc/)
* [Marked](http://markedapp.com/)
* ...


## Packages

### Emacs

```emacs
(require 'know-your-http-well)
;; M-x http-header ;; content-type
;; M-x http-method ;; post | POST
;; M-x http-relation ;; describedby
;; M-x http-status-code ;; 500
;; M-x http-status-code ;; not_found | NOT_FOUND
```

### JavaScript

```javascript
var httpWell = require('know-your-http-well'),
    statusWell = httpWell.statusPhrasesToCodes,
    phraseWell = httpWell.statusCodesToPhrases;

// on the server side
res.statusCode = statusWell.NOT_FOUND

// on the client side
if (res.statusCode !== statusWell.OK) {
    // Log "Request returned 404 Not Found"
    log('Request returned ' + res.statusCode + ' ' + phraseWell[res.statusCode]);
}
```

### JSON

Just take a look at [./json/*.json](json).

### [Dash](http://kapeli.com/dash) on Mac OSX and [Zeal](http://zealdocs.org/) on Windows/Linux

**If you want know-your-http-well to be included in the common list of docsets, just [tweet to @kapeli](https://twitter.com/intent/tweet?text=@kapeli%20Please%20add%20know-your-http-well%20as%20a%20common%20docset.%20Thanks!) for a +1.**

Meanwhile, `Preferences -> Docsets -> + ` and using <https://raw.github.com/for-GET/know-your-http-well/master/docset/know-your-http-well.xml> should do it.


## License

[Unlicense](LICENSE).
