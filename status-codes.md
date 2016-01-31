# KNOW YOUR HTTP status codes WELL

> The status-code element is a 3-digit integer code giving the result of the attempt to understand and satisfy the request.

Continue reading on [RFC7231#6](https://tools.ietf.org/html/rfc7231#section-6), [RFC2616#10](https://tools.ietf.org/html/rfc2616#section-10).

## Classes

> The first digit of the status-code defines the class of response. The last two digits do not have any categorization role. There are 5 values for the first digit:

Continue reading on [RFC7231#6](https://tools.ietf.org/html/rfc7231#section-6), [RFC2616#10](https://tools.ietf.org/html/rfc2616#section-10).

## Common

### 1xx

code | reason | description | spec
---: | :----- | :---------- | :---
`1xx` | **Informational** | "indicates an interim response for communicating connection status or request progress prior to completing the requested action and sending a final response." ~ [sure](http://www.urbandictionary.com/define.php?term=sure) | [RFC7231#6.2](https://tools.ietf.org/html/rfc7231#section-6.2),<br> [RFC2616#10.1](https://tools.ietf.org/html/rfc2616#section-10.1)
`100` | Continue | "indicates that the initial part of a request has been received and has not yet been rejected by the server." | [RFC7231#6.2.1](https://tools.ietf.org/html/rfc7231#section-6.2.1),<br> [RFC2616#10.1.1](https://tools.ietf.org/html/rfc2616#section-10.1.1)
`101` | Switching Protocols | "indicates that the server understands and is willing to comply with the client's request, via the Upgrade header field, for a change in the application protocol being used on this connection." | [RFC7231#6.2.2](https://tools.ietf.org/html/rfc7231#section-6.2.2),<br>[RFC2616#10.1.2](https://tools.ietf.org/html/rfc2616#section-10.1.2)

### 2xx

code | reason | description | spec
---: | :----- | :---------- | :---
`2xx` | **Successful** | "indicates that the client's request was successfully received, understood, and accepted." ~ [cool](https://twitter.com/DanaDanger/status/183316183494311936) | [RFC7231#6.3](https://tools.ietf.org/html/rfc7231#section-6.3),<br> [RFC2616#10.2](https://tools.ietf.org/html/rfc2616#section-10.2)
`200` | OK | "indicates that the request has succeeded." | [RFC7231#6.3.1](https://tools.ietf.org/html/rfc7231#section-6.3.1),<br>[RFC2616#10.2.1](https://tools.ietf.org/html/rfc2616#section-10.2.1)
`201` | Created | "indicates that the request has been fulfilled and has resulted in one or more new resources being created." | [RFC7231#6.3.2](https://tools.ietf.org/html/rfc7231#section-6.3.2),<br>[RFC2616#10.2.2](https://tools.ietf.org/html/rfc2616#section-10.2.2)
`202` | Accepted | "indicates that the request has been accepted for processing, but the processing has not been completed." | [RFC7231#6.3.3](https://tools.ietf.org/html/rfc7231#section-6.3.3),<br>[RFC2616#10.2.3](https://tools.ietf.org/html/rfc2616#section-10.2.3)
`203` | Non-Authoritative Information | "indicates that the request was successful but the enclosed payload has been modified from that of the origin server's 200 (OK) response by a transforming proxy." | [RFC7231#6.3.4](https://tools.ietf.org/html/rfc7231#section-6.3.4),<br>[RFC2616#10.2.4](https://tools.ietf.org/html/rfc2616#section-10.2.4)
`204` | No Content | "indicates that the server has successfully fulfilled the request and that there is no additional content to send in the response payload body." | [RFC7231#6.3.5](https://tools.ietf.org/html/rfc7231#section-6.3.5),<br>[RFC2616#10.2.5](https://tools.ietf.org/html/rfc2616#section-10.2.5)
`205` | Reset Content | "indicates that the server has fulfilled the request and desires that the user agent reset the "document view", which caused the request to be sent, to its original state as received from the origin server." | [RFC7231#6.3.6](https://tools.ietf.org/html/rfc7231#section-6.3.6),<br>[RFC2616#10.2.6](https://tools.ietf.org/html/rfc2616#section-10.2.6)
`206` | Partial Content | "indicates that the server is successfully fulfilling a range request for the target resource by transferring one or more parts of the selected representation that correspond to the satisfiable ranges found in the requests's Range header field." | [RFC7233#4.1](https://tools.ietf.org/html/rfc7233#section-4.1),<br>[RFC2616#10.2.7](https://tools.ietf.org/html/rfc2616#section-10.2.7)

### 3xx

code | reason | description | spec
---: | :----- | :---------- | :---
`3xx` | **Redirection** | "indicates that further action needs to be taken by the user agent in order to fulfill the request." ~ [ask that dude over there](https://twitter.com/DanaDanger/status/183316183494311936) | [RFC7231#6.4](https://tools.ietf.org/html/rfc7231#section-6.4),<br> [RFC2616#10.3](https://tools.ietf.org/html/rfc2616#section-10.3)
`300` | Multiple Choices | "indicates that the target resource has more than one representation, each with its own more specific identifier, and information about the alternatives is being provided so that the user (or user agent) can select a preferred representation by redirecting its request to one or more of those identifiers." | [RFC7231#6.4.1](https://tools.ietf.org/html/rfc7231#section-6.4.1),<br>[RFC2616#10.3.1](https://tools.ietf.org/html/rfc2616#section-10.3.1)
`301` | Moved Permanently | "indicates that the target resource has been assigned a new permanent URI and any future references to this resource ought to use one of the enclosed URIs." | [RFC7231#6.4.2](https://tools.ietf.org/html/rfc7231#section-6.4.2),<br>[RFC2616#10.3.2](https://tools.ietf.org/html/rfc2616#section-10.3.2)
`302` | Found | "indicates that the target resource resides temporarily under a different URI." | [RFC7231#6.4.3](https://tools.ietf.org/html/rfc7231#section-6.4.3),<br>[RFC2616#10.3.3](https://tools.ietf.org/html/rfc2616#section-10.3.3)
`303` | See Other | "indicates that the server is redirecting the user agent to a different resource, as indicated by a URI in the Location header field, that is intended to provide an indirect response to the original request." | [RFC7231#6.4.4](https://tools.ietf.org/html/rfc7231#section-6.4.4),<br>[RFC2616#10.3.4](https://tools.ietf.org/html/rfc2616#section-10.3.4)
`304` | Not Modified | "indicates that a conditional GET request has been received and would have resulted in a 200 (OK) response if it were not for the fact that the condition has evaluated to false." | [RFC7232#4.1](https://tools.ietf.org/html/rfc7232#section-4.1),<br>[RFC2616#10.3.5](https://tools.ietf.org/html/rfc2616#section-10.3.5)
`305` | Use Proxy | *deprecated* | [RFC7231#6.4.5](https://tools.ietf.org/html/rfc7231#section-6.4.5),<br>[RFC2616#10.3.6](https://tools.ietf.org/html/rfc2616#section-10.3.6)
`306` | | *unused* | [RFC7231#6.4.6](https://tools.ietf.org/html/rfc7231#section-6.4.6),<br>[RFC2616#10.3.7](https://tools.ietf.org/html/rfc2616#section-10.3.7)
`307` | Temporary Redirect | "indicates that the target resource resides temporarily under a different URI and the user agent MUST NOT change the request method if it performs an automatic redirection to that URI." | [RFC7231#6.4.7](https://tools.ietf.org/html/rfc7231#section-6.4.7),<br>[RFC2616#10.3.8](https://tools.ietf.org/html/rfc2616#section-10.3.8)

### 4xx

code | reason | description | spec
---: | :----- | :---------- | :---
`4xx` | **Client Error** | "indicates that the client seems to have erred." ~ [*you* fucked up](https://twitter.com/DanaDanger/status/183316183494311936) | [RFC7231#6.5](https://tools.ietf.org/html/rfc7231#section-6.5),<br> [RFC2616#10.4](https://tools.ietf.org/html/rfc2616#section-10.4)
`400` | Bad Request | "indicates that the server cannot or will not process the request because the received syntax is invalid, nonsensical, or exceeds some limitation on what the server is willing to process." | [RFC7231#6.5.1](https://tools.ietf.org/html/rfc7231#section-6.5.1),<br>[RFC2616#10.4.1](https://tools.ietf.org/html/rfc2616#section-10.4.1)
`401` | Unauthorized | "indicates that the request has not been applied because it lacks valid authentication credentials for the target resource." | [RFC7235#6.3.1](https://tools.ietf.org/html/rfc7235#section-3.1),<br>[RFC2616#10.4.2](https://tools.ietf.org/html/rfc2616#section-10.4.2)
`402` | Payment Required | *reserved* | [RFC7231#6.5.2](https://tools.ietf.org/html/rfc7231#section-6.5.2),<br>[RFC2616#10.4.3](https://tools.ietf.org/html/rfc2616#section-10.4.3)
`403` | Forbidden | "indicates that the server understood the request but refuses to authorize it." | [RFC7231#6.5.3](https://tools.ietf.org/html/rfc7231#section-6.5.3),<br>[RFC2616#10.4.4](https://tools.ietf.org/html/rfc2616#section-10.4.4)
`404` | Not Found | "indicates that the origin server did not find a current representation for the target resource or is not willing to disclose that one exists." | [RFC7231#6.5.4](https://tools.ietf.org/html/rfc7231#section-6.5.4),<br>[RFC2616#10.4.5](https://tools.ietf.org/html/rfc2616#section-10.4.5)
`405` | Method Not Allowed | "indicates that the method specified in the request-line is known by the origin server but not supported by the target resource." | [RFC7231#6.5.5](https://tools.ietf.org/html/rfc7231#section-6.5.5),<br>[RFC2616#10.4.6](https://tools.ietf.org/html/rfc2616#section-10.4.6)
`406` | Not Acceptable | "indicates that the target resource does not have a current representation that would be acceptable to the user agent, according to the proactive negotiation header fields received in the request, and the server is unwilling to supply a default representation." | [RFC7231#6.5.6](https://tools.ietf.org/html/rfc7231#section-6.5.6),<br>[RFC2616#10.4.7](https://tools.ietf.org/html/rfc2616#section-10.4.7)
`407` | Proxy Authentication Required | "is similar to 401 (Unauthorized), but indicates that the client needs to authenticate itself in order to use a proxy." | [RFC7235#3.2](https://tools.ietf.org/html/rfc7235#section-3.2),<br>[RFC2616#10.4.8](https://tools.ietf.org/html/rfc2616#section-10.4.8)
`408` | Request Timeout | "indicates that the server did not receive a complete request message within the time that it was prepared to wait." | [RFC7231#6.5.7](https://tools.ietf.org/html/rfc7231#section-6.5.7),<br>[RFC2616#10.4.9](https://tools.ietf.org/html/rfc2616#section-10.4.9)
`409` | Conflict | "indicates that the request could not be completed due to a conflict with the current state of the resource." | [RFC7231#6.5.8](https://tools.ietf.org/html/rfc7231#section-6.5.8),<br>[RFC2616#10.4.10](https://tools.ietf.org/html/rfc2616#section-10.4.10)
`410` | Gone | "indicates that access to the target resource is no longer available at the origin server and that this condition is likely to be permanent." | [RFC7231#6.5.9](https://tools.ietf.org/html/rfc7231#section-6.5.9),<br>[RFC2616#10.4.11](https://tools.ietf.org/html/rfc2616#section-10.4.11)
`411` | Length Required | "indicates that the server refuses to accept the request without a defined Content-Length." | [RFC7231#6.5.10](https://tools.ietf.org/html/rfc7231#section-6.5.10),<br>[RFC2616#10.4.12](https://tools.ietf.org/html/rfc2616#section-10.4.12)
`412` | Precondition Failed | "indicates that one or more preconditions given in the request header fields evaluated to false when tested on the server." | [RFC7232#4.2](https://tools.ietf.org/html/rfc7232#section-4.2),<br>[RFC2616#10.4.13](https://tools.ietf.org/html/rfc2616#section-10.4.13)
`413` | Payload Too Large | "indicates that the server is refusing to process a request because the request payload is larger than the server is willing or able to process." | [RFC7231#6.5.11](https://tools.ietf.org/html/rfc7231#section-6.5.11),<br>[RFC2616#10.4.14](https://tools.ietf.org/html/rfc2616#section-10.4.14)
`414` | URI Too Long | "indicates that the server is refusing to service the request because the request-target is longer than the server is willing to interpret." | [RFC7231#6.5.12](https://tools.ietf.org/html/rfc7231#section-6.5.12),<br>[RFC2616#10.4.15](https://tools.ietf.org/html/rfc2616#section-10.4.15)
`415` | Unsupported Media Type | "indicates that the origin server is refusing to service the request because the payload is in a format not supported by the target resource for this method." | [RFC7231#6.5.13](https://tools.ietf.org/html/rfc7231#section-6.5.13),<br>[RFC2616#10.4.16](https://tools.ietf.org/html/rfc2616#section-10.4.16)
`416` | Range Not Satisfiable | "indicates that none of the ranges in the request's Range header field overlap the current extent of the selected resource or that the set of ranges requested has been rejected due to invalid ranges or an excessive request of small or overlapping ranges." | [RFC7233#4.4](https://tools.ietf.org/html/rfc7233#section-4.4),<br>[RFC2616#10.4.17](https://tools.ietf.org/html/rfc2616#section-10.4.17)
`417` | Expectation Failed | "indicates that the expectation given in the request's Expect header field could not be met by at least one of the inbound servers." | [RFC7231#6.5.14](https://tools.ietf.org/html/rfc7231#section-6.5.14),<br>[RFC2616#10.4.18](https://tools.ietf.org/html/rfc2616#section-10.4.18)
`418` | I'm a teapot | "Any attempt to brew coffee with a teapot should result in the error code 418 I'm a teapot." | [RFC2324#2.3.1](https://tools.ietf.org/html/rfc2324#section-2.3.1)
`426` | Upgrade Required | "indicates that the server refuses to perform the request using the current protocol but might be willing to do so after the client upgrades to a different protocol." | [RFC7231#6.5.15](https://tools.ietf.org/html/rfc7231#section-6.5.15)

### 5xx

code | reason | description | spec
---: | :----- | :---------- | :---
`5xx` | **Server Error** | "indicates that the server is aware that it has erred or is incapable of performing the requested method." ~ [*we* fucked up](https://twitter.com/DanaDanger/status/183316183494311936) | [RFC7231#6.6](https://tools.ietf.org/html/rfc7231#section-6.6),<br> [RFC2616#10.5](https://tools.ietf.org/html/rfc2616#section-10.5)
`500` | Internal Server Error | "indicates that the server encountered an unexpected condition that prevented it from fulfilling the request." | [RFC7231#6.6.1](https://tools.ietf.org/html/rfc7231#section-6.6.1),<br>[RFC2616#10.5.2](https://tools.ietf.org/html/rfc2616#section-10.5.1)
`501` | Not Implemented | "indicates that the server does not support the functionality required to fulfill the request." | [RFC7231#6.6.2](https://tools.ietf.org/html/rfc7231#section-6.6.2),<br>[RFC2616#10.5.3](https://tools.ietf.org/html/rfc2616#section-10.5.2)
`502` | Bad Gateway | "indicates that the server, while acting as a gateway or proxy, received an invalid response from an inbound server it accessed while attempting to fulfill the request." | [RFC7231#6.6.3](https://tools.ietf.org/html/rfc7231#section-6.6.3),<br>[RFC2616#10.5.4](https://tools.ietf.org/html/rfc2616#section-10.5.3)
`503` | Service Unavailable | "indicates that the server is currently unable to handle the request due to a temporary overload or scheduled maintenance, which will likely be alleviated after some delay." | [RFC7231#6.6.4](https://tools.ietf.org/html/rfc7231#section-6.6.4),<br>[RFC2616#10.5.5](https://tools.ietf.org/html/rfc2616#section-10.5.4)
`504` | Gateway Time-out | "indicates that the server, while acting as a gateway or proxy, did not receive a timely response from an upstream server it needed to access in order to complete the request." | [RFC7231#6.6.5](https://tools.ietf.org/html/rfc7231#section-6.6.5),<br>[RFC2616#10.5.6](https://tools.ietf.org/html/rfc2616#section-10.5.5)
`505` | HTTP Version Not Supported | "indicates that the server does not support, or refuses to support, the protocol version that was used in the request message." | [RFC7231#6.6.6](https://tools.ietf.org/html/rfc7231#section-6.6.6),<br>[RFC2616#10.5.6](https://tools.ietf.org/html/rfc2616#section-10.5.6)

## Extensions

code | reason | description | spec
---: | :----- | :---------- | :---
`102` | Processing | "is an interim response used to inform the client that the server has accepted the complete request, but has not yet completed it." | [RFC5218#10.1](https://tools.ietf.org/html/rfc2518#section-10.1)
`207` | Multi-Status | "provides status for multiple independent operations." | [RFC5218#10.2](https://tools.ietf.org/html/rfc2518#section-10.2)
`226` | IM Used | "The server has fulfilled a GET request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance." | [RFC3229#10.4.1](https://tools.ietf.org/html/rfc3229#section-10.4.1)
`308` | Permanent Redirect | "The target resource has been assigned a new permanent URI and any future references to this resource outght to use one of the enclosed URIs. [...] This status code is similar to 301 Moved Permanently (Section 7.3.2 of rfc7231), except that it does not allow rewriting the request method from POST to GET." | [RFC7538](https://tools.ietf.org/html/rfc7538)
`422` | Unprocessable Entity | "means the server understands the content type of the request entity (hence a 415(Unsupported Media Type) status code is inappropriate), and the syntax of the request entity is correct (thus a 400 (Bad Request) status code is inappropriate) but was unable to process the contained instructions." | [RFC5218#10.3](https://tools.ietf.org/html/rfc2518#section-10.3)
`423` | Locked | "means the source or destination resource of a method is locked." | [RFC5218#10.4](https://tools.ietf.org/html/rfc2518#section-10.4)
`424` | Failed Dependency | "means that the method could not be performed on the resource because the requested action depended on another action and that action failed." | [RFC5218#10.5](https://tools.ietf.org/html/rfc2518#section-10.5)
`428` | Precondition Required | "indicates that the origin server requires the request to be conditional." | [RFC6585#3](https://tools.ietf.org/html/rfc6585#section-3)
`429` | Too Many Requests | "indicates that the user has sent too many requests in a given amount of time ("rate limiting")." | [RFC6585#4](https://tools.ietf.org/html/rfc6585#section-4)
`431` | Request Header Fields Too Large | "indicates that the server is unwilling to process the request because its header fields are too large." | [RFC6585#5](https://tools.ietf.org/html/rfc6585#section-5)
`451` | Unavailable For Legal Reasons | "This status code indicates that the server is denying access to the resource in response to a legal demand." | [draft-ietf-httpbis-legally-restricted-status](https://tools.ietf.org/html/draft-ietf-httpbis-legally-restricted-status)
`506` | Variant Also Negotiates | "indicates that the server has an internal configuration error: the chosen variant resource is configured to engage in transparent content negotiation itself, and is therefore not a proper end point in the negotiation process." | [RFC2295#8.1](https://tools.ietf.org/html/rfc2295#section-8.1)
`507` | Insufficient Storage | "means the method could not be performed on the resource because the server is unable to store the representation needed to successfully complete the request." | [RFC5218#10.6](https://tools.ietf.org/html/rfc2518#section-10.6)
`511` | Network Authentication Required | "indicates that the client needs to authenticate to gain network access." | [RFC6585#6](https://tools.ietf.org/html/rfc6585#section-6)
`7xx` | **Developer Error** | [err](http://www.urbandictionary.com/define.php?term=err) | [7xx-rfc](http://documentup.com/joho/7XX-rfc)

A chunk of extension codes can be found in [RFC2326 Real Time Streaming Protocol (RTSP)](https://tools.ietf.org/html/rfc2326#).

For a full up-to-date list, continue reading on [HTTP Status Code Registry](https://www.iana.org/assignments/http-status-codes/http-status-codes.xml), [Wikipedia](http://en.wikipedia.org/wiki/List_of_HTTP_status_codes).

## Sources

* [RFC7231 Hypertext Transfer Protocol (HTTP/1.1): Semantics and Content](https://tools.ietf.org/html/rfc7231#)
* [RFC7232 Hypertext Transfer Protocol (HTTP/1.1): Conditional Requests](https://tools.ietf.org/html/rfc7232#)
* [RFC7233 Hypertext Transfer Protocol (HTTP/1.1): Range Requests](https://tools.ietf.org/html/rfc7233#)
* [RFC2616 Hypertext Transfer Protocol -- HTTP/1.1](https://tools.ietf.org/html/rfc2616#)
* [RFC2518 HTTP Extensions for Distributed Authoring -- WEBDAV](https://tools.ietf.org/html/rfc2518)
* [RFC6585 Additional HTTP Status Codes](https://tools.ietf.org/html/rfc6585#)
* [Dana Contreras](https://twitter.com/DanaDanger)
* [John Barton](http://whoisjohnbarton.com)
* [Urban Dictionary](http://www.urbandictionary.com)
* Yours truly
