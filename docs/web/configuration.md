# Configuration

The Ioto web server is built by default when compiling from source.

After building, the Ioto web server is enabled via the **config.json5** file. It is disabled by default.

```javascript
{
    services: {
        web: true
    }
}
```

If you wish to only run the web server, you can disable all the other services. In this manner, Ioto becomes a dedicated embedded web server.

The web server configuration is controlled via the **web.json5** file.

Here is a minimal sample web.json5 that will listen on port 80 for HTTP requests and port 443 for TLS requests.

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
    }
}
```

The configuration file defines the following items:

* Public **name** of the server
* The **documents** directory for files to serve
* The ports on which to **listen** for requests
* Request **timeouts**
* Request **limits**
* The **tls** (TLS) certificates
* Instructions to **redirect** requests
* Processing **routes**
* Policy for file **upload**

The configuration properties are defined in the [Configuration Properties](./properties.md).

Here is a more detailed example:

```javascript
{
    web: {
        documents: "./site",
        headers: {
            'X-Frame-Options': 'SAMEORIGIN',
        },
        index: "index.html",
        limits: {
            body: "100K",
            connections: "100",
            memory: "1MB",
            header: "10K",
            sessions: "20",
            upload: "20MB",
        },
        listen: [
            "http://:80",
            "https://:443",
        ],
        name: "mysite.com",
        redirect: [
            { status: 302, to: "https://" },
            { status: 301, from: "/old", to: "/new.html" },
        ],
        routes: [
            { match: '/public/' },
            { match: '/auth/' },
            { can: 'edit', redirect: '/auth/login' },
        ],
        sessions: {
            cookie: "-web-cookie-",
            enable: true,
            sameSite: "lax",
        },
        timeouts: {
            parse: "10 secs",
            inactivity: "300 secs",
            request: "10 mins",
            session: "30 mins",
            tls: "1 day",
        },
        tls: {
            certificate: "server.crt",
            key: "server.key",
        },
        upload: {
            dir: '/tmp',
            remove: true,
        }
    }
}
```
