# KNOW YOUR HTTP headers WELL

## Representations

> For the purposes of HTTP, a "representation" is information that is intended to reflect a past, current, or desired state of a given resource, in a format that can be readily communicated via the protocol, and that consists of a set of representation metadata and a potentially unbounded stream of representation data.

Continue reading on [httpbisp2#3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-3)

### Metadata

> Representation header fields provide metadata about the representation. When a message includes a payload body, the representation header fields describe how to interpret the representation data enclosed in the payload body.

Continue reading on [httpbisp2#3.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-3.1)

header | description | spec
-----: | :---------- | :---
`Content-Encoding` | "indicates what content codings have been applied to the representation, beyond those inherent in the media type, and thus what decoding mechanisms have to be applied in order to obtain data in the media type referenced by the Content-Type header field." | [httpbisp2#3.1.2.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-3.1.2.2),<br>[rfc2616#14.11](http://tools.ietf.org/html/rfc2616#section-14.11)
`Content-Language` | "describes the natural language(s) of the intended audience for the representation." | [httpbisp2#3.1.3.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-3.1.3.2),<br>[rfc2616#14.12](http://tools.ietf.org/html/rfc2616#section-14.12)
`Content-Location` | "references a URI that can be used as an identifier for a specific resource corresponding to the representation in this message's payload." | [httpbisp2#3.1.4.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-3.1.4.2),<br>[rfc2616#14.14](http://tools.ietf.org/html/rfc2616#section-14.14)
`Content-Type` | "indicates the media type of the associated representation: either the representation enclosed in the message payload or the selected representation, as determined by the message semantics." | [httpbisp2#3.1.1.5](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-3.1.1.5),<br>[rfc2616#14.17](http://tools.ietf.org/html/rfc2616#section-14.17)

### Data

> The representation data associated with an HTTP message is either provided as the payload body of the message or referred to by the message semantics and the effective request URI.

Continue reading on [httpbisp2#3.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-3.2)

header | description | spec
-----: | :---------- | :---
`Content-Length` | "can provide the anticipated size, as a decimal number of octets, for a potential payload body." | [httpbisp1#3.3.2](http://tools.ietf.org/html/draft-ietf-httpbis-p1-messaging#section-3.3.2),<br>[rfc2616#14.13](http://tools.ietf.org/html/rfc2616#section-14.13)
`Content-Range` | "is sent in a single part 206 (Partial Content) response to indicate the partial range of the selected representation enclosed as the message payload, sent in each part of a multipart 206 response to indicate the range enclosed within each body part, and sent in 416 (Range Not Satisfiable) responses to provide information about the selected representation." | [httpbisp5#4.2](http://tools.ietf.org/html/draft-ietf-httpbis-p5-range#section-4.2),<br>[rfc2616#14.16](http://tools.ietf.org/html/rfc2616#section-14.16)
`Transfer-Encoding` | "lists the transfer coding names corresponding to the sequence of transfer codings that have been (or will be) applied to the payload body in order to form the message body." | [httpbisp1#3.3.1](http://tools.ietf.org/html/draft-ietf-httpbis-p1-messaging#section-3.3.1),<br>[rfc2616#14.41](http://tools.ietf.org/html/rfc2616#section-14.41)

## Request

> A client sends request header fields to provide more information about the request context, make the request conditional based on the target resource state, suggest preferred formats for the response, supply authentication credentials, or modify the expected request processing.

Continue reading on [httpbisp2#5](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5)

### Controls

> Controls are request header fields that direct specific handling of the request.

Continue reading on [httpbisp2#5.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5.1)

header | description | spec
-----: | :---------- | :---
`Cache-Control` | "is used to specify directives for caches along the request/response chain." | [httpbisp6#7.2](http://tools.ietf.org/html/draft-ietf-httpbis-p6-cache#section-7.2),<br>[rfc2616#14.9](http://tools.ietf.org/html/rfc2616#section-14.9)
`Expect` | "is used to indicate that particular server behaviors are required by the client." | [httpbisp2#5.1.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-5.1.1),<br>[rfc2616#14.20](http://tools.ietf.org/html/rfc2616#section-14.20)
`Host` | "provides the host and port information from the target URI, enabling the origin server to distinguish among resources while servicing requests for multiple host names on a single IP address." | [httpbisp1#5.4](http://tools.ietf.org/html/draft-ietf-httpbis-p1-messaging#section-5.4),<br>[rfc2616#14.23](http://tools.ietf.org/html/rfc2616#section-14.23)
`Max-Forwards` | "provides a mechanism with the TRACE and OPTIONS methods to limit the number of times that the request is forwarded by proxies." | [httpbisp2#5.1.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-5.1.2),<br>[rfc2616#14.31](http://tools.ietf.org/html/rfc2616#section-14.31)
`Pragma` | "allows backwards compatibility with HTTP/1.0 caches, so that clients can specify a "no-cache" request that they will understand (as Cache-Control was not defined until HTTP/1.1)." | [httpbisp6#7.4](http://tools.ietf.org/html/draft-ietf-httpbis-p6-cache#section-7.4),<br>[rfc2616#14.32](http://tools.ietf.org/html/rfc2616#section-14.32)
`Range` | "modifies the method semantics to request transfer of only one or more subranges of the selected representation data, rather than the entire selected representation data." | [httpbisp5#3.1](http://tools.ietf.org/html/draft-ietf-httpbis-p5-range#section-3.1),<br>[rfc2616#14.35](http://tools.ietf.org/html/rfc2616#section-14.35)
`TE` | "indicates what transfer codings, besides chunked, the client is willing to accept in response, and whether or not the client is willing to accept trailer fields in a chunked transfer coding." | [httpbisp1#4.3](http://tools.ietf.org/html/draft-ietf-httpbis-p1-messaging#section-4.3),<br>[rfc2616#14.39](http://tools.ietf.org/html/rfc2616#section-14.39)

### Conditionals

> The HTTP conditional request header fields [Part4] allow a client to place a precondition on the state of the target resource, so that the action corresponding to the method semantics will not be applied if the precondition evaluates to false.

Continue reading on [httpbisp2#5.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5.2)

header | description | spec
-----: | :---------- | :---
`If-Match` | "can be used to make a request method conditional on the current existence or value of an entity-tag for one or more representations of the target resource." | [httpbisp4#3.1](http://tools.ietf.org/html/draft-ietf-httpbis-p4-conditional#section-3.1),<br>[rfc2616#14.24](http://tools.ietf.org/html/rfc2616#section-14.24)
`If-Modified-Since` | "can be used with GET or HEAD to make the method conditional by modification date: if the selected representation has not been modified since the time specified in this field, then do not perform the request method; instead, respond as detailed below." | [httpbisp4#3.3](http://tools.ietf.org/html/draft-ietf-httpbis-p4-conditional#section-3.3),<br>[rfc2616#14.25](http://tools.ietf.org/html/rfc2616#section-14.25)
`If-None-Match` | "can be used to make a request method conditional on not matching any of the current entity-tag values for representations of the target resource." | [httpbisp4#3.2](http://tools.ietf.org/html/draft-ietf-httpbis-p4-conditional#section-3.2),<br>[rfc2616#14.26](http://tools.ietf.org/html/rfc2616#section-14.26)
`If-Range` | "Informally, its meaning is: if the representation is unchanged, send me the part(s) that I am requesting in Range; otherwise, send me the entire representation." | [httpbisp5#3.2](http://tools.ietf.org/html/draft-ietf-httpbis-p5-range#section-3.2),<br>[rfc2616#14.27](http://tools.ietf.org/html/rfc2616#section-14.27)
`If-Unmodified-Since` | "can be used to make a request method conditional by modification date: if the selected representation has been modified since the time specified in this field, then the server MUST NOT perform the requested operation and MUST instead respond with the 412 (Precondition Failed) status code." | [httpbisp4#3.4](http://tools.ietf.org/html/draft-ietf-httpbis-p4-conditional#section-3.4),<br>[rfc2616#14.28](http://tools.ietf.org/html/rfc2616#section-14.28)

### Content Negotiation

> The preferences sent in these fields apply to any content in the response, including representations of the target resource, representations of error or processing status, and potentially even the miscellaneous text strings that might appear within the protocol.

Continue reading on [httpbisp2#5.3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5.3)

header | description | spec
-----: | :---------- | :---
`Accept` | "can be used to specify certain media types which are acceptable for the response." | [httpbisp2#5.3.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-5.3.2),<br>[rfc2616#14.1](http://tools.ietf.org/html/rfc2616#section-14.1)
`Accept-Charset` | "can be sent by a user agent to indicate what charsets are acceptable in textual response content." | httpbispX#5.3.3 rfc2616#14.2
`Accept-Encoding` | "can be used by user agents to indicate what response content-codings are acceptable in the response." | [httpbisp2#5.3.4](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-5.3.4),<br>[rfc2616#14.3](http://tools.ietf.org/html/rfc2616#section-14.3)
`Accept-Language` | "can be used by user agents to indicate the set of natural languages that are preferred in the response." | [httpbisp2#5.3.5](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-5.3.5),<br>[rfc2616#14.4](http://tools.ietf.org/html/rfc2616#section-14.4)

### Authentication Credentials

> Two header fields are used for carrying authentication credentials

Continue reading on [httpbisp2#5.4](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5.4)

header | description | spec
-----: | :---------- | :---
`Authorization` | "allows a user agent to authenticate itself with a server -- usually, but not necessarily, after receiving a 401 (Unauthorized) response." | [httpbisp7#4.1](http://tools.ietf.org/html/draft-ietf-httpbis-p7-auth#section-4.1),<br>[rfc2616#14.8](http://tools.ietf.org/html/rfc2616#section-14.8)
`Proxy-Authorization` | "allows the client to identify itself (or its user) to a proxy that requires authentication." | [httpbisp7#4.3](http://tools.ietf.org/html/draft-ietf-httpbis-p7-auth#section-4.3),<br>[rfc2616#14.34](http://tools.ietf.org/html/rfc2616#section-14.34)

### Request Context

> request header fields provide additional information about the request context, including information about the user, user agent, and resource behind the request.

Continue reading on [httpbisp2#5.5](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-5.5)

header | description | spec
-----: | :---------- | :---
`From` | "contains an Internet email address for a human user who controls the requesting user agent." | [httpbisp2#5.5.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-5.5.1),<br>[rfc2616#14.22](http://tools.ietf.org/html/rfc2616#section-14.22)
`Referer` | "allows the user agent to specify a URI reference for the resource from which the target URI was obtained (i.e., the "referrer", though the field name is misspelled)." | [httpbisp2#5.5.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-5.5.2),<br>[rfc2616#14.36](http://tools.ietf.org/html/rfc2616#section-14.36)
`User-Agent` | "contains information about the user agent originating the request, which is often used by servers to help identify the scope of reported interoperability problems, to work around or tailor responses to avoid particular user agent limitations, and for analytics regarding browser or operating system use." | [httpbisp2#5.5.3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-5.5.3),<br>[rfc2616#14.43](http://tools.ietf.org/html/rfc2616#section-14.43)

## Response

> The response header fields allow the server to pass additional information about the response beyond what is placed in the status-line.

Continue reading on [httpbisp2#7](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-7)

### Control Data

> Response header fields can supply control data that supplements the status code, directs caching, or instructs the client where to go next.

Continue reading on [httpbisp2#7.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-7.1)

header | description | spec
-----: | :---------- | :---
`Age` | "conveys the sender's estimate of the amount of time since the response was generated or successfully validated at the origin server." | [httpbisp6#7.1](http://tools.ietf.org/html/draft-ietf-httpbis-p6-cache#section-7.1),<br>[rfc2616#14.6](http://tools.ietf.org/html/rfc2616#section-14.6)
`Cache-Control` | "is used to specify directives for caches along the request/response chain." | [httpbisp6#7.2](http://tools.ietf.org/html/draft-ietf-httpbis-p6-cache#section-7.2),<br>[rfc2616#14.9](http://tools.ietf.org/html/rfc2616#section-14.9)
`Expires` | "gives the date/time after which the response is considered stale." | [httpbisp6#7.3](http://tools.ietf.org/html/draft-ietf-httpbis-p6-cache#section-7.3),<br>[rfc2616#14.21](http://tools.ietf.org/html/rfc2616#section-14.21)
`Date` | "represents the date and time at which the message was originated" | [httpbisp2#7.1.1.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-7.1.1.2),<br>[rfc2616#14.18](http://tools.ietf.org/html/rfc2616#section-14.18)
`Location` | "is used in some responses to refer to a specific resource in relation to the response." | [httpbisp2#7.1.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-7.1.2),<br>[rfc2616#14.30](http://tools.ietf.org/html/rfc2616#section-14.30)
`Retry-After` | "indicates how long the user agent ought to wait before making a follow-up request." | [httpbisp2#7.1.3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-7.1.3),<br>[rfc2616#14.37](http://tools.ietf.org/html/rfc2616#section-14.37)
`Vary` | "describes what parts of a request message, aside from the method and request target, might influence the origin server's process for selecting and representing the response." | [httpbisp2#7.1.4](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-7.1.4),<br>[rfc2616#14.44](http://tools.ietf.org/html/rfc2616#section-14.44)
`Warning` | "is used to carry additional information about the status or transformation of a message that might not be reflected in the message." | [httpbisp6#7.6](http://tools.ietf.org/html/draft-ietf-httpbis-p6-cache#section-7.6),<br>[rfc2616#14.46](http://tools.ietf.org/html/rfc2616#section-14.46)

### Validator

> Validator header fields convey metadata about the selected representation

Continue reading on [httpbisp2#7.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-7.2)

header | description | spec
-----: | :---------- | :---
`ETag` | "provides the current entity-tag for the selected representation, as determined at the conclusion of handling the request." | [httpbisp4#2.3](http://tools.ietf.org/html/draft-ietf-httpbis-p4-conditional#section-2.3),<br>[rfc2616#14.19](http://tools.ietf.org/html/rfc2616#section-14.19)
`Last-Modified` | "provides a timestamp indicating the date and time at which the origin server believes the selected representation was last modified, as determined at the conclusion of handling the request." | [httpbisp4#2.2](http://tools.ietf.org/html/draft-ietf-httpbis-p4-conditional#section-2.2),<br>[rfc2616#14.29](http://tools.ietf.org/html/rfc2616#section-14.29)

### Authentication Challenges

Continue reading on [httpbisp2#7.3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-7.3)

header | description | spec
-----: | :---------- | :---
`WWW-Authenticate` | "consists of at least one challenge that indicates the authentication scheme(s) and parameters applicable to the effective request URI." | [httpbisp7#4.4](http://tools.ietf.org/html/draft-ietf-httpbis-p7-auth#section-4.4),<br>[rfc2616#14.47](http://tools.ietf.org/html/rfc2616#section-14.47)
`Proxy-Authenticate` | "consists of at least one challenge that indicates the authentication scheme(s) and parameters applicable to the proxy for this effective request URI." | [httpbisp7#4.2](http://tools.ietf.org/html/draft-ietf-httpbis-p7-auth#section-4.2),<br>[rfc2616#14.33](http://tools.ietf.org/html/rfc2616#section-14.33)

### Response Context

Continue reading on [httpbisp2#7.4](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics-22#section-7.4)

header | description | spec
-----: | :---------- | :---
`Accept-Ranges` | "allows a server to indicate that it supports range requests for the target resource." | [httpbisp5#2.3](http://tools.ietf.org/html/draft-ietf-httpbis-p5-range#section-2.3),<br>[rfc2616#14.5](http://tools.ietf.org/html/rfc2616#section-14.5)
`Allow` | "lists the set of methods advertised as supported by the target resource." | [httpbisp2#7.4.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-7.4.1),<br>[rfc2616#14.7](http://tools.ietf.org/html/rfc2616#section-14.7)
`Server` | "contains information about the software used by the origin server to handle the request, which is often used by clients to help identify the scope of reported interoperability problems, to work around or tailor requests to avoid particular server limitations, and for analytics regarding server or operating system use." | [httpbisp2#7.4.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-7.4.2),<br>[rfc2616#14.38](http://tools.ietf.org/html/rfc2616#section-14.38)

## Common (subjective)

header | description | spec
-----: | :---------- | :---
`Accept-Patch` | "used to specify the patch document formats accepted by the server." | [RFC5789#3.1](http://tools.ietf.org/html/rfc5789#section-3.1)
`Accept-Post` | "indicates server support for specific media types for entity bodies in HTTP POST requests." | [draft-wilde-accept-post](http://tools.ietf.org/html/draft-wilde-accept-post)
`Connection` | "" | ?
`Content-Disposition` | "standard" | [RFC6266](http://tools.ietf.org/html/rfc6266)
`Content-MD5` | "" | ?
`Cookie` | "standard" | [RFC6265](http://tools.ietf.org/html/rfc6265)
`Digest` | "" | ?
`Forwarded` | "standard" | [draft-ietf-appsawg-http-forwarded](http://tools.ietf.org/html/draft-ietf-appsawg-http-forwarded)
`Keep-Alive` | "" | ?
`Link` | "provides a means for serialising one or more links in HTTP headers." | [RFC5988#5](http://tools.ietf.org/html/rfc5988#section-5)
`Origin` | "standard" | [RFC6454](http://tools.ietf.org/html/rfc6454)
`Prefer` | "is used to indicate that particular server behaviors are preferred by the client, but not required for successful completion of the request." | [draft-snell-http-prefer#2](http://tools.ietf.org/html/draft-snell-http-prefer#section-2)
`Preference-Applied` | "MAY be included within a response message as an indication as to which Prefer tokens were honored by the server and applied to the processing of a request." | [draft-snell-http-prefer#3](http://tools.ietf.org/html/draft-snell-http-prefer#section-3)
`Set-Cookie` | "standard" | [RFC6265](http://tools.ietf.org/html/rfc6265)
`Strict-Transport-Security` | "standard" | [RFC6797](http://tools.ietf.org/html/rfc6797)
`Variant-Vary` | "" | ?
`Via` | "" |45

## Less Common (subjective)

header | description | spec
-----: | :---------- | :---
`A-IM` | "" | ?
`Accept-Additions` | "" | ?
`Accept-Features` | "" | ?
`Alternates` | "" | ?
`Apply-To-Redirect-Ref` | "" | [RFC4437](http://tools.ietf.org/html/rfc4437)
`Authentication-Info` | "" | ?
`C-Ext` | "" | ?
`C-Man` | "" | ?
`C-Opt` | "" | ?
`C-PEP` | "" | ?
`C-PEP-Info` | "" | ?
`Content-Base` | "obsoleted" | [RFC2068](http://tools.ietf.org/html/rfc2068),<br>[RFC2616](http://tools.ietf.org/html/rfc2616)
`Content-ID` | "" | ?
`Content-Script-Type` | "" | ?
`Content-Style-Type` | "" | ?
`Content-Version` | "" | ?
`Cookie2` | "obsoleted" | [RFC2965](http://tools.ietf.org/html/rfc2965),<br>[RFC6265](http://tools.ietf.org/html/rfc6265)
`DASL` | "standard" | [RFC5323](http://tools.ietf.org/html/rfc5323)
`DAV` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`Default-Style` | "" | ?
`Delta-Base` | "" | ?
`Depth` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`Derived-From` | "" | ?
`Destination` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`Differential-ID` | "" | ?
`Ext` | "" | ?
`GetProfile` | "" | ?
`IM` | "" | ?
`If` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`If-Schedule-Tag-Match` | "standard" | [draft-desruisseaux-caldav-sched](http://tools.ietf.org/html/draft-desruisseaux-caldav-sched)
`Label` | "" | ?
`Lock-Token` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`Man` | "" | ?
`Meter` | "" | ?
`MIME-Version` | "" | ?
`Negotiate` | "" | ?
`Opt` | "" | ?
`Ordering-Type` | "standard" | ?
`Overwrite` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`P3P` | "" | ?
`PEP` | "" | ?
`PICS-Label` | "" | ?
`Pep-Info` | "" | ?
`Position` | "standard" | ?
`ProfileObject` | "" | ?
`Protocol` | "" | ?
`Protocol-Info` | "" | ?
`Protocol-Query` | "" | ?
`Protocol-Request` | "" | ?
`Proxy-Authentication-Info` | "" | ?
`Proxy-Features` | "" | ?
`Proxy-Instruction` | "" | ?
`Public` | "" | ?
`Redirect-Ref` | "" | [RFC4437](http://tools.ietf.org/html/rfc4437)
`Safe` | "" | ?
`Schedule-Reply` | "standard" | [draft-desruisseaux-caldav-sched](http://tools.ietf.org/html/draft-desruisseaux-caldav-sched)
`Schedule-Tag` | "standard" | [draft-desruisseaux-caldav-sched](http://tools.ietf.org/html/draft-desruisseaux-caldav-sched)
`Sec-WebSocket-Accept` | "standard" | [RFC6455](http://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Extensions` | "standard" | [RFC6455](http://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Key` | "standard" | [RFC6455](http://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Protocol` | "standard" | [RFC6455](http://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Version` | "standard" | [RFC6455](http://tools.ietf.org/html/rfc6455)
`Security-Scheme` | "" | ?
`Set-Cookie2` | "obsoleted" | [RFC2965](http://tools.ietf.org/html/rfc2965),<br>[RFC6265](http://tools.ietf.org/html/rfc6265)
`SetProfile` | "" | ?
`SLUG` | "standard" | [RFC5023](http://tools.ietf.org/html/rfc5023)
`SoapAction` | "" | ?
`Status-URI` | "" | ?
`Surrogate-Capability` | "" | ?
`Surrogate-Control` | "" | ?
`TCN` | "" | ?
`Timeout` | "standard" | [RFC4918](http://tools.ietf.org/html/rfc4918)
`Trailer` | "" |43
`URI` | "" | ?
`Upgrade` | "" |42
`Want-Digest` | "" | ?

A chunk of provisional headers can be found at [HTTP Headers Registry](http://www.iana.org/assignments/message-headers/message-headers.xml).

For a full up-to-date list, including non-HTTP headers, continue reading on [HTTP Headers Registry](http://www.iana.org/assignments/message-headers/message-headers.xml), [Wikipedia](http://en.wikipedia.org/wiki/List_of_HTTP_header_fields).

## Sources

* [draft-ietf-httpbis-p1-messaging Hypertext Transfer Protocol (HTTP/1.1): Message Syntax and Routing](http://tools.ietf.org/html/draft-ietf-httpbis-p1-messaging#)
* [draft-ietf-httpbis-p2-semantics Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#)
* [draft-ietf-httpbis-p4-conditional Hypertext Transfer Protocol (HTTP/1.1): Conditional Requests](http://tools.ietf.org/html/draft-ietf-httpbis-p4-conditional#)
* [draft-ietf-httpbis-p5-range Hypertext Transfer Protocol (HTTP/1.1): Range Requests](http://tools.ietf.org/html/draft-ietf-httpbis-p5-range#)
* [draft-ietf-httpbis-p6-cache HTTP/1.1, part 6: Caching](http://tools.ietf.org/html/draft-ietf-httpbis-p6-cache#)
* [draft-ietf-httpbis-p7-auth Hypertext Transfer Protocol (HTTP/1.1): Authentication](http://tools.ietf.org/html/draft-ietf-httpbis-p7-auth#)
* [RFC2616 Hypertext Transfer Protocol -- HTTP/1.1](http://tools.ietf.org/html/rfc2616#)
* Your truly
