# URL HTTP Client

The Ioto URL API is a HTTP client for interacting with HTTP servers. It is a full-duplex streaming HTTP client that can retrieve both documents and live streaming data.

The URL client is an efficient HTTP client that uses minimal CPU from only 7K of code.

The URL API uses a fiber coroutines to that you can write natural, blocking, procedural code without ugly callbacks or complex threads.

## URL Features

* HTTP/1.0, HTTP.1.1 client.
* Fully streaming API for dynamic input and output.
* Convenience JSON API for interacting with REST services.
* Single-threaded, fiber coroutine event-based runtime without ugly callbacks or complex threads.
* TLS/SSL 1.3 with certificate verification controls.

## API Quick Tour

The URL API provides a high-level simple API and a lower-level API with more granular control.

The low-level API consists of the routines *urlGet* and *urlPost*.

To get a remote document, use the *urlGet* API:

```c
char *document = urlGet("https://example.com/index.html", NULL);

printf("Document %s\n", document);
rfree(document);
```

This call will block the current fiber while other fibers continue to run. When the document has been retrieved, the call will resume and the document will be returned. If the request fails and a non-200 HTTP status is returned, the call returns NULL.

When complete, you must free the returned string using *rfree*.

To issue a post request, use *urlPost* API

```c
char *document = urlPost("https://my.com/post", data, dataLength, NULL);

char *document = urlPost("https://my.com/post", "Hello World", -1, NULL);
```

If the data is a string, you can set the length to be -1 and the length will be calculated from the string.

If you want to issue a POST request and retrieve a JSON document, you can use the JSON variants *urlPostJson*:

```c
Json *json = urlPostJson("https://my.com/", data, dataLength, NULL);
jsonPrint(json);
```

Use the [JSON](../json/) APIs to manage the returned JSON in-memory tree result.

To supply headers with your requests, you can use the headers printf style arguments:

```c
urlGet("https://example.com/data", "Authorization: %s\r\n", password);
```

Each header in the format string must be separated by "\r\n".

## Low Level API

To use the low-level API, first create a URL instance via *urlAlloc*:

```c
Url *url = urlAlloc();
```

When finished, free the URL with *urlClose*.


The primary low-level API is *urlFetch*. This API supports issuing any HTTP method with body data and headers.


```c
int status = urlFetch(up, "POST", "https://my.com/data", data, dataLength, NULL);
```

This call returns a HTTP status code. To retrieve the returned data, use *urlGetResponse* or *urlGetJsonResponse*:

```c
char *data = urlGetResponse(up);

// or

Json *json = urlGetJsonResponse(up);
```

You can also use the JSON variant *urlFetchJson* which returns the JSON tree if the HTTP return status is a successful 200 code.

```c
Json *json urlFetchJson(up, "POST", "https://my.com/data", data, dataLength, NULL);
```

In this case, you can call *urlGetStatus* to return the HTTP status code.

## Utilities

To retrieve returned HTTP headers, use *urlGetHeader*:

```c
cchar *length = urlGetHeader(up, "Content-Length");
```

## Streaming

The Ioto URL client fully supports streaming data in both directions.

To start a streaming request, use *urlStart*. Then write data blocks with *urlWrite*.

When complete, write a NULL block to signify the end of the posted data.

```c
urlStart(up, "POST", "https://my.com/data", -1);
urlWriteHeaders(up, "X-Custom: %s\r\n", "custom-header");

urlWrite(up, data, dataLength);
urlWrite(up, moreData, moreDataLength);

//  signify end of data
urlWrite(up, NULL, 0);
```

To stream the response, use *urlRead*:

```c
char buf[1024];
do {
    if ((nbytes = urlRead(up, buf, sizeof(buf))) == 0) {
        //  End of input
        break;
    } else if (nbytes < 0) {
        //  Error
    }
} while (nbytes > 0);
```

## Timeouts

You can define a timeout limit for URL requests incase the server should hang.

```c
urlSetTimeout(up, timeInMillisconds);

//  or set for all requests
urlSetDefaultTimeout(timeInMillisconds);
```
