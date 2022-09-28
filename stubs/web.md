# Web Server API

The web server library is a fast, compact web server designed for management web applications and serving device data.

The web server does not attempt to offer ALL HTTP features and functions. Rather, it aims to implement only the required core of HTTP/1.1 and thus deliver a tiny, fast, secure embedded web server that is exceptionally good at serving single page web applications and device data.

The web server supports: HTTP/1.0, HTTP/1.1, TLS/SSL, Action routines, user authentication, sessions, cookie management, request logging, and security sandboxing. The web server uses 80K of code and will run in 150K RAM (without TLS).

The core web services include:

* HTTP/1.1 protocol engine
* TLS 1.3 support
* Non-blocking socket communications
* Multiple listen endpoints
* Flexible configuration via a web.json5 file
* Request routing with access control
* Binding URLs to C functions for dynamic content rendering
* Serve static files
* Configurable redirections
* Transfer encoding filter
* Session and cookie management
* Authentication and User management
* File upload
* JSON parser and query engine
* Sandbox limits and timeouts
* Paralelism via fiber coroutines

DOC_CONTENT
