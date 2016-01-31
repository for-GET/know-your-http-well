# KNOW YOUR HTTP specs WELL

## Core

concept/identifier | description | spec
------------------ | :---------- | :---
`HTTP Authentication` | "This document defines HTTP/1.1 access control and authentication." | [RFC7235](https://tools.ietf.org/html/rfc7235)
`HTTP Caching` | "HTTP is typically used for distributed information systems, where performance can be improved by the use of response caches." | [RFC7234](https://tools.ietf.org/html/rfc7234)
`HTTP Conditional Requests` | "Conditional requests are HTTP requests that include one or more header fields indicating a precondition to be tested before applying the method semantics to the target resource." | [RFC7232](https://tools.ietf.org/html/rfc7232)
`HTTP Message Syntax and Routing` | "The Hypertext Transfer Protocol (HTTP) is an application-level request/response protocol that uses extensible semantics and self-descriptive message payloads for flexible interaction with network-based hypertext information systems." | [RFC7230](https://tools.ietf.org/html/rfc7230)
`HTTP Range Requests` | "Hypertext Transfer Protocol (HTTP) clients often encounter interrupted data transfers as a result of canceled requests or dropped connections." | [RFC7233](https://tools.ietf.org/html/rfc7233)
`HTTPbis security properties` | "Recent IESG practice dictates that IETF protocols must specify mandatory-to-implement (MTI) security mechanisms, so that all conformant implementations share a common baseline. This document examines all widely deployed HTTP security technologies, and analyzes the trade-offs of each." | [draft-ietf-httpbis-security-properties](https://tools.ietf.org/html/draft-ietf-httpbis-security-properties)
`HTTP Semantics and Content` | "Each Hypertext Transfer Protocol (HTTP) message is either a request or a response." | [RFC7231](https://tools.ietf.org/html/rfc7231)
OBSOLETE ~~`HTTP`~ | "The Hypertext Transfer Protocol (HTTP) is an application-level protocol for distributed, collaborative, hypermedia information systems." | [RFC2616](https://tools.ietf.org/html/rfc2616)



## Extensions

concept/identifier | description | spec
------------------ | :---------- | :---
`Content Security Policy` | "This document defines a policy language used to declare a set of content restrictions for a web resource, and a mechanism for transmitting the policy from a server to a client where the policy is enforced." | [CSP](https://www.w3.org/TR/CSP/)
`Cookie` | "This document specifies a way to create a stateful session with Hypertext Transfer Protocol (HTTP) requests and responses." | [RFC6265](https://tools.ietf.org/html/rfc6265), [RFC2965](https://tools.ietf.org/html/rfc2965), [RFC2109](https://tools.ietf.org/html/rfc2109)
`Cross-Origin Resource Sharing` | "This document defines a mechanism to enable client-side cross-origin requests." | [cors](https://www.w3.org/TR/cors/)
`HTTP Cache-Control Extensions for Stale Content` | "This document defines two independent HTTP Cache-Control extensions that allow control over the use of stale responses by caches." | [RFC5861](https://tools.ietf.org/html/rfc5861)
`HTTP Signatures` | "This document describes a way to add origin authentication, message integrity, and replay resistance to HTTP requests.  It is intended to be used over the HTTPS protocol." | [draft-cavage-http-signatures](https://tools.ietf.org/html/draft-cavage-http-signatures)
`HTTP client hints` | "Client Hints can be used as input to proactive content negotiation; just as the Accept header allowed clients to indicate what formats they prefer, Client Hints allow clients to indicate a list of device and agent specific preferences." | [draft-grigorik-http-client-hints](https://tools.ietf.org/html/draft-grigorik-http-client-hints)
`LCI` | "This memo defines two new link types that indicate relationships between resources in terms of cache invalidation, along with a HTTP cache-control extension that takes advantage of those relationships to use them to extend response freshness.  Collectively, this is referred to as Linked Cache Invalidation (LCI)." | [draft-nottingham-linked-cache-inv](https://tools.ietf.org/html/draft-nottingham-linked-cache-inv)
`The Alternates Header Field` | "This document proposes a header, Alternates, which is intended to provide a common method for Internet-based application protocols to indicate that a particular resource exists in multiple forms." | [draft-ietf-http-alternates](https://tools.ietf.org/html/draft-ietf-http-alternates)
`The Key HTTP Response Header Field` | "The 'Key' header field for HTTP responses allows an origin server to describe the cache key for a negotiated response: a short algorithm that can be used upon later requests to determine if the same response is reusable." | [draft-fielding-http-key](https://tools.ietf.org/html/draft-fielding-http-key)
`Transparent Content Negotiation in HTTP` | "Transparent content negotiation is an extensible negotiation mechanism, layered on top of HTTP, for automatically selecting the best version when the URL is accessed." | [RFC2295](https://tools.ietf.org/html/rfc2295)


## URI

concept/identifier | description | spec
------------------ | :---------- | :---
`Defining Well-Known Uniform Resource Identifiers (URIs)` | "This memo defines a path prefix for 'well-known locations', '/.well-known/', in selected Uniform Resource Identifier (URI) schemes." | [RFC5785](https://tools.ietf.org/html/rfc5785)
`URI template` | "A URI Template is a compact sequence of characters for describing a range of Uniform Resource Identifiers through variable expansion." | [RFC6570](https://tools.ietf.org/html/rfc6570)
`URI` | "A Uniform Resource Identifier (URI) provides a simple and extensible means for identifying a resource." | [RFC3986](https://tools.ietf.org/html/rfc3986)


## Examples

concept/identifier | description | spec
------------------ | :---------- | :---
`A Uniform Resource Name (URN) Namespace for Examples` | "This document defines a Uniform Resource Name (URN) namespace identifier enabling the generation of URNs that are appropriate for use in documentation and in URN-related testing and experimentation." | [RFC6963](https://tools.ietf.org/html/rfc6963)
`Example Media Types for Use in Documentation` | "This document is registration for the 'example' media type and 'example' subtypes within the standards tree." | [RFC4735](https://tools.ietf.org/html/rfc4735)
`IPv4 Address Blocks Reserved for Documentation` | "This document describes three IPv4 address blocks that are provided for use in documentation. " | [RFC5737](https://tools.ietf.org/search/rfc5737)
`Reserved Top Level DNS Names` | "To reduce the likelihood of conflict and confusion, a few top level domain names are reserved for use in private testing, as examples in documentation, and the like. In addition, a few second level domain names reserved for use as examples are documented." | [RFC2606](https://tools.ietf.org/html/rfc2606)


## Standards for specifications

concept/identifier | description | spec
------------------ | :---------- | :---
`Augmented BNF for Syntax Specifications: ABNF`| "The current specification documents ABNF. It balances compactness and simplicity with reasonable representational power." | [RFC5234](https://tools.ietf.org/html/rfc5234)
`Cosmogol: a language to describe finite state machines` | "There is no standard way of describing such a machine, the most common way being an ASCII-art diagram. This document specifies another solution: a domain-specific language for finite state machines." | [draft-bortzmeyer-language-state-machines](https://tools.ietf.org/html/draft-bortzmeyer-language-state-machines)
