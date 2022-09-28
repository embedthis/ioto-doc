# Dynamic Web Content

The Ioto embedded web server can serve static files and can also render dynamically generated responses.

Dynamic content is generated via the Action handler that binds specific URLs to corresponding C functions. The action handler is ideal for situations when you want to generate a dynamic response using C code.

Previously, earlier web servers used the [CGI](https://www.embedthis.com/blog/posts/stop-using-cgi/stop-using-cgi.html) and web frameworks like [PHP](https://www.php.net/) or [ESP](https://www.embedthis.com/esp/) to generate dynamic content. But these solutions are a poor fit for modern management applications that use [SPA](https://en.wikipedia.org/wiki/Single-page_application) techniques. They also consume considerable CPU and memory resources and are not the best approach for embedded devices. Further, they expose large attack surfaces due to excess features that are not essential.

Ioto uses a more efficient direct binding from URLs to C functions coupled with a flexible streaming, non-blocking API. When coupled with a JSON parser and query engine, a dramatically simpler and more efficient solution emerges.

## Registering Actions

Actions routines are registered by calling [webAddAction](../ref/api/web.md#group___web_1gaad50b8cbf88372dc6cdd7d08050b8de4). This API takes a function to run and a corresponding URI prefix.

```C
static void hello(Web *web)
{
    webWrite(web, "Hello World\n", -1);

    //  Signal end of output
    webWrite(web, NULL, 0);
}

//  Register the action
webAddAction(host, "/action/hello", hello);
```

The **webAddAction** call registers the hello C function to be invoked whenever the request URL begins with the string "/action/hello". By using a string prefix, you can have a single action match an entire set of URLs that being with a given URL prefix.

An action routine is responsible for rendering a complete response to the client. If your action routine needs to wait for I/O or block while reading required data from another service, read [Blocking](#blocking) below.

## Streaming Data

Ioto supports full-duplex streaming.

Clients can stream body data to the web server and the server can stream response data back to the client. Ioto supports full-duplex streaming via non-blocking, fiber enabled APIs.

The **webRead** routine is used to read body data from the client. The webRead call has the following signature:

    ssize webRead(Web *web, char *buf, ssize bufsize);

The webRead function will read data from the client and return the number of bytes read. The routine will block if required until data is available. Other fibers continue to run while blocked. The function returns zero when the end of the body data is received.

The **webWrite** routine is used to write data back to the client. The webWrite call uses the following signature:

    ssize webWrite (Web *web, cvoid *buf, ssize bufsize)

The **bufsize** argument is set to the length of data to write. It can be set to -1 if the data to write is a null terminated string and the length of the string will be determined by strlen.

The **web** parameter is passed to the action routine as its only argument.

A response to the client is concluded by calling [WebWrite](../ref/api/web.md#group___web_1ga9bb3b0c8b44804e8cc329ca946c39aaa) with a NULL buffer or data length of zero. This signifies the end of the response.

Ioto uses [Transfer-Encoding](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Transfer-Encoding) by default for dynamically written data, so you don't need to define a response [Content-Length](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Transfer-Encoding). Each write will be wrapped in a transfer chunk.

## Web Forms

Web forms requests are a special case. They use POST requests with url encoded body data. Ioto will read and buffer form data and parse into form variables before invoking the appropriate Action routine. The action can then retrieve via the **webGetVar** API.

## Writing Headers

Ioto will automatically write the HTTP response headers when you first call **webWrite** in your action routine. However, you can call [webWriteHeaders](../ref/api/web.md#group___web_1ga24c1f17628b8b1c854a378e0b47bcb89) to customize the HTTP headers. For example:

```c
static void hello(Web *web)
{
    cchar   *msg;

    msg = "Hello World\n";

    webWriteHeaders(web, "Content-Length: %d\r\n", slen(msg));

    webWrite(web, msg, -1);
    webWrite(web, NULL, 0);
}
```

The **webWriteHeaders** routine accepts one or more headers, each of which is terminated by "\r\n". It is essential that you use "\r\n" and not just a single new line character after each header.

Ioto will blend your supplied headers with other essential headers such as Date, Connection, Content-Length, Content-Type and Transfer-Encoding.

You can only issue one call to **webWriteHeaders, subsequent calls for a given request will be ignored.

## Status Code

HTTP responses always contain a [HTTP status code](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status). This is set to 200 for successful requests, 301/302 for redirections, 4XX for client errors, etc.

By default, Ioto responds with a 200 successful HTTP status. You can set the status code via the [webSetStatus](../ref/api/web.md#group___web_1ga12ab5a43c00f2a54c787d653af51430a) or
via **webWriteResponse**.

```c
static void failure(Web *web)
{
    cchar   *msg;

    webSetStatus(web, 404);
    webWrite(web, "Cannot find requested resource\n", -1);
    webWrite(web, NULL, 0);
}
```

## Reading Body Data

Ioto supports streaming request data via the [webRead](../ref/api/web.md#group___web_1gab6843af41aa5abdaec4062d4a5f46a8b) API. For example:

```c
static void readStream(Web *web)
{
    char  buf[ME_BUFSIZE];
    ssize nbytes;

    while ((nbytes = webRead(web, buf, sizeof(buf))) > 0) {
        printf("Got %ld bytes\n", nbyte);
        //  Process buffer here
    }
    return webWriteResponse(web, 200, "Request processed");
}
```

The **webRead** routine will read body data and return the number of bytes read. It will return 0 when all the body data has been read. This routine supports requests with an explicit known Content-Length and those requests with indeterminate body lengths that use transfer encoding.

The **webRead** routine will block the current fiber if necessary to wait for more body data. Other fibers continue to run.

## Blocking

Because Ioto uses fiber coroutines, you can wait for I/O inside an action routine provided you are using the fiber-safe blocking routines provided by Ioto. Don't call Posix "sleep" as that block the entire Ioto process.

If you need to wait for data from an external API or service, you have two options:

1. Create a thread to wait for the data and then call [rYieldFiber](../ref/api/r.md#r_8h_1a531c892493b60bb2088705d7f4e447cb) in your action routine. When the thread has the required data, call [rResumefiber](../ref/api/r.md#r_8h_1a059333256cfab39b5037149625e1133b) from the thread to resume the fiber.

2. Use the [Ioto R Portable Runtime]() non-blocking socket I/O routines such as [rReadSocket](../ref/api/r.md#r_8h_1a5e68016e4b9381eb07d94855361e4a6d) and [rWriteSocket](../ref/api/r.md#r_8h_1a59d42a597c69a42387f41d62f0e8c5b2).

Note: that the Ioto request and inactivity timeouts in ioto.conf may terminate a long running request. If you need to extend these timeouts for a request, call
<a href="../ref/api/http.md#group___http_stream_1ga99922c1f07023f4ed5bcf39d37a86791">webSetTimeout</a>.</p>
