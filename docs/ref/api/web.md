# Web Server API

The web server library is a fast, compact web server designed for management web applications and serving device data.

The web server does not attempt to offer ALL HTTP features and functions. Rather, it aims to implement only the required core of HTTP/1.1 and thus deliver a tiny, fast, secure embedded web server that is exceptionally good at serving single page web applications and device data.

The web server supports: HTTP/1.0, HTTP/1.1, TLS/SSL, Action routines, user authentication, sessions, cookie management, request logging, and security sandboxing. The web server uses 80K of code and will run in 200K RAM (without TLS).

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



<a name="Extensions"></a>
## Extensions

  <table class="apiIndex" title="Extensions">
<tr class="apiDef">
<td class="apiName"><a href="#group___web" class="nameRef">Web</a></td>
<td class="apiBrief">Embedded web server.</td></tr>
<tr class="apiDef">
<td class="apiName"><a href="#group___web_upload" class="nameRef">WebUpload</a></td>
<td class="apiBrief">File upload structure.</td></tr>
</table>
<a name="Functions"></a>
## Functions

  <table class="apiIndex" title="Functions">
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1gabeea8c8679c4f58e978843c823ef69f6" class="nameRef">webAddAccessControlHeader</a>(<a href="#group___web" class="ref">Web</a> *web)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Add an Access-Control-Allow-Origin response header for the request host name.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1ga219834e198ea0c633f437f5736cf9551" class="nameRef">webAddAction</a>(<a href="#struct_web_host" class="ref">WebHost</a> *host, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *url, <a href="#group___web_1ga6692799902b2e85966e1021aa3cb1540" class="ref">WebProc</a> fn, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *role)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Add an action callback for a URL prefix.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1ga86cd5378abd12d048c20b150ef955ee8" class="nameRef">webAddHeader</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Add a header to the request response.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#struct_web_host" class="ref">WebHost*</a></td><td><a href="#group___web_1ga223e848641aa9c0b76ee5c0d45c1840c" class="nameRef">webAllocHost</a>(<a href="json.html#group___json" class="ref">Json</a> *config)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate a new host object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a></td><td><a href="#group___web_1ga30cef128e3f9ac294e2fe73448c12f3c" class="nameRef">webAuthenticate</a>(<a href="#group___web" class="ref">Web</a> *web)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Authenticate a user.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a></td><td><a href="#group___web_1gac4306df4bd906b73b98350c2beb755f4" class="nameRef">webBufferUntil</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *until, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> limit)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Read data and buffer until a given pattern or limit is reached.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a></td><td><a href="#group___web_1ga7375b943fda9de7b738f234bd519bd88" class="nameRef">webCan</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *role)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Test if a user possesses the required role.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#struct_web_session" class="ref">WebSession*</a></td><td><a href="#web_8h_1a818647b463136c3fba0a8d13a707a4c1" class="nameRef">webCreateSession</a>(<a href="#group___web" class="ref">Web</a> *web)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Create a login session.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___web_1ga4a17a3bbd3f1adea18582e481285896d" class="nameRef">webDate</a>(char *buf, <a href="r.html#r_8h_1aec517130c026730881898750d76e596f" class="ref">time_t</a> when)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a time to a date string.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___web_1ga60d76cc1e1b9ea8d0a590206b8fdc624" class="nameRef">webDecode</a>(char *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Decode a string using punycode.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#web_8h_1a164c57396ff5e8d6bd4dc7331847a9be" class="nameRef">webDestroySession</a>(<a href="#group___web" class="ref">Web</a> *web)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Destroy the web session object.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___web_1ga6ead35bdfb49e89fe19708937b144d70" class="nameRef">webEncode</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Encode a string using punycode.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___web_1gab51d17ce507b6c73178560b4f702363b" class="nameRef">webError</a>(<a href="#group___web" class="ref">Web</a> *web, int status, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *body, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Respond to the request with an error.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1gaa1b625ec1407586d184636914f284dfe" class="nameRef">webExtendTimeout</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> timeout)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Extend the request timeout.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1gaa41ee8db9d8d8c7126adf0d551ba2481" class="nameRef">webFinalize</a>(<a href="#group___web" class="ref">Web</a> *web)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Finalize response output.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1ga78eaf50db0c75414b91844080fad5248" class="nameRef">webFreeHost</a>(<a href="#struct_web_host" class="ref">WebHost</a> *host)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a host object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___web_1gaf4686f399200c2c5e55d3152e7694120" class="nameRef">webGetConfig</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a configuration value.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a></td><td><a href="#group___web_1ga8effb915ee4472962dc6b3bc001b571f" class="nameRef">webGetConfigBool</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a configuration value as a boolean.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___web_1gaaf97ba580692909effce5c539c670010" class="nameRef">webGetConfigInt</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, int defaultValue)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a configuration value as an integer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___web_1ga339c4c2a609c30edca347021533f9041" class="nameRef">webGetDocs</a>(<a href="#struct_web_host" class="ref">WebHost</a> *host)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the web documents directory for a host.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___web_1ga765efb1225b77558ac60fc075cfba493" class="nameRef">webGetHostName</a>(<a href="#group___web" class="ref">Web</a> *web)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the host name of the endpoint serving the request.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#struct_web_session" class="ref">WebSession*</a></td><td><a href="#web_8h_1abb297b3736ba9c35c0564b2ba4ad6ed2" class="nameRef">webGetSession</a>(<a href="#group___web" class="ref">Web</a> *web, int create)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the session state object for the current request.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#web_8h_1af33596e8d2da2015f240238f1e63876c" class="nameRef">webGetSessionID</a>(<a href="#group___web" class="ref">Web</a> *web)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the session ID.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#web_8h_1a76a38fd34c70d66d22f8d3004ed4a646" class="nameRef">webGetSessionVar</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a session variable.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___web_1ga18ea86705c79d58e136c1808fc2b57f0" class="nameRef">webGetStatusMsg</a>(int status)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a status message corresponding to a HTTP status code.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___web_1ga8226eef9f0bd76816228119975ef770f" class="nameRef">webGetVar</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a request variable value.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___web_1ga2ae8a93ddb8024d3bb2c1180eec793da" class="nameRef">webInit</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Initialize the web module.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a></td><td><a href="#group___web_1gae37fec0fc0eebea040f900f67e77a206" class="nameRef">webIsAuthenticated</a>(<a href="#group___web" class="ref">Web</a> *web)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Test if the user has been authenticated.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1ga9af1be82d17d8f283fe86ddf285fd98b" class="nameRef">webLogin</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *username, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *role)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Login a user by creating session state.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1ga85313a553af93814d35f794ac9eace84" class="nameRef">webLogout</a>(<a href="#group___web" class="ref">Web</a> *web)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Logout a user and remove the user login session.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___web_1ga2a3736632e83d9a5a0afbde17df62f9d" class="nameRef">webNetError</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *msg, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Close the current request and issue no response.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___web_1ga53e8e4b9dc2bc2ff2a2a53d56c499d96" class="nameRef">webNormalizePath</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Normalize a URL path.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___web_1ga428a7db0684c101a3e215313556a3230" class="nameRef">webParseCookie</a>(<a href="#group___web" class="ref">Web</a> *web, char *name)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Parse a cookie header string and return a cookie value.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___web_1ga6fcbaf7b87434c60d33f582a968ec678" class="nameRef">webParseUrl</a>(<a href="#group___web" class="ref">Web</a> *web)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Parse a URL into its components.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a></td><td><a href="#group___web_1gab6843af41aa5abdaec4062d4a5f46a8b" class="nameRef">webRead</a>(<a href="#group___web" class="ref">Web</a> *web, char *buf, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Read request body data.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a></td><td><a href="#group___web_1ga6dfabe4840504ef353f20be556e3476c" class="nameRef">webReadUntil</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *until, char *buf, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Read request body data until a given pattern is reached.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1gab55db6243c532ea20fb1980a280a148b" class="nameRef">webRedirect</a>(<a href="#group___web" class="ref">Web</a> *web, int status, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Redirect the client to a new URL.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#web_8h_1a7bdc8213f0b18c58c38d6a255359ad76" class="nameRef">webRemoveSessionVar</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Remove a session variable.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1gaa251b71a7b0db2d405ac6a9fa4a32166" class="nameRef">webRemoveVar</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Remove a request variable value.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___web_1ga75799c0590d78555e708868889c70ebc" class="nameRef">webResponse</a>(<a href="#group___web" class="ref">Web</a> *web, int status, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write a response.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a></td><td><a href="#group___web_1ga7ae3c7826b60cdef9349cf59b46bf60c" class="nameRef">webSendFile</a>(<a href="#group___web" class="ref">Web</a> *web, int fd)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write a file response.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1ga4797282525262923d468f3af6cc3b6c7" class="nameRef">webSetContentLength</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the content length for the response.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1ga05cb25220ec94bf582ea299eee87cf1d" class="nameRef">webSetHook</a>(<a href="#struct_web_host" class="ref">WebHost</a> *host, <a href="#group___web_1gadcf8624d72deb71840d76e45465db7e4" class="ref">WebHook</a> hook)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Define a request hook.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#web_8h_1ada76df6088e72a0cb595b00ed4a72821" class="nameRef">webSetSessionVar</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set a session variable name value.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1ga12ab5a43c00f2a54c787d653af51430a" class="nameRef">webSetStatus</a>(<a href="#group___web" class="ref">Web</a> *web, int status)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the response HTTP status code.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___web_1gac6462364b9bfa758c2836d2c777f1b2a" class="nameRef">webSetVar</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set a request variable value.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___web_1ga053137e15bebc93e6664f1bc703f3800" class="nameRef">webStartHost</a>(<a href="#struct_web_host" class="ref">WebHost</a> *host)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Start listening for requests on the host.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1ga327bd24de12ffea2bf9bebf6a0e6fdce" class="nameRef">webStopHost</a>(<a href="#struct_web_host" class="ref">WebHost</a> *host)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Stop listening for requests on the host.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___web_1gabb771e606ddfa0f521abe7eecfac2aa7" class="nameRef">webTerm</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Initialize the web module.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a></td><td><a href="#group___web_1gaf704f9f6fba7634a8dc9b9463b5d6f6a" class="nameRef">webValidatePath</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Validate a URL.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a></td><td><a href="#group___web_1ga9bb3b0c8b44804e8cc329ca946c39aaa" class="nameRef">webWrite</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *buf, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write response data.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a></td><td><a href="#group___web_1ga687c501de9d22cd63087f961dda73cfb" class="nameRef">webWriteFmt</a>(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write string response data.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___web_1ga7e98fb2c84cf8a8336ea56871a8e776a" class="nameRef">webWriteHeaders</a>(<a href="#group___web" class="ref">Web</a> *web)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write request response headers.</td></tr>
</table>
<a name="Typedefs"></a>
## Typedefs

<table class="apiIndex" title="typedefs">
<tr class="apiDef"><td class="apiName"><a href="#struct_web_action" class="nameRef">WebAction</a></td><td class="apiBrief">Action function bound to a URL prefix.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___web_1gadcf8624d72deb71840d76e45465db7e4" class="nameRef">WebHook</a></td><td class="apiBrief">WebHook callback procedure.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#struct_web_host" class="nameRef">WebHost</a></td><td class="apiBrief">Web host structure.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___web_1ga6692799902b2e85966e1021aa3cb1540" class="nameRef">WebProc</a></td><td class="apiBrief"><a class="ref" href="#struct_web_action">WebAction</a> callback procedure.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#struct_web_route" class="nameRef">WebRoute</a></td><td class="apiBrief">Routing object to match a request against a path prefix.</td></tr>
</table>
<a name="Defines"></a>
## Defines

<table class="apiIndex" title="Defines">
<tr class="apiDef">
<td>#define</td><td><a href="#web_8h_1aadbee7a78b63b7ebd0d63ded6922acdc" class="nameRef">WEB_CHUNK_DATA</a>&nbsp;&nbsp;&nbsp;2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Start of chunk data.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#web_8h_1a92e14fbf703236d3ea2b94ede15c7dbc" class="nameRef">WEB_CHUNK_START</a>&nbsp;&nbsp;&nbsp;1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Start of a new chunk.</td></tr>
  </table>

## Web

<a name="group___web"></a>
<div class="api">
  <div class="prototype">Web</div>
  <div class="apiDetail">
<p>Embedded web server.</p>
    <dl><dt><b>Description</b>:</dt><dd>The web server requires the use of fibers from the portable runtime.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>authChecked</td><td>
Authentication has been checked.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>authenticated</td><td>
User authenticated and roleId defined.
</td>
    <tr><td class="param">char *</td><td><td>boundary</td><td>
Upload file boundary.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>boundaryLen</td><td>
Length of the boundary.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>chunked</td><td>
Receive transfer chunk encoding state.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>close</td><td>
Should the connection be closed after the request completes.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>complete</td><td>
Is the request complete.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>contentDisposition</td><td>
Receive content disposition header value.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>contentType</td><td>
Receive content type header value.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>cookie</td><td>
Request cookie string.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>creatingHeaders</td><td>
Are headers being created.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga06650984137cfde185bac06dd2a4f355" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">Ticks</a></td><td><td>deadline</td><td>
Timeout deadline for when the next I/O must complete.
</td>
    <tr><td class="param">char *</td><td><td>error</td><td>
Error string for any request errors.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>exists</td><td>
Does the requested resource exist.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>ext</td><td>
Request URL extension.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>formBody</td><td>
Is the current request a POSTed form.
</td>
    <tr><td class="param"><a class="ref" href="#struct_web_host">WebHost</a> *</td><td><td>host</td><td>
Owning host object.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>http10</td><td>
Is the current request a HTTP/1.0 request.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>jsonBody</td><td>
Is the current request a POSTed json request.
</td>
    <tr><td class="param">WebListen *</td><td><td>listen</td><td>
Listening endpoint.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>method</td><td>
Request method in upper case.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>mime</td><td>
Request mime type based on the extension.
</td>
    <tr><td class="param">char *</td><td><td>path</td><td>
Path portion of the request url.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>protocol</td><td>
Request HTTP protocol. 
Set to HTTP/1.0 or HTTP/1.1.
</td>
    <tr><td class="param">char *</td><td><td>query</td><td>
Request URL query portion.
</td>
    <tr><td class="param">Json *</td><td><td>qvars</td><td>
Parsed query variables.
</td>
    <tr><td class="param">char *</td><td><td>redirect</td><td>
Response redirect location. 
Used to set the Location header.
</td>
    <tr><td class="param">char *</td><td><td>ref</td><td>
Request URL reference portion.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>role</td><td>
Authorized role.
</td>
    <tr><td class="param">int</td><td><td>roleId</td><td>
Index into roles for the authorized role.
</td>
    <tr><td class="param"><a class="ref" href="#struct_web_route">WebRoute</a> *</td><td><td>route</td><td>
Matching route for this request.
</td>
    <tr><td class="param">RBuf *</td><td><td>rx</td><td>
Receive data buffer.
</td>
    <tr><td class="param">char *</td><td><td>rxHeaderBuf</td><td>
Buffer containing the full request.
</td>
    <tr><td class="param">char *</td><td><td>rxHeaders</td><td>
Request received headers.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>rxLen</td><td>
Receive content length.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7bac74916a564105339bcd5a9323c366" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">Offset</a></td><td><td>rxRemaining</td><td>
Receive data remaining in the next chunk.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>secure</td><td>
Has secure listening endpoint.
</td>
    <tr><td class="param">struct WebSession *</td><td><td>session</td><td>
Session state.
</td>
    <tr><td class="param">int</td><td><td>signature</td><td>
Index into signature definition for this request.
</td>
    <tr><td class="param">time_t</td><td><td>since</td><td>
Value of the if-modified-since value in seconds since epoch.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga06650984137cfde185bac06dd2a4f355" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">Ticks</a></td><td><td>started</td><td>
Time when the request started.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>status</td><td>
Request response HTTP status code.
</td>
    <tr><td class="param">RBuf *</td><td><td>tx</td><td>
Write data buffer.
</td>
    <tr><td class="param">RHash *</td><td><td>txHeaders</td><td>
Output headers.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>txLen</td><td>
Transmit content length.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7bac74916a564105339bcd5a9323c366" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">Offset</a></td><td><td>txRemaining</td><td>
Transmit data remaining to send.
</td>
    <tr><td class="param">WebUpload *</td><td><td>upload</td><td>
Current uploading file.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>uploadDir</td><td>
Directory to place uploaded files.
</td>
    <tr><td class="param">RHash *</td><td><td>uploads</td><td>
Table of uploaded files for this request.
</td>
    <tr><td class="param">char *</td><td><td>url</td><td>
Request url.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>username</td><td>
Username.
</td>
    <tr><td class="param">Json *</td><td><td>vars</td><td>
Parsed request variables.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>wroteHeaders</td><td>
Have the response headers been written.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="group___web_1gabeea8c8679c4f58e978843c823ef69f6"></a>
<div class="api">
  <div class="prototype">
    void
    webAddAccessControlHeader
(<a href="#group___web" class="ref">Web</a> *web)
  </div>
  <div class="apiDetail">
<p>Add an Access-Control-Allow-Origin response header for the request host name.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga219834e198ea0c633f437f5736cf9551"></a>
<div class="api">
  <div class="prototype">
    void
    webAddAction
(<a href="#struct_web_host" class="ref">WebHost</a> *host, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *url, <a href="#group___web_1ga6692799902b2e85966e1021aa3cb1540" class="ref">WebProc</a> fn, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *role)
  </div>
  <div class="apiDetail">
<p>Add an action callback for a URL prefix.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">host</td><td>Host object.</td>
    <tr><td class="param">url</td><td>URL prefix to associate with this action.</td>
    <tr><td class="param">fn</td><td>Function to invoke for requests matching this URL.</td>
    <tr><td class="param">role</td><td>Authorized role when the action is invoked.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga86cd5378abd12d048c20b150ef955ee8"></a>
<div class="api">
  <div class="prototype">
    void
    webAddHeader
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, ...)
  </div>
  <div class="apiDetail">
<p>Add a header to the request response.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">key</td><td>HTTP header name.</td>
    <tr><td class="param">value</td><td>Format string for the header value.</td>
    <tr><td class="param">...</td><td>Format arguments.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga223e848641aa9c0b76ee5c0d45c1840c"></a>
<div class="api">
  <div class="prototype">
    <a href="#struct_web_host" class="ref">WebHost</a> *
    webAllocHost
(<a href="json.html#group___json" class="ref">Json</a> *config)
  </div>
  <div class="apiDetail">
<p>Allocate a new host object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">config</td><td>JSON configuration for the host.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A host object.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga30cef128e3f9ac294e2fe73448c12f3c"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a>
    webAuthenticate
(<a href="#group___web" class="ref">Web</a> *web)
  </div>
  <div class="apiDetail">
<p>Authenticate a user.</p>
    <dl><dt><b>Description</b>:</dt><dd>The user is authenticated if required by the selected request route.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the route does not require authentication or the user is authenticated successfully.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gac4306df4bd906b73b98350c2beb755f4"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a>
    webBufferUntil
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *until, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> limit)
  </div>
  <div class="apiDetail">
<p>Read data and buffer until a given pattern or limit is reached.</p>
    <dl><dt><b>Description</b>:</dt><dd>This reads the data into the buffer, but does not return the data or consume it.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">until</td><td>Pattern to read until. Set to NULL for no pattern.</td>
    <tr><td class="param">limit</td><td>Number of bytes of data to read. Set to.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes read into the buffer. Return zero if no bytes read and negative for errors.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga7375b943fda9de7b738f234bd519bd88"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a>
    webCan
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *role)
  </div>
  <div class="apiDetail">
<p>Test if a user possesses the required role.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    <tr><td class="param">role</td><td>Required role.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the user has the required role.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga4a17a3bbd3f1adea18582e481285896d"></a>
<div class="api">
  <div class="prototype">
    char *
    webDate
(char *buf, <a href="r.html#r_8h_1aec517130c026730881898750d76e596f" class="ref">time_t</a> when)
  </div>
  <div class="apiDetail">
<p>Convert a time to a date string.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer to hold the generated date string.</td>
    <tr><td class="param">when</td><td>Timestamp to convert.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A reference to the buffer.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga60d76cc1e1b9ea8d0a590206b8fdc624"></a>
<div class="api">
  <div class="prototype">
    char *
    webDecode
(char *str)
  </div>
  <div class="apiDetail">
<p>Decode a string using punycode.</p>
    <dl><dt><b>Description</b>:</dt><dd>The string is converted in-situ.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to decode.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The original string reference.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga6ead35bdfb49e89fe19708937b144d70"></a>
<div class="api">
  <div class="prototype">
    char *
    webEncode
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri)
  </div>
  <div class="apiDetail">
<p>Encode a string using punycode.</p>
    <dl><dt><b>Description</b>:</dt><dd>The string is converted in-situ.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">uri</td><td>Uri to encode.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>An allocated, escaped URI. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gab51d17ce507b6c73178560b4f702363b"></a>
<div class="api">
  <div class="prototype">
    int
    webError
(<a href="#group___web" class="ref">Web</a> *web, int status, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *body, ...)
  </div>
  <div class="apiDetail">
<p>Respond to the request with an error.</p>
    <dl><dt><b>Description</b>:</dt><dd>This responds to the request with the given HTTP status and body data.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">status</td><td>HTTP response status code.</td>
    <tr><td class="param">body</td><td>Body data to send as the response. This is a printf style string.</td>
    <tr><td class="param">...</td><td>Body response arguments.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gaa1b625ec1407586d184636914f284dfe"></a>
<div class="api">
  <div class="prototype">
    void
    webExtendTimeout
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> timeout)
  </div>
  <div class="apiDetail">
<p>Extend the request timeout.</p>
    <dl><dt><b>Description</b>:</dt><dd>Request duration is bounded by the timeouts.request and timeouts.inactivity limits. You can extend the timeout for a long running request via this call.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">timeout</td><td>Timeout in milliseconds use for both the request and inactivity timeouts for this request.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gaa41ee8db9d8d8c7126adf0d551ba2481"></a>
<div class="api">
  <div class="prototype">
    void
    webFinalize
(<a href="#group___web" class="ref">Web</a> *web)
  </div>
  <div class="apiDetail">
<p>Finalize response output.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine will call webWrite(web, NULL, 0);.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga78eaf50db0c75414b91844080fad5248"></a>
<div class="api">
  <div class="prototype">
    void
    webFreeHost
(<a href="#struct_web_host" class="ref">WebHost</a> *host)
  </div>
  <div class="apiDetail">
<p>Free a host object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">host</td><td>Host object.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gaf4686f399200c2c5e55d3152e7694120"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    webGetConfig
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)
  </div>
  <div class="apiDetail">
<p>Get a configuration value.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">key</td><td>Property key value. May use dot separated properties.</td>
    <tr><td class="param">defaultValue</td><td>Default value to return if the key is not found.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The configuration value or the defaultValue if not found. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga8effb915ee4472962dc6b3bc001b571f"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a>
    webGetConfigBool
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)
  </div>
  <div class="apiDetail">
<p>Get a configuration value as a boolean.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">key</td><td>Property key value. May use dot separated properties.</td>
    <tr><td class="param">defaultValue</td><td>Default value to return if the key is not found.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The configuration value or the defaultValue if not found. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gaaf97ba580692909effce5c539c670010"></a>
<div class="api">
  <div class="prototype">
    int
    webGetConfigInt
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, int defaultValue)
  </div>
  <div class="apiDetail">
<p>Get a configuration value as an integer.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">key</td><td>Property key value. May use dot separated properties.</td>
    <tr><td class="param">defaultValue</td><td>Default value to return if the key is not found.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The configuration value or the defaultValue if not found. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga339c4c2a609c30edca347021533f9041"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    webGetDocs
(<a href="#struct_web_host" class="ref">WebHost</a> *host)
  </div>
  <div class="apiDetail">
<p>Get the web documents directory for a host.</p>
    <dl><dt><b>Description</b>:</dt><dd>This is configured via the web.documents configuration property.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">host</td><td>Host object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The web documents directory.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga765efb1225b77558ac60fc075cfba493"></a>
<div class="api">
  <div class="prototype">
    char *
    webGetHostName
(<a href="#group___web" class="ref">Web</a> *web)
  </div>
  <div class="apiDetail">
<p>Get the host name of the endpoint serving the request.</p>
    <dl><dt><b>Description</b>:</dt><dd>This will return the <a class="ref" href="#struct_web_host">WebHost</a> name if defined, otherwise it will use the listening endpoint. If all else fails, it will use the socket IP address.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Allocated string containing the host name. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga18ea86705c79d58e136c1808fc2b57f0"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    webGetStatusMsg
(int status)
  </div>
  <div class="apiDetail">
<p>Get a status message corresponding to a HTTP status code.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">status</td><td>HTTP status code.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A status message. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga8226eef9f0bd76816228119975ef770f"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    webGetVar
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)
  </div>
  <div class="apiDetail">
<p>Get a request variable value.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">name</td><td>Variable name.</td>
    <tr><td class="param">defaultValue</td><td>Default value to return if the variable is not defined.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The value of the variable or the default value if not defined.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga2ae8a93ddb8024d3bb2c1180eec793da"></a>
<div class="api">
  <div class="prototype">
    int
    webInit
(void )
  </div>
  <div class="apiDetail">
<p>Initialize the web module.</p>
    <dl><dt><b>Description</b>:</dt><dd>Must call before using Web.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gae37fec0fc0eebea040f900f67e77a206"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a>
    webIsAuthenticated
(<a href="#group___web" class="ref">Web</a> *web)
  </div>
  <div class="apiDetail">
<p>Test if the user has been authenticated.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the user has been authenticated.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga9af1be82d17d8f283fe86ddf285fd98b"></a>
<div class="api">
  <div class="prototype">
    void
    webLogin
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *username, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *role)
  </div>
  <div class="apiDetail">
<p>Login a user by creating session state.</p>
Assumes the caller has already authenticated and authorized the user
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    <tr><td class="param">username</td><td>User name.</td>
    <tr><td class="param">role</td><td>Requested role.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga85313a553af93814d35f794ac9eace84"></a>
<div class="api">
  <div class="prototype">
    void
    webLogout
(<a href="#group___web" class="ref">Web</a> *web)
  </div>
  <div class="apiDetail">
<p>Logout a user and remove the user login session.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga2a3736632e83d9a5a0afbde17df62f9d"></a>
<div class="api">
  <div class="prototype">
    int
    webNetError
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *msg, ...)
  </div>
  <div class="apiDetail">
<p>Close the current request and issue no response.</p>
    <dl><dt><b>Description</b>:</dt><dd>This closes the request connection and issues no response. It should be used when a request is received that indicates the connection is compromised.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">msg</td><td>Message to the error log. This is a printf style string.</td>
    <tr><td class="param">...</td><td>Message response arguments.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga53e8e4b9dc2bc2ff2a2a53d56c499d96"></a>
<div class="api">
  <div class="prototype">
    char *
    webNormalizePath
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path)
  </div>
  <div class="apiDetail">
<p>Normalize a URL path.</p>
    <dl><dt><b>Description</b>:</dt><dd>Normalize a path to remove &quot;./&quot;, &quot;../&quot; and redundant separators. This does not make an absolute path and does not map separators or change case. This validates the path and expects it to begin with &quot;/&quot;.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">path</td><td>Path string to normalize.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>An allocated path. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga428a7db0684c101a3e215313556a3230"></a>
<div class="api">
  <div class="prototype">
    char *
    webParseCookie
(<a href="#group___web" class="ref">Web</a> *web, char *name)
  </div>
  <div class="apiDetail">
<p>Parse a cookie header string and return a cookie value.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">name</td><td>Cookie name to extract.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The cookie value or NULL if not defined.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga6fcbaf7b87434c60d33f582a968ec678"></a>
<div class="api">
  <div class="prototype">
    int
    webParseUrl
(<a href="#group___web" class="ref">Web</a> *web)
  </div>
  <div class="apiDetail">
<p>Parse a URL into its components.</p>
    <dl><dt><b>Description</b>:</dt><dd>The parsed components are defined in the Web object including the path, extension (ext),.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gab6843af41aa5abdaec4062d4a5f46a8b"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a>
    webRead
(<a href="#group___web" class="ref">Web</a> *web, char *buf, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize)
  </div>
  <div class="apiDetail">
<p>Read request body data.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine will read the body data and return the number of bytes read. This routine will block the current fiber if necessary. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">buf</td><td>Data buffer to read into.</td>
    <tr><td class="param">bufsize</td><td>Size of the buffer.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes read. Return &lt; 0 for errors and 0 when all the body data has been read.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga6dfabe4840504ef353f20be556e3476c"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a>
    webReadUntil
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *until, char *buf, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize)
  </div>
  <div class="apiDetail">
<p>Read request body data until a given pattern is reached.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine will read the body data and return the number of bytes read. This routine will block the current fiber if necessary. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">until</td><td>Pattern to read until. Set to NULL for no pattern.</td>
    <tr><td class="param">buf</td><td>Data buffer to read into.</td>
    <tr><td class="param">bufsize</td><td>Size of the buffer.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes read. Return &lt; 0 for errors and 0 when all the body data has been read.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gab55db6243c532ea20fb1980a280a148b"></a>
<div class="api">
  <div class="prototype">
    void
    webRedirect
(<a href="#group___web" class="ref">Web</a> *web, int status, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri)
  </div>
  <div class="apiDetail">
<p>Redirect the client to a new URL.</p>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">status</td><td>HTTP status code. Must set to 301 or 302.</td>
    <tr><td class="param">uri</td><td>URL to redirect the client toward.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gaa251b71a7b0db2d405ac6a9fa4a32166"></a>
<div class="api">
  <div class="prototype">
    void
    webRemoveVar
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)
  </div>
  <div class="apiDetail">
<p>Remove a request variable value.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">name</td><td>Variable name.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga75799c0590d78555e708868889c70ebc"></a>
<div class="api">
  <div class="prototype">
    int
    webResponse
(<a href="#group___web" class="ref">Web</a> *web, int status, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Write a response.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine writes a single plain text response in one API. It will block the current fiber if necessary. Other fibers continue to run. This will set the Content-Type header to text/plain.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">status</td><td>HTTP status code.</td>
    <tr><td class="param">fmt</td><td>Printf style message string.</td>
    <tr><td class="param">...</td><td>Format arguments.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes written.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga7ae3c7826b60cdef9349cf59b46bf60c"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a>
    webSendFile
(<a href="#group___web" class="ref">Web</a> *web, int fd)
  </div>
  <div class="apiDetail">
<p>Write a file response.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine will read the contents of the open file descriptor and send as a response. This routine will block the current fiber if necessary. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">fd</td><td>File descriptor for an open file or pipe.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes written.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga4797282525262923d468f3af6cc3b6c7"></a>
<div class="api">
  <div class="prototype">
    void
    webSetContentLength
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)
  </div>
  <div class="apiDetail">
<p>Set the content length for the response.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">len</td><td>Content length.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga05cb25220ec94bf582ea299eee87cf1d"></a>
<div class="api">
  <div class="prototype">
    void
    webSetHook
(<a href="#struct_web_host" class="ref">WebHost</a> *host, <a href="#group___web_1gadcf8624d72deb71840d76e45465db7e4" class="ref">WebHook</a> hook)
  </div>
  <div class="apiDetail">
<p>Define a request hook.</p>
    <dl><dt><b>Description</b>:</dt><dd>The request hook will be invoked for important request events during the lifecycle of processing the request.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">host</td><td><a class="ref" href="#struct_web_host">WebHost</a> object.</td>
    <tr><td class="param">hook</td><td>Callback hook function.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga12ab5a43c00f2a54c787d653af51430a"></a>
<div class="api">
  <div class="prototype">
    void
    webSetStatus
(<a href="#group___web" class="ref">Web</a> *web, int status)
  </div>
  <div class="apiDetail">
<p>Set the response HTTP status code.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">status</td><td>HTTP status code.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gac6462364b9bfa758c2836d2c777f1b2a"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    webSetVar
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value)
  </div>
  <div class="apiDetail">
<p>Set a request variable value.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">name</td><td>Variable name.</td>
    <tr><td class="param">value</td><td>Value to set.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The value defined in the environment. Caller must NOT free the result.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga053137e15bebc93e6664f1bc703f3800"></a>
<div class="api">
  <div class="prototype">
    int
    webStartHost
(<a href="#struct_web_host" class="ref">WebHost</a> *host)
  </div>
  <div class="apiDetail">
<p>Start listening for requests on the host.</p>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">host</td><td>Host object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga327bd24de12ffea2bf9bebf6a0e6fdce"></a>
<div class="api">
  <div class="prototype">
    void
    webStopHost
(<a href="#struct_web_host" class="ref">WebHost</a> *host)
  </div>
  <div class="apiDetail">
<p>Stop listening for requests on the host.</p>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">host</td><td>Host object.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gabb771e606ddfa0f521abe7eecfac2aa7"></a>
<div class="api">
  <div class="prototype">
    void
    webTerm
(void )
  </div>
  <div class="apiDetail">
<p>Initialize the web module.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1gaf704f9f6fba7634a8dc9b9463b5d6f6a"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a>
    webValidatePath
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri)
  </div>
  <div class="apiDetail">
<p>Validate a URL.</p>
    <dl><dt><b>Description</b>:</dt><dd>Check a url for invalid characters.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">uri</td><td>Url path.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the url contains only valid characters.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga9bb3b0c8b44804e8cc329ca946c39aaa"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a>
    webWrite
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *buf, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize)
  </div>
  <div class="apiDetail">
<p>Write response data.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine will block the current fiber if necessary. Other fibers continue to run. Writing a null buffer or zero bufsize indicates there is no more output. The webFinalize API is a convenience call for this purpose.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">buf</td><td>Buffer of data to write.</td>
    <tr><td class="param">bufsize</td><td>Size of the buffer to write.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes written.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga687c501de9d22cd63087f961dda73cfb"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a>
    webWriteFmt
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Write string response data.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine will block the current fiber if necessary. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">fmt</td><td>Printf style message string.</td>
    <tr><td class="param">...</td><td>Format arguments.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes written.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga7e98fb2c84cf8a8336ea56871a8e776a"></a>
<div class="api">
  <div class="prototype">
    int
    webWriteHeaders
(<a href="#group___web" class="ref">Web</a> *web)
  </div>
  <div class="apiDetail">
<p>Write request response headers.</p>
    <dl><dt><b>Description</b>:</dt><dd>This will write the HTTP response headers. This writes the supplied headers and any required headers if not supplied. This routine will block the current fiber if necessary. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes written.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>

## WebUpload

<a name="group___web_upload"></a>
<div class="api">
  <div class="prototype">WebUpload</div>
  <div class="apiDetail">
<p>File upload structure.</p>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">char *</td><td><td>clientFilename</td><td>
Client side name of the file.
</td>
    <tr><td class="param">char *</td><td><td>contentType</td><td>
Content type.
</td>
    <tr><td class="param">int</td><td><td>fd</td><td>
File descriptor used while writing the upload content.
</td>
    <tr><td class="param">char *</td><td><td>filename</td><td>
Local (temp) name of the file.
</td>
    <tr><td class="param">char *</td><td><td>name</td><td>
Symbolic name for the upload supplied by the client.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>size</td><td>
Uploaded file size.
</td>
    </table></dd></dl>
  </div>
</div>

## Functions

<a name="web_8h_1a818647b463136c3fba0a8d13a707a4c1"></a>
<div class="api">
  <div class="prototype">
    <a href="#struct_web_session" class="ref">WebSession</a> *
    webCreateSession
(<a href="#group___web" class="ref">Web</a> *web)
  </div>
  <div class="apiDetail">
<p>Create a login session.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Allocated session object.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="web_8h_1a164c57396ff5e8d6bd4dc7331847a9be"></a>
<div class="api">
  <div class="prototype">
    void
    webDestroySession
(<a href="#group___web" class="ref">Web</a> *web)
  </div>
  <div class="apiDetail">
<p>Destroy the web session object.</p>
    <dl><dt><b>Description</b>:</dt><dd>Useful to be called as part of the user logout process.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Prototype.</dd></dl>
  </div>
</div>
<a name="web_8h_1abb297b3736ba9c35c0564b2ba4ad6ed2"></a>
<div class="api">
  <div class="prototype">
    <a href="#struct_web_session" class="ref">WebSession</a> *
    webGetSession
(<a href="#group___web" class="ref">Web</a> *web, int create)
  </div>
  <div class="apiDetail">
<p>Get the session state object for the current request.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    <tr><td class="param">create</td><td>Set to true to create a new session if one does not already exist.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Session object.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="web_8h_1af33596e8d2da2015f240238f1e63876c"></a>
<div class="api">
  <div class="prototype">
    char *
    webGetSessionID
(<a href="#group___web" class="ref">Web</a> *web)
  </div>
  <div class="apiDetail">
<p>Get the session ID.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The session ID if session state storage is defined for this request. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="web_8h_1a76a38fd34c70d66d22f8d3004ed4a646"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    webGetSessionVar
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)
  </div>
  <div class="apiDetail">
<p>Get a session variable.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    <tr><td class="param">name</td><td>Session variable name.</td>
    <tr><td class="param">defaultValue</td><td>Default value to return if the variable does not exist.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Session variable value or default value if it does not exist.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="web_8h_1a7bdc8213f0b18c58c38d6a255359ad76"></a>
<div class="api">
  <div class="prototype">
    void
    webRemoveSessionVar
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)
  </div>
  <div class="apiDetail">
<p>Remove a session variable.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    <tr><td class="param">name</td><td>Session variable name.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="web_8h_1ada76df6088e72a0cb595b00ed4a72821"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    webSetSessionVar
(<a href="#group___web" class="ref">Web</a> *web, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Set a session variable name value.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web request object.</td>
    <tr><td class="param">name</td><td>Session variable name.</td>
    <tr><td class="param">fmt</td><td>Format string for the value.</td>
    <tr><td class="param">...</td><td>Format args.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The value set for the variable. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>

## Typedefs

<a name="group___web_1gadcf8624d72deb71840d76e45465db7e4"></a>
<div class="api">
  <div class="prototype">
    typedef void(* WebHook) (struct Web *web, int event).
  </div>
  <div class="apiDetail">
<p>WebHook callback procedure.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">event</td><td>ID of the event.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___web_1ga6692799902b2e85966e1021aa3cb1540"></a>
<div class="api">
  <div class="prototype">
    typedef void(* WebProc) (struct Web *web).
  </div>
  <div class="apiDetail">
<p><a class="ref" href="#struct_web_action">WebAction</a> callback procedure.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="struct_web_action"></a>
<div class="api">
  <div class="prototype">WebAction</div>
  <div class="apiDetail">
<p>Action function bound to a URL prefix.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___web_1ga6692799902b2e85966e1021aa3cb1540">WebProc</a></td><td><td>fn</td><td>
Function to invoke.
</td>
    <tr><td class="param">char *</td><td><td>match</td><td>
Path prefix.
</td>
    <tr><td class="param">char *</td><td><td>role</td><td>
Role to invoke action.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="struct_web_host"></a>
<div class="api">
  <div class="prototype">WebHost</div>
  <div class="apiDetail">
<p>Web host structure.</p>
    <dl><dt><b>Description</b>:</dt><dd>The web host defines a web server and its configuration. Multiple web hosts can be created.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">RList *</td><td><td>actions</td><td>
Ordered list of configured actions.
</td>
    <tr><td class="param">Json *</td><td><td>config</td><td>
Web server configuration for this host.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>connections</td><td>
Number of active connections.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>freeConfig</td><td>
Config is allocated and must be freed.
</td>
    <tr><td class="param">int</td><td><td>headers</td><td>
Base ID for headers in config.
</td>
    <tr><td class="param"><a class="ref" href="#group___web_1gadcf8624d72deb71840d76e45465db7e4">WebHook</a></td><td><td>hook</td><td>
Web notification hook.
</td>
    <tr><td class="param">int</td><td><td>inactivityTimeout</td><td>
Timeout for inactivity on a connection.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>index</td><td>
Index file to use for directory requests.
</td>
    <tr><td class="param">RList *</td><td><td>listeners</td><td>
Listening endpoints for this host.
</td>
    <tr><td class="param">int64</td><td><td>maxBody</td><td>
Max size of POST request.
</td>
    <tr><td class="param">int64</td><td><td>maxConnections</td><td>
Max number of connections.
</td>
    <tr><td class="param">int64</td><td><td>maxHeader</td><td>
Max header size.
</td>
    <tr><td class="param">int64</td><td><td>maxSessions</td><td>
Max number of sessions.
</td>
    <tr><td class="param">int64</td><td><td>maxUpload</td><td>
Max size of file upload.
</td>
    <tr><td class="param">RHash *</td><td><td>mimeTypes</td><td>
Mime types indexed by extension.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>name</td><td>
Host name to use in canonical redirects.
</td>
    <tr><td class="param">int</td><td><td>parseTimeout</td><td>
Timeout while parsing a request.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>removeUploads</td><td>
Remove uploads when request completes (default).
</td>
    <tr><td class="param">int</td><td><td>requestTimeout</td><td>
Total request timeout.
</td>
    <tr><td class="param">int</td><td><td>roles</td><td>
Base ID of roles in config.
</td>
    <tr><td class="param">RList *</td><td><td>routes</td><td>
Ordered list of configured routes.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>sameSite</td><td>
Cookie same site property.
</td>
    <tr><td class="param">REvent</td><td><td>sessionEvent</td><td>
Session timer event.
</td>
    <tr><td class="param">RHash *</td><td><td>sessions</td><td>
Client session state.
</td>
    <tr><td class="param">int</td><td><td>sessionTimeout</td><td>
Inactivity timeout for session state.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>uploadDir</td><td>
Directory to receive uploaded files.
</td>
    <tr><td class="param">RHash *</td><td><td>users</td><td>
Hash table of users.
</td>
    <tr><td class="param">RList *</td><td><td>webs</td><td>
Active web requests for this host.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="struct_web_route"></a>
<div class="api">
  <div class="prototype">WebRoute</div>
  <div class="apiDetail">
<p>Routing object to match a request against a path prefix.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>exact</td><td>
Exact match vs prefix match. 
If trailing &quot;/&quot; in route.
</td>
    <tr><td class="param">char *</td><td><td>match</td><td>
Path prefix.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>redirect</td><td>
Redirection if not authorized.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/web/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>role</td><td>
Required user role.
</td>
    </table></dd></dl>
  </div>
</div>

