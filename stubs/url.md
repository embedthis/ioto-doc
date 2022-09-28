# URL API

The URL library is a fast, minimal embedded HTTP Client. It is ideal for issuing REST HTTP requests and supports parallel execution via fiber coroutines.

The URL library is a streaming client and supports full-duplex for request body and response content. It transparently manages transfer chunk encoding for requests and responses.

The library has configurable request/response timeouts and retries.

Features:

* Supports transfer-chunk encoding for dynamic request bodies.
* Control over headers
* Full-duplex streaming support for minimal memory usage.
* Full support for TLS including certificate verification.
* Configurable retries and timeouts.
* Parallelism via fiber coroutines.

The library does not support basic or digest authentication as there are unresolved security issues with these mechanisms.


DOC_CONTENT
