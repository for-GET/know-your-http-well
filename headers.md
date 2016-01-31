# KNOW YOUR HTTP headers WELL

## Representations

> For the purposes of HTTP, a "representation" is information that is intended to reflect a past, current, or desired state of a given resource, in a format that can be readily communicated via the protocol, and that consists of a set of representation metadata and a potentially unbounded stream of representation data.

Continue reading on [RFC7231#3](https://tools.ietf.org/html/rfc7231#section-3)

### Metadata

> Representation header fields provide metadata about the representation. When a message includes a payload body, the representation header fields describe how to interpret the representation data enclosed in the payload body.

Continue reading on [RFC7231#3.1](https://tools.ietf.org/html/rfc7231#section-3.1)

header | description | spec
-----: | :---------- | :---
`Content-Encoding` | "indicates what content codings have been applied to the representation, beyond those inherent in the media type, and thus what decoding mechanisms have to be applied in order to obtain data in the media type referenced by the Content-Type header field." | [RFC7231#3.1.2.2](https://tools.ietf.org/html/rfc7231#section-3.1.2.2),<br>[RFC2616#14.11](https://tools.ietf.org/html/rfc2616#section-14.11)
`Content-Language` | "describes the natural language(s) of the intended audience for the representation." | [RFC7231#3.1.3.2](https://tools.ietf.org/html/rfc7231#section-3.1.3.2),<br>[RFC2616#14.12](https://tools.ietf.org/html/rfc2616#section-14.12)
`Content-Location` | "references a URI that can be used as an identifier for a specific resource corresponding to the representation in this message's payload." | [RFC7231#3.1.4.2](https://tools.ietf.org/html/rfc7231#section-3.1.4.2),<br>[RFC2616#14.14](https://tools.ietf.org/html/rfc2616#section-14.14)
`Content-Type` | "indicates the media type of the associated representation: either the representation enclosed in the message payload or the selected representation, as determined by the message semantics." | [RFC7231#3.1.1.5](https://tools.ietf.org/html/rfc7231#section-3.1.1.5),<br>[RFC2616#14.17](https://tools.ietf.org/html/rfc2616#section-14.17)

### Data

> The representation data associated with an HTTP message is either provided as the payload body of the message or referred to by the message semantics and the effective request URI.

Continue reading on [RFC7231#3.2](https://tools.ietf.org/html/rfc7231#section-3.2)

header | description | spec
-----: | :---------- | :---
`Content-Length` | "can provide the anticipated size, as a decimal number of octets, for a potential payload body." | [RFC7230#3.3.2](https://tools.ietf.org/html/rfc7230#section-3.3.2),<br>[RFC2616#14.13](https://tools.ietf.org/html/rfc2616#section-14.13)
`Content-Range` | "is sent in a single part 206 (Partial Content) response to indicate the partial range of the selected representation enclosed as the message payload, sent in each part of a multipart 206 response to indicate the range enclosed within each body part, and sent in 416 (Range Not Satisfiable) responses to provide information about the selected representation." | [RFC7233#4.2](https://tools.ietf.org/html/rfc7233#section-4.2),<br>[RFC2616#14.16](https://tools.ietf.org/html/rfc2616#section-14.16)
`Transfer-Encoding` | "lists the transfer coding names corresponding to the sequence of transfer codings that have been (or will be) applied to the payload body in order to form the message body." | [RFC7230#3.3.1](https://tools.ietf.org/html/rfc7230#section-3.3.1),<br>[RFC2616#14.41](https://tools.ietf.org/html/rfc2616#section-14.41)

## Request

> A client sends request header fields to provide more information about the request context, make the request conditional based on the target resource state, suggest preferred formats for the response, supply authentication credentials, or modify the expected request processing.

Continue reading on [RFC7231#5](https://tools.ietf.org/html/rfc7231#section-5)

### Controls

> Controls are request header fields that direct specific handling of the request.

Continue reading on [RFC7231#5.1](https://tools.ietf.org/html/rfc7231#section-5.1)

header | description | spec
-----: | :---------- | :---
`Cache-Control` | "is used to specify directives for caches along the request/response chain." | [RFC7234#7.2](https://tools.ietf.org/html/rfc7234#section-7.2),<br>[RFC2616#14.9](https://tools.ietf.org/html/rfc2616#section-14.9)
`Expect` | "is used to indicate that particular server behaviors are required by the client." | [RFC7231#5.1.1](https://tools.ietf.org/html/rfc7231#section-5.1.1),<br>[RFC2616#14.20](https://tools.ietf.org/html/rfc2616#section-14.20)
`Host` | "provides the host and port information from the target URI, enabling the origin server to distinguish among resources while servicing requests for multiple host names on a single IP address." | [RFC7230#5.4](https://tools.ietf.org/html/rfc7230#section-5.4),<br>[RFC2616#14.23](https://tools.ietf.org/html/rfc2616#section-14.23)
`HTTP2-Settings` | "A request that upgrades from HTTP/1.1 to HTTP/2 MUST include exactly one HTTP2-Settings header field. The HTTP2-Settings header field is a connection-specific header field that includes parameters that govern the HTTP/2 connection, provided in anticipation of the server accepting the request to upgrade." | [RFC7540#3.2.1](https://tools.ietf.org/html/rfc7540#section-3.2.1)
`Max-Forwards` | "provides a mechanism with the TRACE and OPTIONS methods to limit the number of times that the request is forwarded by proxies." | [RFC7231#5.1.2](https://tools.ietf.org/html/rfc7231#section-5.1.2),<br>[RFC2616#14.31](https://tools.ietf.org/html/rfc2616#section-14.31)
`Pragma` | "allows backwards compatibility with HTTP/1.0 caches, so that clients can specify a "no-cache" request that they will understand (as Cache-Control was not defined until HTTP/1.1)." | [RFC7234#7.4](https://tools.ietf.org/html/rfc7234#section-7.4),<br>[RFC2616#14.32](https://tools.ietf.org/html/rfc2616#section-14.32)
`Range` | "modifies the method semantics to request transfer of only one or more subranges of the selected representation data, rather than the entire selected representation data." | [RFC7233#3.1](https://tools.ietf.org/html/rfc7233#section-3.1),<br>[RFC2616#14.35](https://tools.ietf.org/html/rfc2616#section-14.35)
`TE` | "indicates what transfer codings, besides chunked, the client is willing to accept in response, and whether or not the client is willing to accept trailer fields in a chunked transfer coding." | [RFC7230#4.3](https://tools.ietf.org/html/rfc7230#section-4.3),<br>[RFC2616#14.39](https://tools.ietf.org/html/rfc2616#section-14.39)

### Conditionals

> The HTTP conditional request header fields [Part4] allow a client to place a precondition on the state of the target resource, so that the action corresponding to the method semantics will not be applied if the precondition evaluates to false.

Continue reading on [RFC7231#5.2](https://tools.ietf.org/html/rfc7231#section-5.2)

header | description | spec
-----: | :---------- | :---
`If-Match` | "can be used to make a request method conditional on the current existence or value of an entity-tag for one or more representations of the target resource." | [RFC7232#3.1](https://tools.ietf.org/html/rfc7232#section-3.1),<br>[RFC2616#14.24](https://tools.ietf.org/html/rfc2616#section-14.24)
`If-Modified-Since` | "can be used with GET or HEAD to make the method conditional by modification date: if the selected representation has not been modified since the time specified in this field, then do not perform the request method; instead, respond as detailed below." | [RFC7232#3.3](https://tools.ietf.org/html/rfc7232#section-3.3),<br>[RFC2616#14.25](https://tools.ietf.org/html/rfc2616#section-14.25)
`If-None-Match` | "can be used to make a request method conditional on not matching any of the current entity-tag values for representations of the target resource." | [RFC7232#3.2](https://tools.ietf.org/html/rfc7232#section-3.2),<br>[RFC2616#14.26](https://tools.ietf.org/html/rfc2616#section-14.26)
`If-Range` | "Informally, its meaning is: if the representation is unchanged, send me the part(s) that I am requesting in Range; otherwise, send me the entire representation." | [RFC7233#3.2](https://tools.ietf.org/html/rfc7233#section-3.2),<br>[RFC2616#14.27](https://tools.ietf.org/html/rfc2616#section-14.27)
`If-Unmodified-Since` | "can be used to make a request method conditional by modification date: if the selected representation has been modified since the time specified in this field, then the server MUST NOT perform the requested operation and MUST instead respond with the 412 (Precondition Failed) status code." | [RFC7232#3.4](https://tools.ietf.org/html/rfc7232#section-3.4),<br>[RFC2616#14.28](https://tools.ietf.org/html/rfc2616#section-14.28)

### Content Negotiation

> The preferences sent in these fields apply to any content in the response, including representations of the target resource, representations of error or processing status, and potentially even the miscellaneous text strings that might appear within the protocol.

Continue reading on [RFC7231#5.3](https://tools.ietf.org/html/rfc7231#section-5.3)

header | description | spec
-----: | :---------- | :---
`Accept` | "can be used to specify certain media types which are acceptable for the response." | [RFC7231#5.3.2](https://tools.ietf.org/html/rfc7231#section-5.3.2),<br>[RFC2616#14.1](https://tools.ietf.org/html/rfc2616#section-14.1)
`Accept-Charset` | "can be sent by a user agent to indicate what charsets are acceptable in textual response content." | [RFC7231#5.3.3](https://tools.ietf.org/html/rfc7231#section-5.3.3),<br>[RFC2616#14.2](https://tools.ietf.org/html/rfc2616#section-14.2)
`Accept-Encoding` | "can be used by user agents to indicate what response content-codings are acceptable in the response." | [RFC7231#5.3.4](https://tools.ietf.org/html/rfc7231#section-5.3.4),<br>[RFC2616#14.3](https://tools.ietf.org/html/rfc2616#section-14.3)
`Accept-Language` | "can be used by user agents to indicate the set of natural languages that are preferred in the response." | [RFC7231#5.3.5](https://tools.ietf.org/html/rfc7231#section-5.3.5),<br>[RFC2616#14.4](https://tools.ietf.org/html/rfc2616#section-14.4)

### Authentication Credentials

> Two header fields are used for carrying authentication credentials

Continue reading on [RFC7231#5.4](https://tools.ietf.org/html/rfc7231#section-5.4)

header | description | spec
-----: | :---------- | :---
`Authorization` | "allows a user agent to authenticate itself with a server -- usually, but not necessarily, after receiving a 401 (Unauthorized) response." | [RFC7235#4.1](https://tools.ietf.org/html/rfc7235#section-4.1),<br>[RFC7616#3.4](https://tools.ietf.org/html/rfc7616#section-3.4)
`Proxy-Authorization` | "allows the client to identify itself (or its user) to a proxy that requires authentication." | [RFC7235#4.3](https://tools.ietf.org/html/rfc7235#section-4.3),<br>[RFC2616#14.34](https://tools.ietf.org/html/rfc2616#section-14.34)

### Request Context

> request header fields provide additional information about the request context, including information about the user, user agent, and resource behind the request.

Continue reading on [RFC7231#5.5](https://tools.ietf.org/html/rfc7231#section-5.5)

header | description | spec
-----: | :---------- | :---
`DNT` | "defined as the means for expressing a user's tracking preference via HTTP." | [Tracking Preference Expression (DNT)](https://www.w3.org/TR/tracking-dnt/#dnt-header-field)
`From` | "contains an Internet email address for a human user who controls the requesting user agent." | [RFC7231#5.5.1](https://tools.ietf.org/html/rfc7231#section-5.5.1),<br>[RFC2616#14.22](https://tools.ietf.org/html/rfc2616#section-14.22)
`Referer` | "allows the user agent to specify a URI reference for the resource from which the target URI was obtained (i.e., the "referrer", though the field name is misspelled)." | [RFC7231#5.5.2](https://tools.ietf.org/html/rfc7231#section-5.5.2),<br>[RFC2616#14.36](https://tools.ietf.org/html/rfc2616#section-14.36)
`User-Agent` | "contains information about the user agent originating the request, which is often used by servers to help identify the scope of reported interoperability problems, to work around or tailor responses to avoid particular user agent limitations, and for analytics regarding browser or operating system use." | [RFC7231#5.5.3](https://tools.ietf.org/html/rfc7231#section-5.5.3),<br>[RFC2616#14.43](https://tools.ietf.org/html/rfc2616#section-14.43)

## Response

> The response header fields allow the server to pass additional information about the response beyond what is placed in the status-line.

Continue reading on [RFC7231#7](https://tools.ietf.org/html/rfc7231#section-7)

### Control Data

> Response header fields can supply control data that supplements the status code, directs caching, or instructs the client where to go next.

* [Request Cache-Control Directives](https://tools.ietf.org/html/rfc7234#section-5.2.1)
* [Response Cache-Control Directives](https://tools.ietf.org/html/rfc7234#section-5.2.2)
* Cache-Control Extensions
  * [stale-while-revalidate](http://tools.ietf.org/html/rfc5861#section-3)
  * [stale-if-error](http://tools.ietf.org/html/rfc5861#section-4)

Continue reading on [RFC7231#7.1](https://tools.ietf.org/html/rfc7231#section-7.1)

header | description | spec
-----: | :---------- | :---
`Age` | "conveys the sender's estimate of the amount of time since the response was generated or successfully validated at the origin server." | [RFC7234#5.1](https://tools.ietf.org/html/rfc7234#section-5.1),<br>[RFC2616#14.6](https://tools.ietf.org/html/rfc2616#section-14.6)
`Cache-Control` | "is used to specify directives for caches along the request/response chain." | [RFC7234#7.2](https://tools.ietf.org/html/rfc7234#section-7.2),<br>[RFC2616#14.9](https://tools.ietf.org/html/rfc2616#section-14.9)
`Expires` | "gives the date/time after which the response is considered stale." | [RFC7234#7.3](https://tools.ietf.org/html/rfc7234#section-7.3),<br>[RFC2616#14.21](https://tools.ietf.org/html/rfc2616#section-14.21)
`Date` | "represents the date and time at which the message was originated" | [RFC7231#7.1.1.2](https://tools.ietf.org/html/rfc7231#section-7.1.1.2),<br>[RFC2616#14.18](https://tools.ietf.org/html/rfc2616#section-14.18)
`Location` | "is used in some responses to refer to a specific resource in relation to the response." | [RFC7231#7.1.2](https://tools.ietf.org/html/rfc7231#section-7.1.2),<br>[RFC2616#14.30](https://tools.ietf.org/html/rfc2616#section-14.30)
`Retry-After` | "indicates how long the user agent ought to wait before making a follow-up request." | [RFC7231#7.1.3](https://tools.ietf.org/html/rfc7231#section-7.1.3),<br>[RFC2616#14.37](https://tools.ietf.org/html/rfc2616#section-14.37)
`Tk` | "defined as an OPTIONAL means for indicating the tracking status that applied to the corresponding request and as a REQUIRED means for indicating that a state-changing request has resulted in an interactive change to the tracking status. " | [Tracking Preference Expression (DNT)](https://www.w3.org/TR/tracking-dnt/#response-header-field)
`Vary` | "describes what parts of a request message, aside from the method and request target, might influence the origin server's process for selecting and representing the response." | [RFC7231#7.1.4](https://tools.ietf.org/html/rfc7231#section-7.1.4),<br>[RFC2616#14.44](https://tools.ietf.org/html/rfc2616#section-14.44)
`Warning` | "is used to carry additional information about the status or transformation of a message that might not be reflected in the message." | [RFC7234#7.6](https://tools.ietf.org/html/rfc7234#section-7.6),<br>[RFC2616#14.46](https://tools.ietf.org/html/rfc2616#section-14.46)

### Validator

> Validator header fields convey metadata about the selected representation

Continue reading on [RFC7231#7.2](https://tools.ietf.org/html/rfc7231#section-7.2)

header | description | spec
-----: | :---------- | :---
`ETag` | "provides the current entity-tag for the selected representation, as determined at the conclusion of handling the request." | [RFC7232#2.3](https://tools.ietf.org/html/rfc7232#section-2.3),<br>[RFC2616#14.19](https://tools.ietf.org/html/rfc2616#section-14.19)
`Last-Modified` | "provides a timestamp indicating the date and time at which the origin server believes the selected representation was last modified, as determined at the conclusion of handling the request." | [RFC7232#2.2](https://tools.ietf.org/html/rfc7232#section-2.2),<br>[RFC2616#14.29](https://tools.ietf.org/html/rfc2616#section-14.29)

### Authentication Challenges

Continue reading on [RFC7231#7.3](https://tools.ietf.org/html/rfc7231#section-7.3)

header | description | spec
-----: | :---------- | :---
`WWW-Authenticate` | "consists of at least one challenge that indicates the authentication scheme(s) and parameters applicable to the effective request URI." | [RFC7235#4.4](https://tools.ietf.org/html/rfc7235#section-4.4),<br>[RFC7615#3](https://tools.ietf.org/html/rfc7615#section-3)
`Proxy-Authenticate` | "consists of at least one challenge that indicates the authentication scheme(s) and parameters applicable to the proxy for this effective request URI." | [RFC7235#4.2](https://tools.ietf.org/html/rfc7235#section-4.2),<br>[RFC7615#4](https://tools.ietf.org/html/rfc7615#section-4)

### Response Context

Continue reading on [RFC7231#7.4](https://tools.ietf.org/html/rfc7231#section-7.4)

header | description | spec
-----: | :---------- | :---
`Accept-Ranges` | "allows a server to indicate that it supports range requests for the target resource." | [RFC7233#2.3](https://tools.ietf.org/html/rfc7233#section-2.3),<br>[RFC2616#14.5](https://tools.ietf.org/html/rfc2616#section-14.5)
`Allow` | "lists the set of methods advertised as supported by the target resource." | [RFC7231#7.4.1](https://tools.ietf.org/html/rfc7231#section-7.4.1),<br>[RFC2616#14.7](https://tools.ietf.org/html/rfc2616#section-14.7)
`Server` | "contains information about the software used by the origin server to handle the request, which is often used by clients to help identify the scope of reported interoperability problems, to work around or tailor requests to avoid particular server limitations, and for analytics regarding server or operating system use." | [RFC7231#7.4.2](https://tools.ietf.org/html/rfc7231#section-7.4.2),<br>[RFC2616#14.38](https://tools.ietf.org/html/rfc2616#section-14.38)

## Common (subjective)

header | description | spec
-----: | :---------- | :---
`Accept-Patch` | "used to specify the patch document formats accepted by the server." | [RFC5789#3.1](https://tools.ietf.org/html/rfc5789#section-3.1)
`Accept-Post` | "indicates server support for specific media types for entity bodies in HTTP POST requests." | [draft-wilde-accept-post](https://tools.ietf.org/html/draft-wilde-accept-post)
`Access-Control-Allow-Credentials` | "indicates whether the response to request can be exposed when the omit credentials flag is unset" | [CORS](https://www.w3.org/TR/cors/#access-control-allow-credentials-response-header)
`Access-Control-Allow-Headers` | "indicates, as part of the response to a preflight request, which header field names can be used during the actual request" | [CORS](https://www.w3.org/TR/cors/#access-control-allow-headers-response-header)
`Access-Control-Allow-Methods` | "indicates, as part of the response to a preflight request, which methods can be used during the actual request" | [CORS](https://www.w3.org/TR/cors/#access-control-allow-methods-response-header)
`Access-Control-Allow-Origin` | "indicates whether a resource can be shared" | [CORS](https://www.w3.org/TR/cors/#access-control-allow-origin-response-header)
`Access-Control-Expose-Headers` | "indicates which headers are safe to expose to the API of a CORS API specification" | [CORS](https://www.w3.org/TR/cors/#access-control-expose-headers-response-header)
`Access-Control-Max-Age` | "indicates how long the results of a preflight request can be cached in a preflight result cache" | [CORS](https://www.w3.org/TR/cors/#access-control-max-age-response-header)
`Access-Control-Request-Headers` | "indicates which headers will be used in the actual request as part of the preflight request" | [CORS](https://www.w3.org/TR/cors/#access-control-request-headers-request-header)
`Access-Control-Request-Method` | "indicates which method will be used in the actual request as part of the preflight request" | [CORS](https://www.w3.org/TR/cors/#access-control-request-method-request-header)
`Connection` | "" | ?
`Content-Disposition` | "standard" | [RFC6266](https://tools.ietf.org/html/rfc6266)
`Content-MD5` | "" | ?
`Content-Security-Policy` | "is the preferred mechanism for delivering a CSP policy" | [CSP](https://www.w3.org/TR/CSP/#content-security-policy-header-field)
`Content-Security-Policy-Report-Only` | "lets servers experiment with policies by monitoring (rather than enforcing) a policy" | [CSP](https://www.w3.org/TR/CSP/#content-security-policy-report-only-header-field)
`Cookie` | "standard" | [RFC6265](https://tools.ietf.org/html/rfc6265)
`Digest` | "" | ?
`Forwarded` | "standard" | [RFC7239](https://tools.ietf.org/html/rfc7239)
`Keep-Alive` | "" | ?
`Link` | "provides a means for serialising one or more links in HTTP headers." | [RFC5988#5](https://tools.ietf.org/html/rfc5988#section-5)
`Origin` | "standard" | [RFC6454](https://tools.ietf.org/html/rfc6454)
`Prefer` | "is used to indicate that particular server behaviors are preferred by the client, but not required for successful completion of the request." | [RFC7240#2](https://tools.ietf.org/html/rfc7240#section-2)
`Preference-Applied` | "MAY be included within a response message as an indication as to which Prefer tokens were honored by the server and applied to the processing of a request." | [RFC7240#3](https://tools.ietf.org/html/rfc7240#section-3)
`Set-Cookie` | "standard" | [RFC6265](https://tools.ietf.org/html/rfc6265)
`Strict-Transport-Security` | "standard" | [RFC6797](https://tools.ietf.org/html/rfc6797)
`Variant-Vary` | "" | ?
`Via` | "" | [RFC7230#5.7.1](https://tools.ietf.org/html/rfc7230#section-5.7.1),<br>[RFC2616#14.45](https://tools.ietf.org/html/rfc2616#section-14.45)

## Less Common (subjective)

header | description | spec
-----: | :---------- | :---
`A-IM` | "" | [RFC3229#10.5.3](https://tools.ietf.org/html/rfc3229#section-10.5.3)
`Accept-Additions` | "" | ?
`Accept-CH` | "advertise support for Client Hints" | [draft-grigorik-http-client-hints](https://tools.ietf.org/html/draft-grigorik-http-client-hints)
`Accept-Features` | "can be used by a user agent to give information about the presence or absence of certain features in the feature set of the current request." | [RFC2295#8.2](https://tools.ietf.org/html/rfc2295#section-8.2)
`ALPN` | "indicates the application-layer protocol that a client intends to use within the tunnel, or a set of protocols that might be used within the tunnel." | [RFC7639#2](https://tools.ietf.org/html/rfc7639#section-2)
`Alt-Svc` | "is advertising the availability of alternate services to HTTP/1.1 and HTTP/2.0 clients by adding an Alt-Svc header field to responses." | [draft-nottingham-httpbis-alt-svc](https://tools.ietf.org/html/draft-nottingham-httpbis-alt-svc)
`Alternates` | "is used to convey the list of variants bound to a negotiable resource." | [RFC2295#8.3](https://tools.ietf.org/html/rfc2295#section-8.3)
`Apply-To-Redirect-Ref` | "" | [RFC4437](https://tools.ietf.org/html/rfc4437)
`Authentication-Info` | "" | ?
`C-Ext` | "" | ?
`CH` | "describes an example list of client preferences that the server can use to adapt and optimize the resource to satisfy a given request." | [draft-grigorik-http-client-hints](https://tools.ietf.org/html/draft-grigorik-http-client-hints)
`C-Man` | "" | ?
`C-Opt` | "" | ?
`C-PEP` | "" | ?
`C-PEP-Info` | "" | ?
`Content-Base` | "obsoleted" | [RFC2068](https://tools.ietf.org/html/rfc2068),<br>[RFC2616](https://tools.ietf.org/html/rfc2616)
`Content-DPR` | "is a number that indicates the ratio between physical pixels over CSS px of the selected image response." | [draft-grigorik-http-client-hints](https://tools.ietf.org/html/draft-grigorik-http-client-hints)
`Content-ID` | "" | ?
`Content-Script-Type` | "" | ?
`Content-Style-Type` | "" | ?
`Content-Version` | "" | ?
`Cookie2` | "obsoleted" | [RFC2965](https://tools.ietf.org/html/rfc2965),<br>[RFC6265](https://tools.ietf.org/html/rfc6265)
`DASL` | "standard" | [RFC5323](https://tools.ietf.org/html/rfc5323)
`DAV` | "standard" | [RFC4918](https://tools.ietf.org/html/rfc4918)
`Default-Style` | "" | ?
`Delta-Base` | "" | [RFC3229#10.5.1](https://tools.ietf.org/html/rfc3229#section-10.5.1)
`Depth` | "standard" | [RFC4918](https://tools.ietf.org/html/rfc4918)
`Derived-From` | "" | ?
`Destination` | "standard" | [RFC4918](https://tools.ietf.org/html/rfc4918)
`Differential-ID` | "" | ?
`DPR` | "is a number that, in requests, indicates the client’s current Device Pixel Ratio (DPR), which is the ratio of physical pixels over CSS px of the layout viewport on the device." | [draft-grigorik-http-client-hints](https://tools.ietf.org/html/draft-grigorik-http-client-hints)
`Encryption` | "describes the encrypted content encoding(s) that have been applied to a payload body, and therefore how those content encoding(s) can be removed." | [draft-thomson-http-encryption](https://tools.ietf.org/html/draft-thomson-http-encryption#section-3)
`Encryption-Key` | "can be used to describe the input keying material used in the Encryption header field." | [draft-thomson-http-encryption](https://tools.ietf.org/html/draft-thomson-http-encryption#section-4)
`Ext` | "" | ?
`GetProfile` | "" | ?
`IM` | "" | [RFC3229#10.5.2](https://tools.ietf.org/html/rfc3229#section-10.5.2)
`If` | "standard" | [RFC4918](https://tools.ietf.org/html/rfc4918)
`If-Schedule-Tag-Match` | "standard" | [RFC6638](https://tools.ietf.org/html/rfc6638)
`Key` | "allows an origin server to describe the cache key for a negotiated response: a short algorithm that can be used upon later requests to determine if the same response is reusable." | [draft-fielding-http-key](https://tools.ietf.org/html/draft-fielding-http-key)
`Label` | "" | ?
`Last-Event-ID` | "The value of the event source's last event ID string, encoded as UTF-8." | [Server-Sent Events](https://www.w3.org/TR/eventsource/#last-event-id)
`Link-Template` | "provides a means for serialising one or more links into HTTP headers." | [draft-nottingham-link-template](https://tools.ietf.org/html/draft-nottingham-link-template)
`Lock-Token` | "standard" | [RFC4918](https://tools.ietf.org/html/rfc4918)
`Man` | "" | ?
`MD` | "is a number that, in requests, indicates the client’s maximum downlink speed in megabits per second (Mbps), which is the standardized, or generally accepted, maximum download data rate for the underlying connection technology in use by the client." | [draft-grigorik-http-client-hints](https://tools.ietf.org/html/draft-grigorik-http-client-hints)
`Meter` | "" | ?
`MIME-Version` | "" | ?
`Negotiate` | "can contain directives for any content negotiation process initiated by the request." | [RFC2295#8.4](https://tools.ietf.org/html/rfc2295#section-8.4)
`Nice` | "indicates that a request is less important than a request that doesn't bear this header." | [draft-thomson-http-nice](https://tools.ietf.org/html/draft-thomson-http-nice)
`Opt` | "" | ?
`Ordering-Type` | "standard" | ?
`Overwrite` | "standard" | [RFC4918](https://tools.ietf.org/html/rfc4918)
`P3P` | "" | ?
`PEP` | "" | ?
`PICS-Label` | "" | ?
`Pep-Info` | "" | ?
`POE` | "The POE HTTP header is a request-header field whose field-value indicates the version of POE that a client supports." | [draft-nottingham-http-poe](https://tools.ietf.org/html/draft-nottingham-http-poe)
`POE-Links` | "The POE-Links HTTP header is an entity-header field whose field-value is a comma-separated list of quoted URI-references (without fragment identifiers) that the origin server asserts to be POE resources. The contents of the POE-Links response header SHOULD correspond to links found in the content of the response body." | [draft-nottingham-http-poe](https://tools.ietf.org/html/draft-nottingham-http-poe)
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
`Redirect-Ref` | "" | [RFC4437](https://tools.ietf.org/html/rfc4437)
`RW` | "is a number that, in requests, indicates the Resource Width (RW) in CSS px, which is either the display width of the requested resource (e.g. display width of an image), or the layout viewport width if the resource does not have a display width (e.g. a non-image asset)." | [draft-grigorik-http-client-hints](https://tools.ietf.org/html/draft-grigorik-http-client-hints)
`Safe` | "" | ?
`Schedule-Reply` | "standard" | [RFC6638](https://tools.ietf.org/html/rfc6638)
`Schedule-Tag` | "standard" | [RFC6638](https://tools.ietf.org/html/rfc6638)
`Sec-WebSocket-Accept` | "standard" | [RFC6455](https://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Extensions` | "standard" | [RFC6455](https://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Key` | "standard" | [RFC6455](https://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Protocol` | "standard" | [RFC6455](https://tools.ietf.org/html/rfc6455)
`Sec-WebSocket-Version` | "standard" | [RFC6455](https://tools.ietf.org/html/rfc6455)
`Security-Scheme` | "" | ?
`Set-Cookie2` | "obsoleted" | [RFC2965](https://tools.ietf.org/html/rfc2965),<br>[RFC6265](https://tools.ietf.org/html/rfc6265)
`SetProfile` | "" | ?
`SLUG` | "standard" | [RFC5023](https://tools.ietf.org/html/rfc5023)
`SoapAction` | "" | ?
`Status-URI` | "" | [RFC2518](https://tools.ietf.org/html/rfc2518#section-9.7)
`Sunset` | "allows a server to communicate the fact that a resource is expected to become unresponsive at a specific point in time." | [draft-wilde-sunset-header](https://tools.ietf.org/html/draft-wilde-sunset-header)
`Surrogate-Capability` | "" | [Edge Architecture](https://www.w3.org/TR/edge-arch)
`Surrogate-Control` | "" | [Edge Architecture](https://www.w3.org/TR/edge-arch)
`TCN` | "is used by a server to signal that the resource is transparently negotiated." | [RFC2295#8.5](https://tools.ietf.org/html/rfc2295#section-8.5)
`Timeout` | "standard" | [RFC4918](https://tools.ietf.org/html/rfc4918)
`Trailer` | "" |43
`URI` | "" | ?
`Upgrade` | "" |42
`Variant-Vary` | "can be used in a choice response to record any vary information which applies to the variant data (the entity body combined with some of the entity headers) contained in the response, rather than to the response as a whole." | [RFC2295#8.6](https://tools.ietf.org/html/rfc2295#section-8.6)
`Want-Digest` | "" | ?
`X-Frame-Options` | "indicates a policy that specifies whether the browser should render the transmitted resource within a &lt;frame&gt; or an &lt;iframe&gt;. Servers can declare this policy in the header of their HTTP responses to prevent clickjacking attacks, which ensures that their content is not embedded into other pages or frames." | [RFC7034](https://tools.ietf.org/html/rfc7034)

A chunk of provisional headers can be found at [HTTP Headers Registry](https://www.iana.org/assignments/message-headers/message-headers.xml).

For a full up-to-date list, including non-HTTP headers, continue reading on [HTTP Headers Registry](https://www.iana.org/assignments/message-headers/message-headers.xml), [Wikipedia](http://en.wikipedia.org/wiki/List_of_HTTP_header_fields).

## Sources

* [RFC7230 Hypertext Transfer Protocol (HTTP/1.1): Message Syntax and Routing](https://tools.ietf.org/html/rfc7230)
* [RFC7231 Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content](https://tools.ietf.org/html/rfc7231)
* [RFC7232 Hypertext Transfer Protocol (HTTP/1.1): Conditional Requests](https://tools.ietf.org/html/rfc7232)
* [RFC7233 Hypertext Transfer Protocol (HTTP/1.1): Range Requests](https://tools.ietf.org/html/rfc7233)
* [RFC7234 Hypertext Transfer Protocol (HTTP/1.1): Caching](https://tools.ietf.org/html/rfc7234)
* [RFC7235 Hypertext Transfer Protocol (HTTP/1.1): Authentication](https://tools.ietf.org/html/rfc7235)
* [RFC7616 HTTP Digest Access Authentication](https://tools.ietf.org/html/rfc7616)
* [RFC7617 The 'Basic' HTTP Authentication Scheme](https://tools.ietf.org/html/rfc7617)
* OBSOLETE ~~[RFC2616 Hypertext Transfer Protocol -- HTTP/1.1](https://tools.ietf.org/html/rfc2616#)~~
* Your truly
