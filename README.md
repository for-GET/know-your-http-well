# KNOW YOUR HTTP well

HTTP headers, media-types, methods, relations and status codes, all summarized and linking to their specification.

## Table of Contents

- [SPECS](specs.md)
- [HEADERS](headers.md)
- MEDIA-TYPES
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
;; M-x http-headers ;; content-type
;; M-x http-method ;; post
;; M-x http-relation ;; describedby
;; M-x http-status-code ;; 500
;; M-x http-status-code ;; not_found
```

### JavaScript

```javascript
var httpWell = require('know-your-http-well'),
    httpSC = httpWell.statusPhrasesToCodes,
    httpSP = httpWell.statusCodesToPhrases;

// on the server side
res.statusCode = httpSC.NOT_FOUND

// on the client side
if (res.statusCode !== httpSC.OK) {
    // Log "Request returned 404 Not Found"
    log('Request returned ' + res.statusCode + ' ' + httpSP[res.statusCode]);
}
```

## License

[Unlicense](http://unlicense.org/).
