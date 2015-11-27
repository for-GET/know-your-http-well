# KNOW YOUR HTTP encodings WELL

## Encodings

### Content

`Content-Encoding` "indicates what content codings have been applied to the representation, beyond those inherent in the media type, and thus what decoding mechanisms have to be applied in order to obtain data in the media type referenced by the Content-Type header field."

Continue reading on [RFC7231#3.1.2.2](http://tools.ietf.org/html/rfc7231#section-3.1.2.2),  [RFC2616#14.11](http://tools.ietf.org/html/rfc2616#section-14.11)

encoding | description | spec
-------: | :---------- | :---
compress | "is an adaptive Lempel-Ziv-Welch (LZW) coding that is commonly produced by the UNIX file compression program 'compress'." | [RFC7230#4.2.1](http://tools.ietf.org/html/rfc7230#section-4.2.1), [RFC2616#3.5](http://tools.ietf.org/html/rfc2616#section-3.5)
deflate | "is a 'zlib' data format [RFC1950] containing a 'deflate' compressed data stream that uses a combination of the Lempel-Ziv (LZ77) compression algorithm and Huffman coding." | [RFC7230#4.2.2](http://tools.ietf.org/html/rfc7230#section-4.2.2), [RFC2616#3.5](http://tools.ietf.org/html/rfc2616#section-3.5)
gzip | "is an LZ77 coding with a 32-bit Cyclic Redundancy Check (CRC) that is commonly produced by the gzip file compression program." | [RFC7230#4.2.3](http://tools.ietf.org/html/rfc7230#section-4.2.3), [RFC2616#3.5](http://tools.ietf.org/html/rfc2616#section-3.5)
identity | "is used as a synonym for 'no encoding' in order to communicate when no encoding is preferred." | [RFC7231#5.3.4](http://tools.ietf.org/html/rfc7231#section-5.3.4), [RFC2616#14.3](http://tools.ietf.org/html/rfc2616#section-14.3)
x-compress | *deprecated* | [RFC7230#4.2.1](http://tools.ietf.org/html/rfc7230#section-4.2.1), [RFC2616#3.5](http://tools.ietf.org/html/rfc2616#section-3.5)
x-gzip | *deprecated* | [RFC7230#4.2.3](http://tools.ietf.org/html/rfc7230#section-4.2.3), [RFC2616#3.5](http://tools.ietf.org/html/rfc2616#section-3.5)

### Transfer

`Transfer-Encoding` "lists the transfer coding names corresponding to the sequence of transfer codings that have been (or will be) applied to the payload body in order to form the message body."

Continue reading on [RFC7230#3.3.1](http://tools.ietf.org/html/rfc7230#section-3.3.1), [RFC2616#14.41](http://tools.ietf.org/html/rfc2616#section-14.41)

encoding | description | spec
-------: | :---------- | :---
chunked | "wraps the payload body in order to transfer it as a series of chunks, each with its own size indicator, followed by an OPTIONAL trailer containing header fields." | [RFC7230#4.1](http://tools.ietf.org/html/rfc7230#section-4.1), [RFC2616#3.6.1](http://tools.ietf.org/html/rfc2616#section-3.6.1)
compress | "is an adaptive Lempel-Ziv-Welch (LZW) coding that is commonly produced by the UNIX file compression program 'compress'." | [RFC7230#4.2.1](http://tools.ietf.org/html/rfc7230#section-4.2.1), [RFC2616#3.5](http://tools.ietf.org/html/rfc2616#section-3.5)
deflate | "is a 'zlib' data format [RFC1950] containing a 'deflate' compressed data stream that uses a combination of the Lempel-Ziv (LZ77) compression algorithm and Huffman coding." | [RFC7230#4.2.2](http://tools.ietf.org/html/rfc7230#section-4.2.2), [RFC2616#3.5](http://tools.ietf.org/html/rfc2616#section-3.5)
gzip | "is an LZ77 coding with a 32-bit Cyclic Redundancy Check (CRC) that is commonly produced by the gzip file compression program." | [RFC7230#4.2.3](http://tools.ietf.org/html/rfc7230#section-4.2.3), [RFC2616#3.5](http://tools.ietf.org/html/rfc2616#section-3.5)
identity | "is used as a synonym for 'no encoding' in order to communicate when no encoding is preferred." | [RFC7231#5.3.4](http://tools.ietf.org/html/rfc7231#section-5.3.4), [RFC2616#14.3](http://tools.ietf.org/html/rfc2616#section-14.3)
x-compress | *deprecated* | [RFC7230#4.2.1](http://tools.ietf.org/html/rfc7230#section-4.2.1), [RFC2616#3.5](http://tools.ietf.org/html/rfc2616#section-3.5)
x-gzip | *deprecated* | [RFC7230#4.2.3](http://tools.ietf.org/html/rfc7230#section-4.2.3), [RFC2616#3.5](http://tools.ietf.org/html/rfc2616#section-3.5)
