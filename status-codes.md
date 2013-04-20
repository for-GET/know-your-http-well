# KNOW YOUR HTTP well. STATUS CODES

> The status-code element is a 3-digit integer code giving the result of the attempt to understand and satisfy the request.

Continue reading on [httpbisp2#6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6), [RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10).

## Classes

> The first digit of the status-code defines the class of response. The last two digits do not have any categorization role. There are 5 values for the first digit:

Continue reading on [httpbisp2#6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6), [RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10).

## Common

### 1xx

code | reason | description | spec
---: | :----- | :---------- | :---
`1xx` | **Informational** | "The request was received, continuing process"<br>[sure](http://www.urbandictionary.com/define.php?term=sure) | [httpbisp2#6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6),<br>[httpbisp2#6.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.2),<br> [RFC2616#6.1.1](http://tools.ietf.org/html/rfc2616#section-6.1.1)
`100` | Continue | "indicates that the initial part of a request has been received and has not yet been rejected by the server." | [httpbisp2#6.2.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.2.1),<br> [RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`101` | Switching Protocols | "indicates that the server understands and is willing to comply with the client's request, via the Upgrade header field, for a change in the application protocol being used on this connection." | [httpbisp2#6.2.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.2.2),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)

### 2xx

code | reason | description | spec
---: | :----- | :---------- | :---
`2xx` | **Successful** | "The request was successfully received, understood, and accepted"<br>["cool"](https://twitter.com/DanaDanger/status/183316183494311936) | [httpbisp2#6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6),<br>[httpbisp2#6.3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.3),<br> [RFC2616#6.1.1](http://tools.ietf.org/html/rfc2616#section-6.1.1)
`200` | OK | "indicates that the request has succeeded." | [httpbisp2#6.3.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.3.1),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`201` | Created | "indicates that the request has been fulfilled and has resulted in one or more new resources being created." | [httpbisp2#6.3.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.3.2),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`202` | Accepted | "indicates that the request has been accepted for processing, but the processing has not been completed." | [httpbisp2#6.3.3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.3.3),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`203` | Non-Authoritative Information | "indicates that the request was successful but the enclosed payload has been modified from that of the origin server's 200 (OK) response by a transforming proxy." | [httpbisp2#6.3.4](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.3.4),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`204` | No Content | "indicates that the server has successfully fulfilled the request and that there is no additional content to send in the response payload body." | [httpbisp2#6.3.5](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.3.5),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`205` | Reset Content | "indicates that the server has fulfilled the request and desires that the user agent reset the "document view", which caused the request to be sent, to its original state as received from the origin server." | [httpbisp2#6.3.6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.3.6),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`206` | Partial Content | "indicates that the server is successfully fulfilling a range request for the target resource by transferring one or more parts of the selected representation that correspond to the satisfiable ranges found in the requests's Range header field." | [httpbisp5#4.1](http://tools.ietf.org/html/draft-ietf-httpbis-p5-range#section-4.1),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)

### 3xx

code | reason | description | spec
---: | :----- | :---------- | :---
`3xx` | **Redirection** | "Further action needs to be taken in order to complete the request"<br>["ask that dude over there"](https://twitter.com/DanaDanger/status/183316183494311936) | [httpbisp2#6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6),<br>[httpbisp2#6.4](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.4),<br> [RFC2616#6.1.1](http://tools.ietf.org/html/rfc2616#section-6.1.1)
`300` | Multiple Choices | "indicates that the target resource has more than one representation, each with its own more specific identifier, and information about the alternatives is being provided so that the user (or user agent) can select a preferred representation by redirecting its request to one or more of those identifiers." | [httpbisp2#6.4.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.4.1),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`301` | Moved Permanently | "indicates that the target resource has been assigned a new permanent URI and any future references to this resource ought to use one of the enclosed URIs." | [httpbisp2#6.4.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.4.2),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`302` | Found | "indicates that the target resource resides temporarily under a different URI." | [httpbisp2#6.4.3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.4.3),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`303` | See Other | "indicates that the server is redirecting the user agent to a different resource, as indicated by a URI in the Location header field, that is intended to provide an indirect response to the original request." | [httpbisp2#6.4.4](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.4.4),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`304` | Not Modified | "indicates that a conditional GET request has been received and would have resulted in a 200 (OK) response if it were not for the fact that the condition has evaluated to false." | [httpbisp4#4.1](http://tools.ietf.org/html/draft-ietf-httpbis-p4-conditional#section-4.1),<br>[RFC2616#10.3.5](http://tools.ietf.org/html/rfc2616#section-10.3.5)
`305` | Use Proxy | *deprecated* | [httpbisp2#6.4.5](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.4.5),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`306` | | *unused* | [httpbisp2#6.4.6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.4.6),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`307` | Temporary Redirect | "indicates that the target resource resides temporarily under a different URI and the user agent MUST NOT change the request method if it performs an automatic redirection to that URI." | [httpbisp2#6.4.7](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.4.7),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)

### 4xx

code | reason | description | spec
---: | :----- | :---------- | :---
`4xx` | **Client Error** | "The request contains bad syntax or cannot be fulfilled"<br>["you fucked up"](https://twitter.com/DanaDanger/status/183316183494311936) | [httpbisp2#6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6),<br>[httpbisp2#6.5](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5),<br> [RFC2616#6.1.1](http://tools.ietf.org/html/rfc2616#section-6.1.1)
`400` | Bad Request | "indicates that the server cannot or will not process the request because the received syntax is invalid, nonsensical, or exceeds some limitation on what the server is willing to process." | [httpbisp2#6.5.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.1),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`401` | Unauthorized | "indicates that the request has not been applied because it lacks valid authentication credentials for the target resource." | [httpbisp2#6.3.1](http://tools.ietf.org/html/draft-ietf-httpbis-p7-auth#section-3.1),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`402` | Payment Required | *reserved* | [httpbisp2#6.5.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.2),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`403` | Forbidden | "indicates that the server understood the request but refuses to authorize it." | [httpbisp2#6.5.3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.3),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`404` | Not Found | "indicates that the origin server did not find a current representation for the target resource or is not willing to disclose that one exists." | [httpbisp2#6.5.4](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.4),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`405` | Method Not Allowed | "indicates that the method specified in the request-line is known by the origin server but not supported by the target resource." | [httpbisp2#6.5.5](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.5),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`406` | Not Acceptable | "indicates that the target resource does not have a current representation that would be acceptable to the user agent, according to the proactive negotiation header fields received in the request, and the server is unwilling to supply a default representation." | [httpbisp2#6.5.6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.6),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`407` | Proxy Authentication Required | "is similar to 401 (Unauthorized), but indicates that the client needs to authenticate itself in order to use a proxy." | [httpbisp2#6.3.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.3.2),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`408` | Request Timeout | "indicates that the server did not receive a complete request message within the time that it was prepared to wait." | [httpbisp2#6.5.7](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.7),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`409` | Conflict | "indicates that the request could not be completed due to a conflict with the current state of the resource." | [httpbisp2#6.5.8](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.8),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`410` | Gone | "indicates that access to the target resource is no longer available at the origin server and that this condition is likely to be permanent." | [httpbisp2#6.5.9](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.9),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`411` | Length Required | "indicates that the server refuses to accept the request without a defined Content-Length." | [httpbisp2#6.5.10](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.10),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`412` | Precondition Failed | "indicates that one or more preconditions given in the request header fields evaluated to false when tested on the server." | [httpbisp4#4.2](http://tools.ietf.org/html/draft-ietf-httpbis-p4-conditional#section-4.2),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`413` | Payload Too Large | "indicates that the server is refusing to process a request because the request payload is larger than the server is willing or able to process." | [httpbisp2#6.5.11](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.11),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`414` | URI Too Long | "indicates that the server is refusing to service the request because the request-target is longer than the server is willing to interpret." | [httpbisp2#6.5.12](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.12),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`415` | Unsupported Media Type | "indicates that the origin server is refusing to service the request because the payload is in a format not supported by the target resource for this method." | [httpbisp2#6.5.13](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.13),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`416` | Range Not Satisfiable | "indicates that none of the ranges in the request's Range header field overlap the current extent of the selected resource or that the set of ranges requested has been rejected due to invalid ranges or an excessive request of small or overlapping ranges." | [httpbisp5#4.4](http://tools.ietf.org/html/draft-ietf-httpbis-p5-range#section-4.4),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`417` | Expectation Failed | "indicates that the expectation given in the request's Expect header field could not be met by at least one of the inbound servers." | [httpbisp2#6.5.14](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.14),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`426` | Upgrade Required | "indicates that the server refuses to perform the request using the current protocol but might be willing to do so after the client upgrades to a different protocol." | [httpbisp2#6.5.15](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.5.15),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)

### 5xx

code | reason | description | spec
---: | :----- | :---------- | :---
`5xx` | **Server Error** | "The server failed to fulfill an apparently valid request"<br>["we fucked up"](https://twitter.com/DanaDanger/status/183316183494311936) | [httpbisp2#6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6),<br>[httpbisp2#6.6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.6),<br> [RFC2616#6.1.1](http://tools.ietf.org/html/rfc2616#section-6.1.1)
`500` | Internal Server Error | "indicates that the server encountered an unexpected condition that prevented it from fulfilling the request." | [httpbisp2#6.6.1](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.6.1),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`501` | Not Implemented | "indicates that the server does not support the functionality required to fulfill the request." | [httpbisp2#6.6.2](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.6.2),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`502` | Bad Gateway | "indicates that the server, while acting as a gateway or proxy, received an invalid response from an inbound server it accessed while attempting to fulfill the request." | [httpbisp2#6.6.3](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.6.3),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`503` | Service Unavailable | "indicates that the server is currently unable to handle the request due to a temporary overload or scheduled maintenance, which will likely be alleviated after some delay." | [httpbisp2#6.6.4](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.6.4),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`504` | Gateway Time-out | "indicates that the server, while acting as a gateway or proxy, did not receive a timely response from an upstream server it needed to access in order to complete the request." | [httpbisp2#6.6.5](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.6.5),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)
`505` | HTTP Version Not Supported | "indicates that the server does not support, or refuses to support, the protocol version that was used in the request message." | [httpbisp2#6.6.6](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#section-6.6.6),<br>[RFC2616#10](http://tools.ietf.org/html/rfc2616#section-10)

## Extensions

code | reason | description | spec
---: | :----- | :---------- | :---
`102` | Processing | "is an interim response used to inform the client that the server has accepted the complete request, but has not yet completed it." | [RFC5218#10.1](http://tools.ietf.org/html/rfc2518#section-10.1)
`207` | Multi-Status | "provides status for multiple independent operations." | [RFC5218#10.2](http://tools.ietf.org/html/rfc2518#section-10.2)
`422` | Unprocessable Entity | "means the server understands the content type of the request entity (hence a 415(Unsupported Media Type) status code is inappropriate), and the syntax of the request entity is correct (thus a 400 (Bad Request) status code is inappropriate) but was unable to process the contained instructions." | [RFC5218#10.3](http://tools.ietf.org/html/rfc2518#section-10.3)
`423` | Locked | "means the source or destination resource of a method is locked." | [RFC5218#10.4](http://tools.ietf.org/html/rfc2518#section-10.4)
`424` | Failed Dependency | "means that the method could not be performed on the resource because the requested action depended on another action and that action failed." | [RFC5218#10.5](http://tools.ietf.org/html/rfc2518#section-10.5)
`428` | Precondition Required | "indicates that the origin server requires the request to be conditional." | [RFC6585#3](http://tools.ietf.org/html/rfc6585#section-3)
`429` | Too Many Requests | "indicates that the user has sent too many requests in a given amount of time ("rate limiting")." | [RFC6585#4](http://tools.ietf.org/html/rfc6585#section-4)
`431` | Request Header Fields Too Large | "indicates that the server is unwilling to process the request because its header fields are too large." | [RFC6585#5](http://tools.ietf.org/html/rfc6585#section-5)
`507` | Insufficient Storage | "means the method could not be performed on the resource because the server is unable to store the representation needed to successfully complete the request." | [RFC5218#10.7](http://tools.ietf.org/html/rfc2518#section-10.7)
`511` | Network Authentication Required | "indicates that the client needs to authenticate to gain network access." | [RFC6585#6](http://tools.ietf.org/html/rfc6585#section-6)
`7xx` | **Developer Error** | [err](http://www.urbandictionary.com/define.php?term=err) | [7xx-rfc](https://github.com/joho/7XX-rfc)

A chunk of extension codes can be found in [RFC2326 Real Time Streaming Protocol (RTSP)](http://tools.ietf.org/html/rfc2326#).

For a full up-to-date list, continue reading on [HTTP Status Code Registry](http://www.iana.org/assignments/http-status-codes/http-status-codes.xml), [Wikipedia](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes).

## Sources

* [draft-ietf-httpbis-p2-semantics Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content](http://tools.ietf.org/html/draft-ietf-httpbis-p2-semantics#)
* [draft-ietf-httpbis-p4-conditional Hypertext Transfer Protocol (HTTP/1.1): Conditional Requests](http://tools.ietf.org/html/draft-ietf-httpbis-p4-conditional#)
* [draft-ietf-httpbis-p5-range Hypertext Transfer Protocol (HTTP/1.1): Range Requests](http://tools.ietf.org/html/draft-ietf-httpbis-p5-range#)
* [RFC2616 Hypertext Transfer Protocol -- HTTP/1.1](http://tools.ietf.org/html/rfc2616#)
* [RFC2518 HTTP Extensions for Distributed Authoring -- WEBDAV](http://tools.ietf.org/html/rfc2518)
* [RFC6585 Additional HTTP Status Codes](http://tools.ietf.org/html/rfc6585#)
* [Dana Contreras](https://twitter.com/DanaDanger)
* [John Barton](http://whoisjohnbarton.com)
* [Urban Dictionary](http://www.urbandictionary.com)
* Yours truly
