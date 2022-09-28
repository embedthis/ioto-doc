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




<a name="Extensions"></a>
## Extensions

  <table class="apiIndex" title="Extensions">
<tr class="apiDef">
<td class="apiName"><a href="#group___url" class="nameRef">Url</a></td>
<td class="apiBrief">Url request object.</td></tr>
</table>
<a name="Functions"></a>
## Functions

  <table class="apiIndex" title="Functions">
<tr class="apiDef"><td class="apiType"><a href="#group___url" class="ref">Url*</a></td><td><a href="#group___url_1ga1b45e2af6e79771a20f698505e839640" class="nameRef">urlAlloc</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate a URL object.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___url_1ga82ca1db143e28a861a667b9801b69c5d" class="nameRef">urlClose</a>(<a href="#group___url" class="ref">Url</a> *up)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Close the underlying network socket associated with the URL object.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___url_1ga2c7fb498dbc6f4527dcd274802f69062" class="nameRef">urlFetch</a>(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *method, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Fetch a URL.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="json.html#group___json" class="ref">Json*</a></td><td><a href="#group___url_1ga2442d22c54e956052825700ce831a332" class="nameRef">urlFetchJson</a>(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *method, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Fetch a URL and return a JSON response.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___url_1gadec04fc772b190e00ed04821e4d4e8c0" class="nameRef">urlFree</a>(<a href="#group___url" class="ref">Url</a> *up)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a URL object.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___url_1ga3cab88ff3bf927914737a2e1db56168c" class="nameRef">urlGet</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a URL using a HTTP GET request.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___url_1ga642db3762c5b24d93319ae152d0afd4a" class="nameRef">urlGetError</a>(<a href="#group___url" class="ref">Url</a> *up)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the URL internal error message.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___url_1ga162f7a44a1a78e8aa12b9c28bcdad0bc" class="nameRef">urlGetHeader</a>(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *header)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a response HTTP header.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="json.html#group___json" class="ref">Json*</a></td><td><a href="#group___url_1ga4125beb90f428b4000aae77700aca1b0" class="nameRef">urlGetJsonResponse</a>(<a href="#group___url" class="ref">Url</a> *up)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the response to a URL request as a JSON object tree.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___url_1gad9b32ce9095363acb1477654bc81a020" class="nameRef">urlGetResponse</a>(<a href="#group___url" class="ref">Url</a> *up)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the response to a URL request.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___url_1ga19bf405768b5920db121a38c369a8e52" class="nameRef">urlGetStatus</a>(<a href="#group___url" class="ref">Url</a> *up)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the HTTP response status code for a request.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___url_1ga84228a1f91b5760d206d376c8146261b" class="nameRef">urlParse</a>(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Parse a URL into its constituent components in the Url structure.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___url_1ga8172e2ab386185d0ffcfe5d7fcc978ba" class="nameRef">urlPost</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Issue a HTTP POST request.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="json.html#group___json" class="ref">Json*</a></td><td><a href="#group___url_1ga1df690f703f2d035fee45e886afd2832" class="nameRef">urlPostJson</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Issue a HTTP POST request and return parsed JSON.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a></td><td><a href="#group___url_1ga3956cf68f759d30015a4f709ff78e549" class="nameRef">urlRead</a>(<a href="#group___url" class="ref">Url</a> *up, char *buf, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Read response data for a request.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___url_1ga7cb73f6800868b995b2d63df7c90d132" class="nameRef">urlSetCerts</a>(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *cert, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *ca, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *revoke)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Define the certificates to use with TLS.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___url_1gabd4f2bdf15b9ee93b5511e6553fc72c6" class="nameRef">urlSetDefaultRetries</a>(int retries)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the default number of retries for requests.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___url_1ga602b02eb935e922ce63dd253a3b220fb" class="nameRef">urlSetDefaultTimeout</a>(int timeout)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the default request timeout to use for future URL instances.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___url_1ga4617299e0d0b5567e3d3e9600fbde4c1" class="nameRef">urlSetError</a>(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *message, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the URL internal error message.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___url_1ga2a7d0e5c41224fff0edc31597399911d" class="nameRef">urlSetTimeout</a>(<a href="#group___url" class="ref">Url</a> *up, int timeout)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the request timeout to use for the specific URL object.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___url_1ga192b95298d355f323c76414785f91545" class="nameRef">urlSetVerify</a>(<a href="#group___url" class="ref">Url</a> *up, int verifyPeer, int verifyIssuer)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Control verification of TLS connections.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___url_1gaee9f42b7266d310ae796942a5df8d585" class="nameRef">urlStart</a>(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *method, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> txLen)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Start a Url request.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a></td><td><a href="#group___url_1gad65a2cd6595cdb8ac0bb19cde4734289" class="nameRef">urlWrite</a>(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write body data for a request.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___url_1gaad656a710930ec0e33fdf778888e77c0" class="nameRef">urlWriteHeaders</a>(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write request headers.</td></tr>
</table>
<a name="Typedefs"></a>
## Typedefs

<table class="apiIndex" title="typedefs">
<tr class="apiDef"><td class="apiName"><a href="#group___url_1gac9521a16b4817d961ccb68b9f2b7c95b" class="nameRef">UrlProc</a></td><td class="apiBrief">URL callback procedure.</td></tr>
</table>
<a name="Defines"></a>
## Defines

<table class="apiIndex" title="Defines">
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a7d93a859fb10d1b518bcf856e19b1ad8" class="nameRef">URL_CODE_ACCEPTED</a>&nbsp;&nbsp;&nbsp;202</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request has been accepted and processing is continuing.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a3116a0fdd4b316be0d84ea84c18f170f" class="nameRef">URL_CODE_BAD_GATEWAY</a>&nbsp;&nbsp;&nbsp;502</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The server cannot act as a gateway for the given request.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1ab3ea61909395c495d6960c6420375cce" class="nameRef">URL_CODE_BAD_METHOD</a>&nbsp;&nbsp;&nbsp;405</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request HTTP method was not supported by the resource.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1af8311a3483b0af310970a8c281a9879e" class="nameRef">URL_CODE_BAD_REQUEST</a>&nbsp;&nbsp;&nbsp;400</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request is malformed.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a99e24e955fa18bc5fa542016f670b79d" class="nameRef">URL_CODE_BAD_VERSION</a>&nbsp;&nbsp;&nbsp;505</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The server does not support the HTTP protocol version.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a8ed30bc3ffcb5f11054a0a7d3ec9806c" class="nameRef">URL_CODE_CONFLICT</a>&nbsp;&nbsp;&nbsp;409</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request had a conflict in the request headers and URI.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a1a7683d5c37147d6a706a2e831a3f20b" class="nameRef">URL_CODE_CONTINUE</a>&nbsp;&nbsp;&nbsp;100</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Continue with request, only parial content transmitted.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a7dedc7941910b7c934df768fd1844681" class="nameRef">URL_CODE_CREATED</a>&nbsp;&nbsp;&nbsp;201</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request has completed and a new resource was created.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a75c204eff1a7c0c135e97d94117f0cf7" class="nameRef">URL_CODE_EXPECTATION_FAILED</a>&nbsp;&nbsp;&nbsp;417</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The server cannot satisfy the Expect header requirements.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1ad6736e60e18a2aae2f3948f33ae66cb6" class="nameRef">URL_CODE_FORBIDDEN</a>&nbsp;&nbsp;&nbsp;403</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request was legal, but the server refuses to process.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1abf299ed6371e29602838680e5bd6dec0" class="nameRef">URL_CODE_GATEWAY_TIMEOUT</a>&nbsp;&nbsp;&nbsp;504</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The server gateway timed out waiting for the upstream server.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1ac5cac1cebc65fa58ac96399dc149adb3" class="nameRef">URL_CODE_GONE</a>&nbsp;&nbsp;&nbsp;410</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The requested resource is no longer available.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a768460ca84bab37aa17af09bab795f88" class="nameRef">URL_CODE_IM_A_TEAPOT</a>&nbsp;&nbsp;&nbsp;418</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Short and stout error code (RFC 2324).</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a94346eaf944d93d7e63c817289cfb10a" class="nameRef">URL_CODE_INSUFFICIENT_STORAGE</a>&nbsp;&nbsp;&nbsp;507</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The server has insufficient storage to complete the request.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1ae73490e2ead5022394d7ecff390c9111" class="nameRef">URL_CODE_INTERNAL_SERVER_ERROR</a>&nbsp;&nbsp;&nbsp;500</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Server processing or configuration error.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1af028811707c0a8550b7a4f431f3a781f" class="nameRef">URL_CODE_LENGTH_REQUIRED</a>&nbsp;&nbsp;&nbsp;411</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request did not specify a required content length.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a3ff8a7df7520ef6a6ca62f79bf9e60e8" class="nameRef">URL_CODE_MOVED_PERMANENTLY</a>&nbsp;&nbsp;&nbsp;301</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The requested URI has moved permanently to a new location.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a064df7b12db237e69228d84c7af3a38d" class="nameRef">URL_CODE_MOVED_TEMPORARILY</a>&nbsp;&nbsp;&nbsp;302</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The URI has moved temporarily to a new location.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a03f2218471f17e84dd0be61fc05e091a" class="nameRef">URL_CODE_NO_CONTENT</a>&nbsp;&nbsp;&nbsp;204</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request has completed and there is no response to send.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a94400c1ffdfca434e835f2d40491a736" class="nameRef">URL_CODE_NO_RESPONSE</a>&nbsp;&nbsp;&nbsp;444</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The connection was closed with no response to the client.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a16240eb5b9f06ad05e52c2e50b20101a" class="nameRef">URL_CODE_NOT_ACCEPTABLE</a>&nbsp;&nbsp;&nbsp;406</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The requested resource cannot generate the required content.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1abf45bcf4cec8cc3c0b381d1fe6a4b881" class="nameRef">URL_CODE_NOT_AUTHORITATIVE</a>&nbsp;&nbsp;&nbsp;203</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request has completed but content may be from another source.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a732dcd0547a6c2cbf467f56ba7c5261d" class="nameRef">URL_CODE_NOT_FOUND</a>&nbsp;&nbsp;&nbsp;404</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The requested resource was not found.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1adcfbb319b0be6ab7665de685a878f3c2" class="nameRef">URL_CODE_NOT_IMPLEMENTED</a>&nbsp;&nbsp;&nbsp;501</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The server does not recognize the request or method.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1ad64e1d27619457f2cd2041baa4556606" class="nameRef">URL_CODE_NOT_MODIFIED</a>&nbsp;&nbsp;&nbsp;304</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The requested resource has changed since the last request.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1ac822a89eaa493b61fe7984c94088a6c2" class="nameRef">URL_CODE_OK</a>&nbsp;&nbsp;&nbsp;200</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request completed successfully.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a0ea4c5208998d9f82d28a47451910e77" class="nameRef">URL_CODE_PARTIAL</a>&nbsp;&nbsp;&nbsp;206</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request has completed and is returning parial content.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a37af50104b25cda88d6d7c17e4319189" class="nameRef">URL_CODE_PAYMENT_REQUIRED</a>&nbsp;&nbsp;&nbsp;402</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Reserved for future use.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1af6db18ee16ab9ff0f2c28c92a2398c96" class="nameRef">URL_CODE_PRECOND_FAILED</a>&nbsp;&nbsp;&nbsp;412</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The server cannot satisfy one of the request preconditions.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a86bbdee1e5842d179ea562970a6eeb98" class="nameRef">URL_CODE_RANGE_NOT_SATISFIABLE</a>&nbsp;&nbsp;&nbsp;416</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request content range does not exist for the resource.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1af81fc030c4af63d72eac0baf2434886e" class="nameRef">URL_CODE_REQUEST_TIMEOUT</a>&nbsp;&nbsp;&nbsp;408</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The server timed out waiting for the request to complete.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1aa2f4e4b3fa5c37b255ed1bcf7eb2f5b5" class="nameRef">URL_CODE_REQUEST_TOO_LARGE</a>&nbsp;&nbsp;&nbsp;413</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request is too large for the server to process.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a99a1f9497915849f661f5280aadea42d" class="nameRef">URL_CODE_REQUEST_URL_TOO_LARGE</a>&nbsp;&nbsp;&nbsp;414</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request URI is too long for the server to process.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a6a380eec95a6bebb1003f3ec9d2eece9" class="nameRef">URL_CODE_RESET</a>&nbsp;&nbsp;&nbsp;205</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request has completed with no content.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1ae01685c0dd4167a3dd0823712fc7da2b" class="nameRef">URL_CODE_SEE_OTHER</a>&nbsp;&nbsp;&nbsp;303</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The requested URI can be found at another URI location.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1aef423d22b749a65c3d739634016764af" class="nameRef">URL_CODE_SERVICE_UNAVAILABLE</a>&nbsp;&nbsp;&nbsp;503</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The server is currently unavailable or overloaded.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a83303e05a231696357368a789fe39e62" class="nameRef">URL_CODE_SWITCHING</a>&nbsp;&nbsp;&nbsp;101</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Switching protocols.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a1e985073a1678b29b08eba8631163efc" class="nameRef">URL_CODE_TEMPORARY_REDIRECT</a>&nbsp;&nbsp;&nbsp;307</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request should be repeated at another URI location.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a1e15cb5b08e6d378f7c7587df5bcdc9c" class="nameRef">URL_CODE_UNAUTHORIZED</a>&nbsp;&nbsp;&nbsp;401</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Authentication for the request has failed.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a4ef07347fc23a3e3c7cee58eb1249efb" class="nameRef">URL_CODE_UNSUPPORTED_MEDIA_TYPE</a>&nbsp;&nbsp;&nbsp;415</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The request media type is not supported by the server or resource.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a73d106d23080785cfb519be0ab4a09cb" class="nameRef">URL_CODE_USE_PROXY</a>&nbsp;&nbsp;&nbsp;305</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The requested resource must be accessed via the location proxy.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1aed0828e68136aafd96401b248b12e225" class="nameRef">URL_NOTIFY_DONE</a>&nbsp;&nbsp;&nbsp;3</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Request is complete.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1a2fbbac049807f210b71ae031f9e2f6c2" class="nameRef">URL_NOTIFY_IO</a>&nbsp;&nbsp;&nbsp;1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Streaming I/O event.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#url_8h_1ac91e8262968377af3fc843734f567d0d" class="nameRef">URL_NOTIFY_RETRY</a>&nbsp;&nbsp;&nbsp;2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Retry initiated.</td></tr>
  </table>

## Url

<a name="group___url"></a>
<div class="api">
  <div class="prototype">Url</div>
  <div class="apiDetail">
<p>Url request object.</p>
    <dl><dt><b>Description</b>:</dt><dd>The Url service is a streaming HTTP request client. This service requires the use of fibers from the portable runtime.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>certsDefined</td><td>
Certificates have been defined.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>chunked</td><td>
Request is using transfer chunk encoding.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>close</td><td>
Connection should be closed on completion of the current request.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga06650984137cfde185bac06dd2a4f355" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">Ticks</a></td><td><td>deadline</td><td>
Request time limit expiry deadline.
</td>
    <tr><td class="param">char *</td><td><td>error</td><td>
Error message.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>host</td><td>
Request host.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>path</td><td>
Request path without leading &quot;/&quot; and query/ref.
</td>
    <tr><td class="param">int</td><td><td>port</td><td>
Request port.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>query</td><td>
Request query portion.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>reference</td><td>
Request reference portion.
</td>
    <tr><td class="param">RBuf *</td><td><td>response</td><td>
Buffer to hold complete response.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>responseRead</td><td>
Response has been read.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>retries</td><td>
Client implemented retry field.
</td>
    <tr><td class="param">RBuf *</td><td><td>rx</td><td>
Buffer for reading responses.
</td>
    <tr><td class="param">char *</td><td><td>rxHeaders</td><td>
Rx headers.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>rxLen</td><td>
Length of rx body.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>rxRemaining</td><td>
Rx headers.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>scheme</td><td>
Request scheme.
</td>
    <tr><td class="param">RSocket *</td><td><td>sock</td><td>
Network socket.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>status</td><td>
Response (rx) status.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga06650984137cfde185bac06dd2a4f355" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">Ticks</a></td><td><td>timeout</td><td>
Request timeout.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>txLen</td><td>
Length of tx body.
</td>
    <tr><td class="param">char *</td><td><td>urlbuf</td><td>
HTTP request method. 
Parsed and tokenized url.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/url/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>wroteHeaders</td><td>
Tx headers have been written.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="group___url_1ga1b45e2af6e79771a20f698505e839640"></a>
<div class="api">
  <div class="prototype">
    <a href="#group___url" class="ref">Url</a> *
    urlAlloc
(void )
  </div>
  <div class="apiDetail">
<p>Allocate a URL object.</p>
    <dl><dt><b>Description</b>:</dt><dd>A URL object represents a network connection on which one or more HTTP client requests may be issued one at a time.</dd></dl>
    <dl><dt>Returns:</dt><dd>The url object.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga82ca1db143e28a861a667b9801b69c5d"></a>
<div class="api">
  <div class="prototype">
    void
    urlClose
(<a href="#group___url" class="ref">Url</a> *up)
  </div>
  <div class="apiDetail">
<p>Close the underlying network socket associated with the URL object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga2c7fb498dbc6f4527dcd274802f69062"></a>
<div class="api">
  <div class="prototype">
    int
    urlFetch
(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *method, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)
  </div>
  <div class="apiDetail">
<p>Fetch a URL.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine issues a HTTP request and reads and buffers the response. This routine will block the current fiber while waiting for the request to complete. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">method</td><td>HTTP method verb.</td>
    <tr><td class="param">uri</td><td>HTTP URL to fetch.</td>
    <tr><td class="param">data</td><td>Body data for request. Set to NULL if none.</td>
    <tr><td class="param">size</td><td>Size of body data for request. Set to 0 if none.</td>
    <tr><td class="param">headers</td><td>Optional request headers. This parameter is a printf style formatted pattern with following arguments. Individual header lines must be terminated with &quot;\r\n&quot;.</td>
    <tr><td class="param">...</td><td>Optional header arguments.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Response HTTP status code. Use urlGetResponse or urlRead to read the response.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga2442d22c54e956052825700ce831a332"></a>
<div class="api">
  <div class="prototype">
    <a href="json.html#group___json" class="ref">Json</a> *
    urlFetchJson
(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *method, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)
  </div>
  <div class="apiDetail">
<p>Fetch a URL and return a JSON response.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine issues a HTTP request and reads and parses the response into a JSON object tree. This routine will block the current fiber while waiting for the request to complete. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">method</td><td>HTTP method verb.</td>
    <tr><td class="param">uri</td><td>HTTP URL to fetch.</td>
    <tr><td class="param">data</td><td>Body data for request. Set to NULL if none.</td>
    <tr><td class="param">size</td><td>Size of body data for request. Set to 0 if none.</td>
    <tr><td class="param">headers</td><td>Optional request headers. This parameter is a printf style formatted pattern with following arguments. Individual header lines must be terminated with &quot;\r\n&quot;. If the headers are not provided, a headers value of &quot;Content-Type: application/json\r\n&quot; is used.</td>
    <tr><td class="param">...</td><td>Optional header arguments.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Parsed JSON response. If the request does not return a HTTP 200 status code or the response is not JSON, the request returns NULL. Use urlGetError to get any error string and urlGetStatus to get the HTTP status code. Caller must free via jsonFree().</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1gadec04fc772b190e00ed04821e4d4e8c0"></a>
<div class="api">
  <div class="prototype">
    void
    urlFree
(<a href="#group___url" class="ref">Url</a> *up)
  </div>
  <div class="apiDetail">
<p>Free a URL object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga3cab88ff3bf927914737a2e1db56168c"></a>
<div class="api">
  <div class="prototype">
    char *
    urlGet
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)
  </div>
  <div class="apiDetail">
<p>Get a URL using a HTTP GET request.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine will block the current fiber while waiting for the request to complete. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">uri</td><td>HTTP URL to fetch.</td>
    <tr><td class="param">headers</td><td>Optional request headers. This parameter is a printf style formatted pattern with following arguments. Individual header lines must be terminated with &quot;\r\n&quot;.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Response body if successful, otherwise null. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga642db3762c5b24d93319ae152d0afd4a"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    urlGetError
(<a href="#group___url" class="ref">Url</a> *up)
  </div>
  <div class="apiDetail">
<p>Get the URL internal error message.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The URL error message for the most recent request. Returns NULL if no error message defined. Caller must NOT free this message.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga162f7a44a1a78e8aa12b9c28bcdad0bc"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    urlGetHeader
(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *header)
  </div>
  <div class="apiDetail">
<p>Get a response HTTP header.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">header</td><td>HTTP header name. This can be any case. For example: &quot;Authorization&quot;.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The value of the HTTP header. Returns NULL if not defined. Caller must NOT free the returned string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga4125beb90f428b4000aae77700aca1b0"></a>
<div class="api">
  <div class="prototype">
    <a href="json.html#group___json" class="ref">Json</a> *
    urlGetJsonResponse
(<a href="#group___url" class="ref">Url</a> *up)
  </div>
  <div class="apiDetail">
<p>Get the response to a URL request as a JSON object tree.</p>
    <dl><dt><b>Description</b>:</dt><dd>After issuing urlFetch, urlGet or urlPost, this routine may be called to read and parse the response as a JSON object. This call should only be used when the response is a valid JSON UTF-8 string. This routine buffers the entire response body and creates the parsed JSON tree. <br/><br/>
 This routine will block the current fiber while waiting for the request to complete. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The response body as parsed JSON object. Caller must free the result via jsonFree.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1gad9b32ce9095363acb1477654bc81a020"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    urlGetResponse
(<a href="#group___url" class="ref">Url</a> *up)
  </div>
  <div class="apiDetail">
<p>Get the response to a URL request.</p>
    <dl><dt><b>Description</b>:</dt><dd>After issuing urlFetch, urlGet or urlPost, this routine may be called to read, buffer and return the response body. This call should only be used when the response is a valid UTF-8 string. Otherwise, use urlRead to read the response body. As this routine buffers the entire response body, it should only be used for relatively small requests. Otherwise, the memory footprint of the application may be larger than desired. <br/><br/>
 This routine will block the current fiber while waiting for the request to complete. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The response body as a string. Caller must NOT free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga19bf405768b5920db121a38c369a8e52"></a>
<div class="api">
  <div class="prototype">
    int
    urlGetStatus
(<a href="#group___url" class="ref">Url</a> *up)
  </div>
  <div class="apiDetail">
<p>Get the HTTP response status code for a request.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The HTTP status code for the most recently completed request.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga84228a1f91b5760d206d376c8146261b"></a>
<div class="api">
  <div class="prototype">
    int
    urlParse
(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri)
  </div>
  <div class="apiDetail">
<p>Parse a URL into its constituent components in the Url structure.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">uri</td><td>Uri to parse.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if the uri parses successfully.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga8172e2ab386185d0ffcfe5d7fcc978ba"></a>
<div class="api">
  <div class="prototype">
    char *
    urlPost
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)
  </div>
  <div class="apiDetail">
<p>Issue a HTTP POST request.</p>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">uri</td><td>HTTP URL to fetch.</td>
    <tr><td class="param">data</td><td>Body data for request. Set to NULL if none.</td>
    <tr><td class="param">size</td><td>Size of body data for request.</td>
    <tr><td class="param">headers</td><td>Optional request headers. This parameter is a printf style formatted pattern with following arguments. Individual header lines must be terminated with &quot;\r\n&quot;.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Response body if successful, otherwise null. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga1df690f703f2d035fee45e886afd2832"></a>
<div class="api">
  <div class="prototype">
    <a href="json.html#group___json" class="ref">Json</a> *
    urlPostJson
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)
  </div>
  <div class="apiDetail">
<p>Issue a HTTP POST request and return parsed JSON.</p>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">uri</td><td>HTTP URL to fetch.</td>
    <tr><td class="param">data</td><td>Body data for request. Set to NULL if none.</td>
    <tr><td class="param">len</td><td>Size of body data for request.</td>
    <tr><td class="param">headers</td><td>Optional request headers. This parameter is a printf style formatted pattern with following arguments. Individual header lines must be terminated with &quot;\r\n&quot;.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Parsed JSON response. If the request does not return a HTTP 200 status code or the response is not JSON, the request returns NULL. Caller must free via jsonFree().</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga3956cf68f759d30015a4f709ff78e549"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a>
    urlRead
(<a href="#group___url" class="ref">Url</a> *up, char *buf, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize)
  </div>
  <div class="apiDetail">
<p>Read response data for a request.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine will block the current fiber if necessary. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">buf</td><td>Buffer to read into.</td>
    <tr><td class="param">bufsize</td><td>Size of the buffer.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes read. Returns &lt; 0 on errors. Returns 0 when there is no more data to read.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga7cb73f6800868b995b2d63df7c90d132"></a>
<div class="api">
  <div class="prototype">
    void
    urlSetCerts
(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *cert, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *ca, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *revoke)
  </div>
  <div class="apiDetail">
<p>Define the certificates to use with TLS.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">key</td><td>Certificate private key.</td>
    <tr><td class="param">cert</td><td>Certificate text.</td>
    <tr><td class="param">ca</td><td>Certificate authority text.</td>
    <tr><td class="param">revoke</td><td>Certificates to revoke.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1gabd4f2bdf15b9ee93b5511e6553fc72c6"></a>
<div class="api">
  <div class="prototype">
    void
    urlSetDefaultRetries
(int retries)
  </div>
  <div class="apiDetail">
<p>Set the default number of retries for requests.</p>
    <dl><dt><b>Description</b>:</dt><dd>This does not change the number of retries for existing Url objects.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">retries</td><td>Number of retries.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga602b02eb935e922ce63dd253a3b220fb"></a>
<div class="api">
  <div class="prototype">
    void
    urlSetDefaultTimeout
(int timeout)
  </div>
  <div class="apiDetail">
<p>Set the default request timeout to use for future URL instances.</p>
    <dl><dt><b>Description</b>:</dt><dd>This does not change the timeout for existing Url objects.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">timeout</td><td>Timeout in milliseconds.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga4617299e0d0b5567e3d3e9600fbde4c1"></a>
<div class="api">
  <div class="prototype">
    void
    urlSetError
(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *message, ...)
  </div>
  <div class="apiDetail">
<p>Set the URL internal error message.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">message</td><td>Printf style message format string.</td>
    <tr><td class="param">...</td><td>Message arguments.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga2a7d0e5c41224fff0edc31597399911d"></a>
<div class="api">
  <div class="prototype">
    void
    urlSetTimeout
(<a href="#group___url" class="ref">Url</a> *up, int timeout)
  </div>
  <div class="apiDetail">
<p>Set the request timeout to use for the specific URL object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">timeout</td><td>Timeout in milliseconds.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1ga192b95298d355f323c76414785f91545"></a>
<div class="api">
  <div class="prototype">
    void
    urlSetVerify
(<a href="#group___url" class="ref">Url</a> *up, int verifyPeer, int verifyIssuer)
  </div>
  <div class="apiDetail">
<p>Control verification of TLS connections.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">verifyPeer</td><td>Set to true to verify the certificate of the remote peer.</td>
    <tr><td class="param">verifyIssuer</td><td>Set to true to verify the issuer of the peer certificate.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1gaee9f42b7266d310ae796942a5df8d585"></a>
<div class="api">
  <div class="prototype">
    int
    urlStart
(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *method, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *uri, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> txLen)
  </div>
  <div class="apiDetail">
<p>Start a Url request.</p>
    <dl><dt><b>Description</b>:</dt><dd>This is a low level API that initiates a connection to a remote HTTP resource. Use urlWriteHeaders and urlWrite to send the request.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">method</td><td>HTTP method verb.</td>
    <tr><td class="param">uri</td><td>HTTP URL to fetch.</td>
    <tr><td class="param">txLen</td><td>Content length of request body. This must match the length of data written with urlWrite. Set to -1 if the content length is not known.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1gad65a2cd6595cdb8ac0bb19cde4734289"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a>
    urlWrite
(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size)
  </div>
  <div class="apiDetail">
<p>Write body data for a request.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine will block the current fiber. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">data</td><td>Buffer of data to write.</td>
    <tr><td class="param">size</td><td>Length of data to write.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes actually written.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___url_1gaad656a710930ec0e33fdf778888e77c0"></a>
<div class="api">
  <div class="prototype">
    int
    urlWriteHeaders
(<a href="#group___url" class="ref">Url</a> *up, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)
  </div>
  <div class="apiDetail">
<p>Write request headers.</p>
    <dl><dt><b>Description</b>:</dt><dd>This will write the HTTP request line and supplied headers. If Host and/or Content-Length are not supplied, they will be added if known. This routine will block the current fiber. Other fibers continue to run.</dd></dl>
    <dl><dt></dt><dd>Must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">headers</td><td>Optional request headers. This parameter is a printf style formatted pattern with following arguments. Individual header lines must be terminated with &quot;\r\n&quot;.</td>
    <tr><td class="param">...</td><td>Optional header arguments.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>

## Typedefs

<a name="group___url_1gac9521a16b4817d961ccb68b9f2b7c95b"></a>
<div class="api">
  <div class="prototype">
    typedef void(* UrlProc) (struct Url *up, int event, char *buf, ssize len).
  </div>
  <div class="apiDetail">
<p>URL callback procedure.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>URL object.</td>
    <tr><td class="param">event</td><td>Type of event. Set to URL_NOTIFY_IO, URL_NOTIFY_RETRY or URL_NOTIFY_DONE.</td>
    <tr><td class="param">buf</td><td>Associated data.</td>
    <tr><td class="param">len</td><td>Associated data length.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>

