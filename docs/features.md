
# Embedthis Ioto&trade; Features

* HTTP/1.1 server.
* HTTP/1.1 client.
* MQTT/3.1.1 client.
* JSON/5 parser and query engine.
* Embedded database (like local DynamoDB)
* Transparent DynamoDB database cloud synchronization.
* AWS IoT Integration with IoT Core, Shadows, Events and Rules.
* AWS service integration with S3, Lambda, Kinesis and CloudWatch.
* Transport Layer Security (TLS/SSL) with ALPN support.
* Safe, secure runtime core.
* Easy provisioning.
* OTA upgrading.
* Complete documentation.
* Extensive Samples.
* Full Source code.


## Feature Overview

### AWS IoT Integration

* AWS Iot Ready &mdash; Bring your own cloud.
* Capture device data and export to AWS.
* Send control plane data to AWS IoT shadows.
* Transparent database synchronization with AWS DynamoDB.
* Upload data and files to AWS S3 data lake.
* Store device logs, metrics in AWS CloudWatch.
* Generate and rotate IAM temporary access credentials.
* Call any AWS API via AWS SDK or more compact AWS REST SigV4 APIs.
* Keep an audit trail in CloudTrail.


### MQTT Client

* MQTT 3.1.1 support.
* TLS encryption with ALPN over port 443.
* Supports connect, publish, subscribe, ping and disconnect messages.
* Message quality of service for reliable delivery.
* Retained messages.
* High message throughput with exceptionally low overhead.
* Wait for delivery or acknowledgement options.
* Auto reconnect.
* Parallelism via fiber coroutines.


## DynamoDB Local Database

* High performance in-memory NoSQL document database.
* Red/black binary search indexes.
* JSON documents with in-memory query API.
* Controllable persistency locally and to the cloud on a per-table basis.
* Transparent bi-directional data synchronization with DynamoDB in the cloud. (like Global Tables).
* Unified data schema between device and cloud databases.
* Based on [DynamoDB OneTable](https://doc.onetable.io/) APIs and Schemas.


### HTTP Server

* HTTP/1.0, HTTP/1.1 support.
* TLS/SSL 1.3 and Alpn support.
* URL actions that bind URLs to C functions.
* Configurable request routes and redirections.
* Supports bi-directional transfer chunk encoding to preserve keep-alive.
* Cookie and session management.
* Authentication and user management.
* Fully streaming API for dynamic input and output.
* Request tracing for HTTP request and response headers.
* Sand-box resource limits.
* Runtime configurable via JSON config files.
* HTML helpers for encoding, decoding and escaping content.
* JSON parser and query engine.
* Single-threaded, fiber coroutine event-based runtime.

### HTTP Client

* HTTP/1.0, HTTP.1.1 client.
* Fully streaming API for dynamic input and output.
* Convenience JSON API for interacting with REST services.
* Single-threaded, fiber coroutine event-based runtime.
* TLS/SSL 1.3 with certificate verification controls.

### JSON Parser and Engine

* JSON and JSON/5 support.
* JSON parser and renderer.
* JSON query engine.


### Safe Runtime

* Fiber coroutines for non-blocking procedural programming model.
* Global memory error handler.
* Networking and TLS support.
* Logging framework —— filter by source and/or message type.
* Safe strings, lists, hashing and buffer management.
* Portable, cross-platform O/S abstraction.

### Performance

* Tiny memory footprint. All-up is less than 200K code.
* Single-threaded fiber coroutines provide an elegant, non-blocking, procedural programming paradigm without resorting to ugly callbacks or complex threads.
* Web server request throughput (&gt; 9,300 requests per second on Raspberry PI 4).

### Security

* Sandbox limits.
* Safe portable runtime to protect against memory leaks and buffer overflows.
* Transport Layer Security (TLS/SSL).


### Developer Integration

* Stand-alone Ioto program
* Embeddable Ioto library
* Easy, intuitive programming model
* Extensive C API


### Documentation

* Full C API Documentation
* Cookbook of samples (cut and paste to get going)
* Tutorials


### Platform Support

* Linux (2.6+)
* Windows (7+)
* MAC OS X (10.7+)
* FreeBSD (10.X+)
* FreeRTOS (pending)
* RIOT (pending)


### Embedding Support

* Supports ARM, MIPS, X86, X64, PPC, SH, Sparc processors
* Full cross-compilation support. Use Windows, Linux or Mac as build system
* Fine-grained control for conditional build and compilation


### Standards

* [MQTT 3.1.1](https://docs.oasis-open.org/mqtt/mqtt/v3.1.1/os/mqtt-v3.1.1-os.html)
* [RFC 2616 HTTP/1.1](https://www.ietf.org/rfc/rfc2616.txt)
* [TLS 1.3](https://datatracker.ietf.org/doc/html/rfc8446)
* [RFC 1867 Multipart-mime upload](https://datatracker.ietf.org/doc/html/rfc1867)
* [OneTable Database Schema Specification](https://github.com/sensedeep/dynamodb-onetable/blob/main/doc/schema-1.1.0.md)
