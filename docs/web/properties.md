# Properties

## documents

| Name | documents |
|-|-|
| Description | Directory containing the static file documents to be published for context. |
| Synopsis | `documents: "directoryPath"` |
| Notes | The documents property defines the directory containing the documents that will be served. All routes share the same documents directory. The directoryPath should not have a trailing slash.|

**Example**

```javascript
documents: "/var/www"
```

## headers

| Name | headers |
|-|-|
| Description | Define HTTP headers to add to the client response.|
| Synopsis | `headers: { "Header-Key": "Header-Value", ... }` |
| Notes | The **headers** property defines one or more HTTP headers that are added to the client response. You should only define unique headers that are not already added by action routines or by the Ioto web server core. Otherwise, your response will have duplicate headers. |

**Example**

```javascript
headers: {
    "Content-Security-Policy":   "default-src 'self'",
    "Strict-Transport-Security": "max-age=31536000; includeSubDomains",
    "CrossOrigin":               "origin=* credentials=yes headers=X-CORS-HEADER age=3000",
}
```

## index

| Name | index |
|-|-|
| Description | Define the default index file to serve for directory requests. |
| Synopsis | `index: "filename"` |
| Notes | The index property specifies a document to be served when a HTTP request is made for a directory. <br><br>If a client requests a directory, but without a trailing "/" in the URI, the client will be redirected to the URI with a trailing "/". When the client then uses that URI, the directory index file will be used for the response.<br> <br>For example: if an index of "index.html" is specified and a user requests http://www.acme.com/products/, then the document /products/index.html will be returned to the user. |

**Example**

```javascript
index: "index.html"
```

## limits

The Ioto web server supports configuration properties that improve security by limiting the size and scale of incoming requests. This technique is know as "sandboxing" because it creates a limited or safer area in which Ioto executes.

| Name | limits |
|-|-|
| Description | Collection of limit properties |
| Synopsis | `limits: { "Limit-Property": "Limit-Value", ...}` |
| Notes | All limit values may be numbers or human-readable strings with unit suffixes. The unit suffixes can be upper or lower case. The supported units are: unlimited, infinite, kb, k, mb, m, gb, g, byte and bytes. Ioto has sensible defaults for these limits if not explicitly specified. |

**Example**

```javascript
limits: {
    body: "100K",
    connections: "100",
    header: "10K",
    sessions: "20",
    upload: "20MB",
},
```


## limits.body

| Name | limits.body |
|-|-|
| Description | Sets the maximum size of the request body in POST and PUT requests. |
| Synopsis | `body: "max-size"` |
| Notes | The body limit defines a maximum size for a POST request body data. For embedded applications, it is useful to limit the request body to the expected maximum. This ensures that rogue or malicious requests will not cause the server to allocate unwanted memory to servicing the request. The default limit is 100K. |

**Example**

```
body: "100K"
```
        </tr>
        <tr>
            <td class="pivot">Notes</td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="security">Security</td>
            <td>
                <p>This directive can be quite useful in certain denial-of-service attacks where the attacker sends large documents of a certain type.</p>
            </td>
        </tr>
    </tbody>
</table>


## limits.connections

| Name | limits.connections |
|-|-|
| Description | Defines the maximum number of simultaneous client connections. |
| Synopsis | `connections: "value"` |
| Notes | The connections limit defines the maximum number of simultaneous client connections to the server. Connections in excess of this count will be rejected. Set to "unlimited" for no limit. This property counts the number of client socket connections. A single browser may open many separate connections (typically up to 6). |

**Examples**

```javascript
connections: "100"
```

## limits.header

| Name | limits.header |
|-|-|
| Description | Sets the maximum header size of a request. |
| Synopsis | `header: "max-size"` |
| Notes | The header limit defines a maximum size for the request headers. For embedded applications, it is useful to limit the maximum headers size to ensure that rogue or malicious requests will not cause the agent to allocate unwanted memory for servicing the request. The default limit is 10K. |
| Security | This property can be quite useful in certain denial-of-service attacks where the attacker sends large documents of a certain type. |

**Example**

```javascript
header: "32K"
```


## limits.sessions

| Name | limits.sessions |
|-|-|
| Description | Sets the maximum number of active client sessions |
| Synopsis | `sessions: "max-sessions"` |
| Notes | The sessions limit property defines the maximum number of active client sessions that utilize server-side session state storage. Requests in excess of this count will be rejected. Set to "unlimited" for no limit. This property limits the number of client sessions, whereas the "connections" limit will limit the number of simultaneously connected client systems. NOTE: that many browsers can and will initiate multiple requests when requesting a page. These will share the same session state storage. |

**Examples**

```javascript
sessions: "40"
```

## limits.upload

| Name | limits.upload |
|-|-|
| Description | Maximum size of an uploaded file.|
| Synopsis | `upload: "max-size"` |
| Notes | The upload limit defines the maximum size of an uploaded file. In embedded applications, it is useful to limit the maximum file upload size to ensure that rogue or malicious requests will not cause the server to allocate unwanted space for uploads. Set to "unlimited" for no limit. If a file larger than the limit is uploaded, Ioto will reject the request and the client will receive an error. The default value is unlimited. |
| Security | This directive can be quite useful in certain denial-of-service attacks where the attacker sends requests with bogus URLs. |

**Example**

```javascript
upload: "20MB"
```

## listen

| Name | listen |
|-|-|
| Description | IP addresses and ports on which to listing for incoming requests.<
| Synopsis | `listen: [ "http(s)://[IP address:]portNumber", ...]` |
| Notes | The Listen directive specifies the IP endpoints on which Ioto will listen for incoming HTTP requests. If you specify only the port number and omit the IP address, Ioto will listen on all network interfaces including the loop-back adaptor. It will listen on both IPv4 and IPv6 if only a portNumber is specified. >To listen on IPv6 endpoints, enclose the IP address in square brackets. For example: Listen [2001:05c0:9168:0000:0000:0000:0000:0001]. To listen on IPv4 endpoints, supply an IPv4 IP address. You may use 0.0.0.0 to listen on all IPv4 interfaces. To listen for TLS requests, use a "https://" prefix. |



**Example**

```javascript
listen: [
    "http://:80",
    "https://:443",
]
```


## mime

| Name | mime |
|-|-|
| Description | Mime map to map document extensions to mime types. |
| Synopsis | `mime: { "ext": "mime-type", ...}` |
| Notes | The mime property defines additional mime types to be added to the Ioto mime type table. Mime type properties are indexed by the document file extension with the value of each key set to the corresponding mime type. |

**Example**

```javascript
mime: {
    ".html": "text/html",
    ".ico": "image/vnd.microsoft.icon",
}
```


## name

| Name | name |
|-|-|
| Description | Define the public hostname by which the server is known |
| Synopsis | `name: "hostname.com"` |
| Notes: | The name property specifies the preferred, public, fully qualified hostname for the server. This address will be used when constructing URLs and redirections. The given hostname should be a fully qualified domain name with port number if using a port other than the default port. If a name is not defined, a value will be determined from the listening endpoint that accepted the connection. |

**Example**

```javascript
name: "www.acme.com"
```


## redirect

| Name | redirect |
|-|-|
| Description | Redirect requests to a new target. |
| Synopsis | `redirect: [ { status: code, from: "path", to: "path" }, ... ]` |
| Notes | The redirect property maps requests from one URI to a new URL. <br><br>The status argument may be either 301 for a permanent redirect or 302 for a temporary redirect. The default is 302.<br><br>The **from** property defines the leading URL portion that must match for the redirect. If the **from** property is omitted, it will match all URLs.<br><br>The **to** URL may be local to the system, in which case it will begin with a "/" character. Or it may be on another system, in which case it will begin with "http://" or "https://". In both cases, the user will receive a HTTP redirection response informing them of the new location of the document. If the **to** URL only consists of the scheme (https://), then the **from** URL will be used with the target scheme. This is useful to redirect all non-secure request to the secure https listening endpoint that supports TLS. |



**Example**

```javascript
redirect: [
    { status: 302, to: "https://" },
    { status: 301, from: "/old", to: "/new.html" },
],
```

## route

| Name | route |
|-|-|
| Description | Define a configuration to apply to a set of URLs. |
| Synopsis | `routes: [ match: "url-prefix", can: 'ability' ]` |
| Notes | The routes property specifies an ordered set of routes that defines the required authorization to be accepted.<br><br>A route entry has a <b>match</b> property that defines the URL prefix that must match for the route to be used.<br><br>The optional "<b>can</b>" property defines a set of "abilities" the user must possess for the route to be used. If the "<b>can</b>" property is absent, all users will match. If specified, the user must be authenticated first to determine their abilities.<br><br>If the route matches, but the user fails to be authorized, the "<b>redirect</b>" property will be used to redirect the user to the given URL.<br><br>Ioto tests routes in order and the first matching route is used. If no routes match, the client request is rejected with a 401 status code.|

**Example**

```javascript
routes: [
    { match: '/public/' },
    { match: '/auth/' }
    { match: '/members/', can: 'view' }
    { match: '/admin/', can: 'edit' },
    { can: 'edit', redirect: '/auth/login' },
],
```
            </code></td>
        </tr>
        <tr>
            <td class="pivot">Notes</td>
            <td>
            </td>
        </tr>
    </tbody>
</table>

## sessions

The Ioto web server supports server-side sessions that are indexed by a session cookie. Ioto manages the creation of the session cookie and the management of sessions. APIs to get and set values in session state are provided.

The default session cookie name is **-web-session-**. You can modify this when building by defining WEB_SESSION_COOKIE to be the cookie name of your choice.


| Name | session |
|-|-|
| Description | Collection of session properties. |
| Synopsis | `sessions: { "Sessions-Property": "Session-Value", ...}` |

**Example**

```javascript
sessions: {
    cookie: "-web-cookie-",
    enable: true,
    sameSite: "lax",
},
```


## session.cookie

| Name | session.cookie |
|-|-|
| Description | Controls whether to create session state for a request.|
| Synopsis | `enable: true|false` |

**Example**

```javascript
enable: true
```

## session.sameSite

| Name | session.sameSite |
|-|-|
| Description | Sets the sameSite property in the cookie. |
| Synopsis | `sameSite: "Lax|None|Strict"` |
| Notes | The sameSite property defines the Set-Cookie HTTP header SameSite field. It may be set to "Lax" (the default), "None" or Strict.<br><br>See <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie/SameSite">MDN Set-Cookie SameSite</a> for more information. |
| Security | This property is used to effectively defend against CSRF attacks. |

**Example**

```javascript
sameSite: "Lax"
```


## timeouts

The Ioto web server supports timeout properties that improve security by limiting the duration of requests.

| Name | timeouts |
|-|-|
| Description | Collection of timeout properties. |
| Synopsis | `timeouts: { "Timeout-Property": "Timeout-Value", ...}` |
| Notes | All timeout values are strings, not numbers.<br><br>The string values may take human-readable suffixes which indicate the units for the value. The suffixes can be upper or lower case. The supported units are: infinite, never, sec, secs, seconds, min, mins, minute, minutes, hr, hrs, hour, hours, day, days, week, weeks, month, months, year, years.<br><br>Ioto has sensible defaults for these timeouts if not explicitly specified.|

**Example**
```javascript
timeouts: {
    parse: "10 secs",
    inactivity: "300 secs",
    request: "10 mins",
    session: "30 mins",
    tls: "1 day",
}
```


## timeouts.inactivity

| Name | timeouts.inactivity |
|-|-|
| Description | Defines the maximum duration of no I/O activity before the request will be terminated. |
| Synopsis | `inactivity: "duration"` |
| Notes | The inactivity timeout will be triggered if there is no read or write activity on the network connection to the client over the specified timeout period. |

**Example**

```javascript
inactivity: "30secs"
```


## timeouts.parse

| Name | timeouts.parse |
|-|-|
| Description | Defines the maximum duration for parsing the request HTTP headers |
| Synopsis | `parse: "duration"` |
| Notes | The parse timeout will be triggered if Ioto cannot read and parse the HTTP headers over the specified timeout period.<br><br>It is a security attack vector to open a connection to a web server and then be very slow, or stall writing the HTTP headers. This consumes a network connection and can lead to a denial of service. Setting the parse timeout to be short will limit this attack. |

**Example**

```javascript
parse: "15secs"
```


## timeouts.request

| Name | timeouts.request |
|-|-|
| Description | Defines the maximum duration for a request. |
| Synopsis | `request: "duration"` |
| Notes | The request timeout will be triggered if the request cannot be completed inside the specified timeout period.<br><br>It is good practice to set a request timeout to the maximum duration you expect the longest request to take. |


**Example**

```javascript
request: "2mins"
```


## timeouts.session

| Name | timeouts.session |
|-|-|
| Description | Defines the maximum duration of session inactivity for preserving session state. |
| Synopsis | `session: "duration"` |
| Notes | Session state will be preserved for up to the session timeout. When a client accesses or updates the session state, the timeout is restarted. |

**Example**

```javascript
session: "1hr"
```


## tls

| Name | tls |
|-|-|
| Description | Collection of TLS properties. |
| Synopsis | `tls: { "Tls-Property": "Tls-Value", ... }` |
| Notes | TLS properties apply to web server https connections. They do not apply to Ioto MQTT or Ioto client connections. |

**Example**

```javascript
tls: {
    authority: "ca.crt",
    certificate: "server.crt",
    key: "server.key",
    verify: {
        client: true,
        issuer: true
    }
}
```

## tls.authority

| Name | tls.authority |
|-|-|
| Description | Defines the location of the certificate file for client authentication. |
| Synopsis | `authority: "path"` |
| Notes | The <b>authority</b> property defines the file containing the certificates to use when authenticating client certificates. This property is only necessary if you wish to verify client certificates. If so, you must also define the "verify.client" to be true.<br><br>The certificate file contains the concatenated certificates to use in preference order. The path may be an absolute path or it may be relative to the Home directory. |

**Example**

```javascript
authority: "/var/ioto/ca.crt"
```

## tls.certificate

| Name | tls.certificate |
|-|-|
| Description | Defines the location of the X.509 file containing the server certificate |
| Synopsis | `certificate: "path"` |
| Notes | The SSLCertificateFile directive defines the file containing the PEM encoded X.509 certificate for the server. The file may also contain the private key for the server in which case you do not need to use the <b>key</b> property. |  

The path may be an absolute path or it may be relative to the Ioto home directory.|

**Example**

```javascript
certificate: "server.crt"
```

## tls.key

| Name | tls.key |
|-|-|
| Description | Defines the location of the server's private key. |
| Synopsis | `key: "path/to/key"` |
| Notes | The key property defines the file containing the PEM encoded private key file for the server. This property is not required if the server's private key is combined with the certificate file. The private key should not be encrypted. |
| Security | There is a dilemma here. If you use an encrypted private key, the server will pause until you enter the pass-phrase which makes headless operation impossible. If you do not encrypt the private key, your private key is more vulnerable should the server be compromised. |

**Example**

```javascript
key: "server.key.pem"
```

## tls.verify


| Name | tls.verify |
|-|-|
| Description | Collection of TLS verification properties |
| Synopsis | `verify: { "client": "value", "issuer": "value" }`
| Notes | Control the type of certificate verification. |

**Example**

```javascript
verify: {
    client: true,
    issuer: true,
}
```

## tls.verify.client

| Name | tls.verify.client |
|-|-|
| Description | Control the type of client certificate verification.|
| Synopsis | `client: true|false` |
| Notes | This property controls whether the client must provide a client certificate for the server to verify the identity of the client. If disabled, no certificate is required. If one is supplied, it will be ignored. The certificate and the certificate's issuer will be verified. Use the "verify.issuer" directive to turn off verification of the issuer if you need to use a self-signed test certificate.<br><br>If the property is enabled, the client must provide a valid certificate. The default is disabled. |

**Example**

```javascript
verify: {
    client: true,
}
```

## tls.verify.issuer

| Name | tls.verify.issuer |
|-|-|
| Description | Defines whether the issuer of the client certificate is verified. |
| Synopsis | `issuer: true|false` |
| Notes | This property controls whether the issuer of the client certificate will be verified. If set to <b>off</b>, the certificate issuer will not be verified. This is useful to accept self-signed test certificates. |

**Example**

```javascript
verify: {
    issuer: true,
}
```

## upload

| Name | upload |
|-|-|
| Description | Collection of Upload properties. |
| Synopsis | `upload: { "Upload-Property": "Upload-Value", ... }` |
| Notes | The Upload properties control requests that use multi-part mime file upload. They control where the files are placed and how long the files are retained. |


**Example**

```javascript
upload: {
    dir: '/tmp',
    remove: true,
}
```

## upload.dir

| Name | upload.dir |
|-|-|
| Description | Defines the directory to receive uploaded files. |
| Synopsis | `dir: "path"` |
| Notes | The directory to hold uploaded files should be outside the site "documents" directory.|

**Example**

```javascript
dir: "./tmp/uploads"
```

## upload.remove

| Name | upload.remove |
|-|-|
| Description | Defines whether the uploaded files should be preserved after the request completes.|
| Synopsis | `remove: true | false` |
| Notes | The <b>remove</b> property defines whether the uploaded file is removed when the request completes. By default, an action routine that receives the upload file request should process the file before completing. Then Ioto will observe this property to determine if the file should be removed.|
| Security | It is a denial-of-service risk to keep uploaded files in the upload directory after the receiving action routine completes. If the files are not immediately removed, attackers can upload more and more data and exhaust the capacity of the server. |

**Example**

```javascript
remove: true
```
