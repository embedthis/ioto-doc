# Overview

The Ioto web server is a fast, compact web server designed for management web applications and serving device data.

Ioto can be configured to support the web server as an additional component or Ioto can be build to run only the web server and thus be a first-class replacement for any embedded web server. Embedthis has been developing embedded web servers for many years and the Ioto web server contains all that we have learned over this period.

The Ioto web server is unlike other enterprise or embedded web servers. It does not attempt to offer ALL HTTP features and functions. Rather, it aims to implement only the required core of HTTP/1.1 and thus deliver a tiny, fast, secure embedded web server that is exceptionally good at serving single page web applications and device data APIs.

The Ioto web server supports a cohesive feature set including: HTTP/1, HTTP/1.1, TLS/SSL, Action routines, user authentication, sessions, cookie management, request logging, and security sandboxing. Yet Ioto remains very small from 80K code and will run in as little as 200K RAM. It will serve over 3,000 requests/sec on a modest Raspberry PI.</p>

<img class="fit" src="../../../images/web-server.png" alt="web server" />

## Goals

Our target use-cases for the Ioto web server were:

* Support device management applications that use [Single-Page Application](https://en.wikipedia.org/wiki/Single-page_application) techniques.
* Support device APIs using [REST APIs](https://www.redhat.com/en/topics/api/what-is-a-rest-api)

Our goals are:

* Be as compact as possible
* Enhance security by minimizing the code and feature footprint
* Provide a simple, intuitive API for web applications

## Features

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

### Core Components

The Ioto web server components are:

|Component|Description|
|-|-|
| Safe Portable Runtime | Cross-platform, multi-threaded portable runtime. Includes services for memory allocation, dynamic module loading, safe string handling, lists, hashing, command execution, socket communications, threads, thread synchronization, thread-pool, events, timers, debug trace and logging.|
| Transport Security Layer (TLS) | TLS protocol stack. This is a virtual interface that can selectively support a variety of TLS providers including: the MbedTLS and OpenSSL stacks. |
| HTTP/1.1 | HTTP/1.1 HTTP protocol with keep-alive support. |
| Request Router | Request routing with user authentication and access control. |
| Redirections | Configurable redirections to TLS or new URL targets. |
| Dynamic Actions | Render dynamic content with Actions that bind URLs to C functions. |
| Static File Handler | The static File handler serves static content such as HTML pages, images and PDF files. |
| Upload Filter | The upload filter supports multipart mime file upload. |
| Authentication and User Management | Configurable user and password management. Control access to specific parts of the site. |
| Cookie and Session Management | Automatic session creation and cookie management. |
| Transfer Encoding Filter | The Chunk applies Transfer Chunk Encoding to outgoing data. Chunk encoding enables the HTTP connection to be reused for subsequent requests without having to establish a new TCP/IP connection. This can significantly improve network and application performance. |
| Logging | Configurable request and response tracing including HTTP headers. |


## Ioto Configuration

The web server uses a **web.json5** JSON/5 configuration file that specifies what ports and addresses to listen on, where to find the web pages, and how to route requests. This file is read when Ioto starts.

The Ioto web server is enabled via the config.json5 file. Set the **services.web" property to true.

```javascript
{
    services: {
        web: true
    }
}
```

The web server configuration is controlled via the **web.json5** file. Here is a simple example web configuration file:

```javascript
{
    web: {
        documents: "./site",
        listen: [
            "http://:80",
            "https://:443",
        ],
        tls: {
            certificate: "server.crt",
            key: "server.key",
        },
        redirect: [
            { status: 302, to: "https://" }
        ],
        routes: [
            { match: '/' },
            { match: '/index.html' },
            { match: '/public/' },
            { match: '/auth/' }
            { match: '/admin/', can: 'edit' },
            { redirect: '/auth/login', can: 'view' },
        ],
    }
}
```

The **documents** directory specifies where your web pages are located.  The **listen** property nominates the IP:PORT endpoints on which you wish to listen, and the **tls** property specifies your TLS private key file and certificate file.

The **redirect** property ensures all HTTP traffic is redirected over TLS. And finally, the **routes** property defines a set of processing rules for incoming requests. These rules can specify required roles (capabilities) for a user to be authenticated to access the URL.

See [Web Server Configuration](configuration.md) for details.

### HTTP Core

The Ioto HTTP core is responsible for parsing the incoming HTTP request. A HTTP request is comprised of a request line followed by one or more HTTP headers that provide additional context.

The first line of the HTTP request specifies the HTTP operation method to use, the URI to access and the variant of the HTTP protocol to use. This typically looks like:

```http
<b>GET</b> /index.html HTTP/1.1
```

This example is asking for the /index.html document via the GET method using the HTTP/1.1 protocol.

After the first line follow the headers. These are keyword, value pairs that control how the request will be processed. Typically there are 5-15 headers in most requests.

```
HeaderName: value
```

Some typical headers are:

|Header|Description|
|-|-|
| Authorization | Authorization details including user name, realm, password digest and other authorization parameters to implement Basic and Digest authentication. |
| Connection | Describe how the TCP/IP connection should be managed when the request completes. |
| Content-Length | Length of any addition data with a POST request. |
| Content-Type | Mime types the client prefers to accept in response to this request. |
| Cookie | Cookie associated with the URI in the clients cookie cache. |
| Host | Name to the target host to serve the request. This specifies the host name when using virtual hosting. |
| If-Modified-Since | Only return the content if it has been modified since the date specified. Clients who have cached copies of a document (or graphics) use this header to allow the server to skip copying the document if it has not changed. |
| Keep-Alive | Request the server to keep the connection alive so that subsequent requests can reuse the connection. |

For example:

```
Connection: keep-alive
```

The HTTP core stores the parsed headers and their values for access by the request handlers. When all the headers have been processed Ioto proceeds to do request routing. This will occur before any associated POST data has been read from the client. POST data may be form data submitted by the client or it may be a file upload using the PUT method.

## Request Routing

Ioto has a simple request routing engine that processes client HTTP requests and validates access using a role-based access control mechanism. The routing engine is configured with a set of routes from the Ioto configuration file. When a request is received, it examines the routes in sequence and selects the first matching route to handle the request.

Handlers are responsible for receiving the request and creating a response. They generate response content based on the HTTP request URI, headers, any associated body data, and potential application session state. The output data flows through the output pipeline before transmission over the network to the client.

Ioto supports two request handlers:

* Static file handler
* Dynamic action handler

The static file handler serves document files from the configured **documents** directory.

The dynamic action handler responds to requests by invoking an associated C function.

## Dynamic Web Content

Dynamic content is generated via the Action handler that binds specific URLs to corresponding C functions. The action handler is ideal for situations when you want to respond with device data or generate a dynamic response.

Previously, earlier web servers used the CGI and web frameworks like PHP or ESP to generate dynamic content. But these solutions are a poor fit for modern management applications that use SPA techniques. They also consume considerable CPU and memory resources and are not the best approach for embedded devices. Further, they expose large attack surfaces due to excess features that are not essential.

Ioto uses a more efficient direct binding from URLs to C functions. This direct binding of HTTP URL requests to C code is extremely efficient and since most device data is manage by C API &mdash; this provides the most direct path to accessing device data.

When coupled with a flexible streaming, non-blocking API, and a JSON parser and query engine, the result is a dramatically simpler and more efficient device management platform.


## Fiber Coroutines

Ioto does not provide a web framework — nor do we believe this is the best approach for remote device management applications. Rather, we provide compellingly simple, streaming primitives to serve data for REST APIs and for single page applications.

To do this, Ioto adopts a unique approach of using fiber coroutines for parallelism and streaming. This yields an exceptionally fast web server that will serve over 3K requests per second on a modest Raspberry PI 4 and yet runs using only 80K of code.

The main benefit of fibers, is a non-blocking straight line procedural programming style.

A fiber coroutine is code that runs with its own stack and cooperatively yields to other fibers when it needs to wait. You can think of a fiber as a thread, but only one fiber runs at a time so there is no thread sync to worry about. For Go programmers, fibers are like Go routines. For JavaScript developers, fibers are similar to async/await.

You can read more in [Fiber Coroutines](../dev/fiber.md), but for now, consider this sample Action routine:

```c
static int testAction(Web *web)
{
    char  buf[ME_BUFSIZE];
    ssize nbytes;
    int   i;

    //  Read POST body data. This will block, but other fibers can still run.

    while ((nbytes = webRead(web, buf, sizeof(buf))) > 0) {
        printf("Got body data %.*s\n", (int) nbytes, buf);
    }

    //  Streaming a response without buffering and with minimal memory footprint
    for (i = 0; i < 10000000; i++) {
        //  This will block as required, but other fibers can still run.
        webWriteFmt(web, "Hello World, now is: %s\n", rFormatLocalTime(0, 0));
    }
    //  Finalize
    webWrite(web, NULL, 0);
    return 0;
}
```

## JSON Parser and Query Engine

Ioto includes an integrated JSON parser, query engine and persistency to enable it to respond to HTTP requests with JSON payloads and remit responses in JSON.

## Ioto Kickstart

Ioto includes a fully working sample single page application called Kickstart. This is a VueJS application that serves a sample device application from Ioto.
