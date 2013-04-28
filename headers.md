# KNOW YOUR HTTP well. HEADERS

## Representations

> For the purposes of HTTP, a "representation" is information that is intended to reflect a past, current, or desired state of a given resource, in a format that can be readily communicated via the protocol, and that consists of a set of representation metadata and a potentially unbounded stream of representation data.

Continue reading on [httpbisp2#3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-3)

### Metadata

> Representation header fields provide metadata about the representation. When a message includes a payload body, the representation header fields describe how to interpret the representation data enclosed in the payload body.

Continue reading on [httpbisp2#3.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-3.1)

header | description | spec
-----: | :---------- | :---
`Content-Encoding` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Content-Language` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Content-Location` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Content-Type` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

### Data

> The representation data associated with an HTTP message is either provided as the payload body of the message or referred to by the message semantics and the effective request URI.

Continue reading on [httpbisp2#3.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-3.2)

header | description | spec
-----: | :---------- | :---
`Content-Length` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Content-Range` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Transfer-Encoding` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

## Request

> A client sends request header fields to provide more information about the request context, make the request conditional based on the target resource state, suggest preferred formats for the response, supply authentication credentials, or modify the expected request processing.

Continue reading on [httpbisp2#5](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5)

### Controls

> Controls are request header fields that direct specific handling of the request.

Continue reading on [httpbisp2#5.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5.1)

header | description | spec
-----: | :---------- | :---
`Cache-Control` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Expect` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Host` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Max-Forwards` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Pragma` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Range` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`TE` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

### Conditionals

> The HTTP conditional request header fields [Part4] allow a client to place a precondition on the state of the target resource, so that the action corresponding to the method semantics will not be applied if the precondition evaluates to false.

Continue reading on [httpbisp2#5.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5.2)

header | description | spec
-----: | :---------- | :---
`If-Match` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`If-Modified-Since` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`If-None-Match` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`If-Range` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`If-Unmodified-Since` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

### Content Negotiation

> The preferences sent in these fields apply to any content in the response, including representations of the target resource, representations of error or processing status, and potentially even the miscellaneous text strings that might appear within the protocol.

Continue reading on [httpbisp2#5.3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5.3)

header | description | spec
-----: | :---------- | :---
`Accept` | "can be used to specify certain media types which are acceptable for the response." | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Accept-Charset` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Accept-Encoding` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Accept-Language` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

### Authentication Credentials

> Two header fields are used for carrying authentication credentials

Continue reading on [httpbisp2#5.4](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5.4)

header | description | spec
-----: | :---------- | :---
`Authorization` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Proxy-Authorization` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

### Request Context

> request header fields provide additional information about the request context, including information about the user, user agent, and resource behind the request.

Continue reading on [httpbisp2#5.5](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5.5)

header | description | spec
-----: | :---------- | :---
`From` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Referer` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`User-Agent` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

## Response

> The response header fields allow the server to pass additional information about the response beyond what is placed in the status-line.

Continue reading on [httpbisp2#7](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-7)

### Control Data

> Response header fields can supply control data that supplements the status code, directs caching, or instructs the client where to go next.

Continue reading on [httpbisp2#7.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-7.1)

header | description | spec
-----: | :---------- | :---
`Age` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Cache-Control` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Expires` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Date` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Location` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Retry-After` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Vary` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Warning` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

### Validator

> Validator header fields convey metadata about the selected representation

Continue reading on [httpbisp2#7.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-7.2)

header | description | spec
-----: | :---------- | :---
`ETag` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Last-Modified` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

### Authentication Challenges

Continue reading on [httpbisp2#7.3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-7.3)

header | description | spec
-----: | :---------- | :---
`WWW-Authenticate` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Proxy-Authenticate` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

### Response Context

Continue reading on [httpbisp2#7.4](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-7.4)

header | description | spec
-----: | :---------- | :---
`Accept-Ranges` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Allow` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Server` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

## Common (subjective)

header | description | spec
-----: | :---------- | :---
`Accept-Patch` | "" | [RFC5789](http://tools.ietf.org/html/rfc5789)
`Connection` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Content-Disposition` | "standard" | [RFC6266](http://tools.ietf.org/html/rfc6266)
`Content-MD5` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Cookie` | "standard" | [RFC6265](http://tools.ietf.org/html/rfc6265)
`Digest` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Forwarded` | "standard" | [draft-ietf-appsawg-http-forwarded](http://tools.ietf.org/html/draft-ietf-appsawg-http-forwarded)
`Keep-Alive` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Link` | "" | [RFC5988](http://tools.ietf.org/html/rfc5988)
`Origin` | "standard" | [RFC6454](http://tools.ietf.org/html/rfc6454)
`Prefer` | "standard" | [draft-snell-http-prefer](http://tools.ietf.org/html/draft-snell-http-prefer)
`Preference-Applied` | "standard" | [draft-snell-http-prefer](http://tools.ietf.org/html/draft-snell-http-prefer)
`Set-Cookie` | "standard" | [RFC6265](http://tools.ietf.org/html/rfc6265)
`Strict-Transport-Security` | "standard" | [RFC6797](http://tools.ietf.org/html/rfc6797)
`Variant-Vary` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Via` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

## Less Common (subjective)

header | description | spec
-----: | :---------- | :---
`A-IM` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Accept-Additions` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Accept-Features` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Alternates` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Apply-To-Redirect-Ref` | "" | [RFC4437](http://tools.ietf.org/html/rfc4437)
`Authentication-Info` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`C-Ext` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`C-Man` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`C-Opt` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`C-PEP` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`C-PEP-Info` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Content-Base` | "obsoleted" | [RFC2068](http://tools.ietf.org/html/rfc2068),<br>[RFC2616](http://tools.ietf.org/html/rfc2616)
`Content-ID` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Content-Script-Type` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Content-Style-Type` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Content-Version` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Cookie2` | "obsoleted" | [RFC2965](http://tools.ietf.org/html/rfc2965),<br>[RFC6265](http://tools.ietf.org/html/rfc6265)
`DASL` | "standard" | [RFC5323](http://tools.ietf.org/html/rfc5323)
`DAV` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`Default-Style` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Delta-Base` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Depth` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`Derived-From` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Destination` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`Differential-ID` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Ext` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`GetProfile` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`IM` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`If` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`If-Schedule-Tag-Match` | "standard" | [draft-desruisseaux-caldav-sched](http://tools.ietf.org/html/draft-desruisseaux-caldav-sched)
`Label` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Lock-Token` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`Man` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Meter` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`MIME-Version` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Negotiate` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Opt` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Ordering-Type` | "standard" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Overwrite` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`P3P` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`PEP` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`PICS-Label` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Pep-Info` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Position` | "standard" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`ProfileObject` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Protocol` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Protocol-Info` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Protocol-Query` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Protocol-Request` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Proxy-Authentication-Info` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Proxy-Features` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Proxy-Instruction` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Public` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Redirect-Ref` | "" | [RFC4437](http://tools.ietf.org/html/rfc4437)
`Safe` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Schedule-Reply` | "standard" | [draft-desruisseaux-caldav-sched](http://tools.ietf.org/html/draft-desruisseaux-caldav-sched)
`Schedule-Tag` | "standard" | [draft-desruisseaux-caldav-sched](http://tools.ietf.org/html/draft-desruisseaux-caldav-sched)
`Sec-WebSocket-Accept` | "standard" | [RFC6455](http://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Extensions` | "standard" | [RFC6455](http://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Key` | "standard" | [RFC6455](http://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Protocol` | "standard" | [RFC6455](http://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Version` | "standard" | [RFC6455](http://tools.ietf.org/html/rfc6455)
`Security-Scheme` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Set-Cookie2` | "obsoleted" | [RFC2965](http://tools.ietf.org/html/rfc2965),<br>[RFC6265](http://tools.ietf.org/html/rfc6265)
`SetProfile` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`SLUG` | "standard" | [RFC5023](http://tools.ietf.org/html/rfc5023)
`SoapAction` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Status-URI` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Surrogate-Capability` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Surrogate-Control` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`TCN` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Timeout` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`Trailer` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`URI` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Upgrade` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)
`Want-Digest` | "" | [RFC4229](http://tools.ietf.org/html/rfc4229)

A chunk of provisional headers can be found at [HTTP Headers Registry](http://www.iana.org/assignments/message-headers/message-headers.xml).

For a full up-to-date list, including non-HTTP headers, continue reading on [HTTP Headers Registry](http://www.iana.org/assignments/message-headers/message-headers.xml), [Wikipedia](http://en.wikipedia.org/wiki/List_of_HTTP_header_fields).

## Sources

* [draft-ietf-httpbis-p2-semantics Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#)
* [draft-ietf-httpbis-p4-conditional Hypertext Transfer Protocol (HTTP/1.1): Conditional Requests](http://tools.ietf.org/html/draft-ietf-httpbis-p4-conditional#)
* [RFC2616 Hypertext Transfer Protocol -- HTTP/1.1](http://tools.ietf.org/html/rfc2616#)
* Your truly
