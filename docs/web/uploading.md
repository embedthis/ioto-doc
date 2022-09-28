# File Upload

Ioto has an integrated file upload filter that accepts and processes file upload requests.

The Ioto upload filter intercepts uploaded files, saves them to disk and passes details about the
uploaded file to Ioto Action routines for processing.</p>

File upload uses multi-part mime encoding to transport files over HTTP POST requests. This is specified in
the IETF standard <a href="http://www.ietf.org/rfc/rfc2388.txt">RFC 2388</a>.

<a id="overview"></a>

## Overview

Because uploaded files can be very large, Ioto uses specialized handling for the receipt, storage and processing of uploaded files. When an upload request is received, Ioto will accept and store the uploaded file before starting the Action routine to respond to the request. The Action routine does not directly receive the uploaded file. Rather, Ioto passes the name of the temporary file holding the uploaded file. Ioto expects that the Action routine will process, copy or move the temporary file before completing the request. Once complete, Ioto will remove any remaining upload temporary files.

<a id="directives"></a>

## Ioto Upload Configuration

There are two **web.json5** configuration properties that control the upload filter.
* [upload.dir](properties.md#upload.dir) &mdash; This specifies directory to receive uploaded files.
* [upload.remove](properties.md#upload.remove) &mdash; This specifies if the uploaded files should be automatically removed from the upload directory after the action routine has completed processing the request.

<a id="details"></a>
## Upload File Details

Once a file is uploaded, the Action routine responsible for processing the request will receive details about
uploaded files via the request parameters.

Ioto provides direct access to the uploaded files structure. Each uploaded file is described
by a [WebUpload](../ref/api/web.md#group___web_upload) structure.

These structures are stored in an RHash table indexed by their HTML file upload ID.

The [WebUpload](../ref/api/web.md#group___web_upload) structure is defined as:

```c
typedef struct WebUpload {
    char *filename;       /**< Local (temp) name of the file */
    char *clientFilename; /**< Client side name of the file */
    char *contentType;    /**< Content type */
    char *name;           /**< Symbolic name for the upload supplied by the client */
    ssize size;           /**< Uploaded file size */
    int fd;               /**< File descriptor used while writing the upload content */
} WebUpload;
```

You can access uploaded files via:

```c
WebUpload  *file;
cchar      *name;

for (ITERATE_NAME_DATA(web->files, name, file)) {
    webWriteFmt(web, "FILENAME %s\n", file->filename);
    webWriteFmt(web, "CLIENT_NAME %s\n", file->clientFilename);
    webWriteFmt(web, "TYPE %s\n", file->contentType);
    webWriteFmt(web, "SIZE %d\n", file->size);
}
```

<a id="post"></a>
## Alternative Upload Technique

File upload using POST requests is one way to upload files. Another is to use the HTTP PUT method.
This uploads a file without encoding and can offer higher performance. The HTTP DELETE method can then
be used to delete files from the server.
