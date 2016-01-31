# KNOW YOUR HTTP methods WELL

> The request method token is the primary source of request semantics; it indicates the purpose for which the client has made this request and what is expected by the client as a successful result.

Continue reading on [RFC7231#4.1](https://tools.ietf.org/html/rfc7231#section-4.1), [RFC2616#9](https://tools.ietf.org/html/rfc2616#section-9).

## Safe

> Request methods are considered "safe" if their defined semantics are essentially read-only; i.e., the client does not request, and does not expect, any state change on the origin server as a result of applying a safe method to a target resource. Likewise, reasonable use of a safe method is not expected to cause any harm, loss of property, or unusual burden on the origin server.

Continue reading on [RFC7231#4.2.1](https://tools.ietf.org/html/rfc7231#section-4.2.1), [RFC2616#9.1.1](https://tools.ietf.org/html/rfc2616#section-9.1.1).

## Idempotent

> Request methods are considered "idempotent" if the intended effect of multiple identical requests is the same as for a single request. Of the request methods defined by this specification, the PUT, DELETE, and safe request methods are idempotent.

Continue reading on [RFC7231#4.2.2](https://tools.ietf.org/html/rfc7231#section-4.2.2), [RFC2616#9.1.2](https://tools.ietf.org/html/rfc2616#section-9.1.2).

## Cacheable

> Request methods are considered "cacheable" if it is possible and useful to answer a current client request with a stored response from a prior request. GET and HEAD are defined to be cacheable.

Continue reading on [RFC7231#4.2.3](https://tools.ietf.org/html/rfc7231#section-4.2.3), [RFC2616#9.1.2](https://tools.ietf.org/html/rfc2616#section-9.1.2).

## Common

> POST and PATCH are not cacheable by default, like GET and HEAD, but become cacheable by using appropriate `Cache-Control` or `Expires` response headers.

method | description | safe | idem. | cache. | spec
-----: | :---------- | :--: | :---: | :----: | :---
`CONNECT` | "requests that the recipient establish a tunnel to the destination origin server identified by the request-target and, if successful, thereafter restrict its behavior to blind forwarding of packets, in both directions, until the connection is closed." | ✔ | ✔ | ✘ | [RFC7231#4.3.6](https://tools.ietf.org/html/rfc7231#section-4.3.6),<br>[RFC2616#9.9](https://tools.ietf.org/html/rfc2616#section-9.9)
`DELETE` | "requests that the origin server remove the association between the target resource and its current functionality." | ✘ | ✔ | ✘ | [RFC7231#4.3.5](https://tools.ietf.org/html/rfc7231#section-4.3.5),<br>[RFC2616#9.7](https://tools.ietf.org/html/rfc2616#section-9.7)
`GET` | "requests transfer of a current selected representation for the target resource." | ✔ | ✔ | ✔ | [RFC7231#4.3.1](https://tools.ietf.org/html/rfc7231#section-4.3.1),<br>[RFC2616#9.3](https://tools.ietf.org/html/rfc2616#section-9.3)
`HEAD` | "is identical to GET except that the server MUST NOT send a message body in the response (i.e., the response terminates at the end of the header block)." | ✔ | ✔ | ✔ | [RFC7231#4.3.2](https://tools.ietf.org/html/rfc7231#section-4.3.2),<br>[RFC2616#9.4](https://tools.ietf.org/html/rfc2616#section-9.4)
`OPTIONS` | "requests information about the communication options available on the request/response chain identified by the effective request URI." | ✔ | ✔ | ✘ | [RFC7231#4.3.7](https://tools.ietf.org/html/rfc7231#section-4.3.7),<br>[RFC2616#9.3](https://tools.ietf.org/html/rfc2616#section-9.3)
`POST` | "requests that the target resource process the representation enclosed in the request according to the resource's own specific semantics." | ✘ | ✘ | ✘ | [RFC7231#4.3.3](https://tools.ietf.org/html/rfc7231#section-4.3.3),<br>[RFC2616#9.5](https://tools.ietf.org/html/rfc2616#section-9.5)
`PUT` | "requests that the state of the target resource be created or replaced with the state defined by the representation enclosed in the request message payload." | ✘ | ✔ | ✘ | [RFC7231#4.3.4](https://tools.ietf.org/html/rfc7231#section-4.3.4),<br>[RFC2616#9.6](https://tools.ietf.org/html/rfc2616#section-9.6)
`TRACE` | "is used to invoke a remote, application-layer loopback of the request message." | ✔ | ✔ | ✘ | [RFC7231#4.3.8](https://tools.ietf.org/html/rfc7231#section-4.3.8),<br>[RFC2616#9.8](https://tools.ietf.org/html/rfc2616#section-9.8)

## Registered

For a full up-to-date list, continue reading on [RFC7237](https://tools.ietf.org/html/rfc7237#appendix-A).

method | description | safe | idem. | cache. | spec
-----: | :---------- | :--: | :---: | :----: | :---
`ACL` | | ✘ | ✔ | | [RFC3744#8.1](https://tools.ietf.org/html/rfc3744#section-8.1)
`BASELINE-CONTROL` | | ✘ | ✔ | | [RFC3253#12.6](https://tools.ietf.org/html/rfc3253#section-12.6)
`BIND` | | ✘ | ✔ | | [RFC5842#4](https://tools.ietf.org/html/rfc5842#section-4)
`CHECKIN` | | ✘ | ✔ | | [RFC3253#4.4](https://tools.ietf.org/html/rfc3253#section-4.4),<br>[RFC3253#9.4](https://tools.ietf.org/html/rfc3253#section-9.4)
`CHECKOUT` | | ✘ | ✔ | | [RFC3253#4.3](https://tools.ietf.org/html/rfc3253#section-4.3),<br>[RFC3253#8.8](https://tools.ietf.org/html/rfc3253#section-8.8)
`COPY` | | ✘ | ✔ | | [RFC4918#9.8](https://tools.ietf.org/html/rfc4918#section-9.8)
`LABEL` | | ✘ | ✔ | | [RFC3253#8.2](https://tools.ietf.org/html/rfc3253#section-8.2)
`LINK` | | ✘ | ✔ | | [RFC2068#19.6.1.2](https://tools.ietf.org/html/rfc2068#section-19.6.1.2)
`LOCK` | | ✘ | ✘ | | [RFC4918#9.10](https://tools.ietf.org/html/rfc4918#section-9.10)
`MERGE` | | ✘ | ✔ | | [RFC3253#11.2](https://tools.ietf.org/html/rfc3253#section-11.2)
`MKACTIVITY` | | ✘ | ✔ | | [RFC3253#13.5](https://tools.ietf.org/html/rfc3253#section-13.5)
`MKCALENDAR` | | ✘ | ✔ | | [RFC4791#5.3.1](https://tools.ietf.org/html/rfc4791#section-5.3.1)
`MKCOL` | | ✘ | ✔ | | [RFC4918#9.3](https://tools.ietf.org/html/rfc4918#section-9.3)
`MKREDIRECTREF` | | ✘ | ✔ | | [RFC4437#6](https://tools.ietf.org/html/rfc4437#section-6)
`MKWORKSPACE` | | ✘ | ✔ | | [RFC3253#6.3](https://tools.ietf.org/html/rfc3253#section-6.3)
`MOVE` | | ✘ | ✔ | | [RFC4918#9.9](https://tools.ietf.org/html/rfc4918#section-9.9)
`ORDERPATCH` | | ✘ | ✔ | | [RFC3648#7](https://tools.ietf.org/html/rfc3648#section-7)
`PATCH` | "requests that a set of changes described in the request entity be applied to the resource identified by the Request-URI." | ✘ | ✘ | ✘ | [RFC5789](https://tools.ietf.org/html/rfc5789#section-2)
`PROPFIND` | | ✔ | ✔ | | [RFC4918#9.1](https://tools.ietf.org/html/rfc4918#section-9.1)
`PROPPATCH` | | ✘ | ✔ | | [RFC4918#9.2](https://tools.ietf.org/html/rfc4918#section-9.2)
`REBIND` | | ✘ | ✔ | | [RFC5842#6](https://tools.ietf.org/html/rfc5842#section-6)
`REPORT` | | ✔ | ✔ | | [RFC3253#3.6](https://tools.ietf.org/html/rfc3253#section-3.6)
`SEARCH` | | ✔ | ✔ | | [RFC5323#2](https://tools.ietf.org/html/rfc5323#section-2)
`UNBIND` | | ✘ | ✔ | | [RFC5842#5](https://tools.ietf.org/html/rfc5842#section-5)
`UNCHECKOUT` | | ✘ | ✔ | | [RFC3253#4.5](https://tools.ietf.org/html/rfc3253#section-4.5)
`UNLINK` | | ✘ | ✔ | | [RFC2068#19.6.1.3](https://tools.ietf.org/html/rfc2068#section-19.6.1.3)
`UNLOCK` | | ✘ | ✔ | | [RFC4918#9.11](https://tools.ietf.org/html/rfc4918#section-9.11)
`UPDATE` | | ✘ | ✔ | | [RFC3253#7.1](https://tools.ietf.org/html/rfc3253#section-7.1)
`UPDATEREDIRECTREF` | | ✘ | ✔ | | [RFC4437#7](https://tools.ietf.org/html/rfc4437#section-7)
`VERSION-CONTROL` | | ✘ | ✔ | | [RFC3253#3.5](https://tools.ietf.org/html/rfc3253#section-3.5)

## Sources

* [RFC7231 Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content](https://tools.ietf.org/html/rfc7231)
* [RFC7616 HTTP Digest Access Authentication](https://tools.ietf.org/html/rfc7616)
* [RFC7617 The 'Basic' HTTP Authentication Scheme](https://tools.ietf.org/html/rfc7617)
* [RFC5789 PATCH Method for HTTP](https://tools.ietf.org/html/rfc5789)
* OBSOLETE ~~[RFC2616 Hypertext Transfer Protocol -- HTTP/1.1](https://tools.ietf.org/html/rfc2616#)~~
* Yours truly
