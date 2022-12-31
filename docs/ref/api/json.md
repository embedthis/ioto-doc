# JSON API

The JSON library provides JSON parsing, serialization and query capabilities. The library can parse strings and read files containing JSON text.

JSON can be read and serialized in strict JSON or in the more human readable JSON/5 format. When parsed, JSON is stored in-memory in a binary search tree for efficient querying. The library supports searching, querying and updating JSON values using dot and array notation.

The library supports the JSON and JSON/5 formats. JSON/5 is an extension of JSON that makes it easier to create, read and maintain configuration files in JSON. JSON/5 supports the following features to JSON:

* Object keys may be JavaScript identifiers without quotes.
* Objects or arrays may have a trailing comma.
* Strings may be single quoted.
* Strings may span multiple lines (single, double or back-tick quotes).
* Numbers may have a leading or trailing decimal point, be hexadecimal, may begin with a plus
* Values may be regular expressions.
* Undefined is a valid value.
* Single and multiline comments are allowed and preserved.



<a name="Extensions"></a>
## Extensions

  <table class="apiIndex" title="Extensions">
<tr class="apiDef">
<td class="apiName"><a href="#group___json" class="nameRef">Json</a></td>
<td class="apiBrief">JSON Object.</td></tr>
</table>
<a name="Functions"></a>
## Functions

  <table class="apiIndex" title="Functions">
<tr class="apiDef"><td class="apiType"><a href="#group___json" class="ref">Json*</a></td><td><a href="#group___json_1gaca78f6efe191219957470c8ab8d790a9" class="nameRef">jsonAlloc</a>(int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate a json object.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___json_1ga9ba93af5829068465665e4a8abc26829" class="nameRef">jsonBlend</a>(<a href="#group___json" class="ref">Json</a> *dest, int did, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *dkey, <a href="#group___json" class="ref">Json</a> *src, int sid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *skey, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Blend nodes by copying from one Json to another.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#group___json" class="ref">Json*</a></td><td><a href="#group___json_1ga643e7c12021c99740d80de0f44cd48d1" class="nameRef">jsonClone</a>(<a href="#group___json" class="ref">Json</a> *src, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Clone a json object.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___json_1ga7a4e86175640967ff1a2eb2592595c22" class="nameRef">jsonFree</a>(<a href="#group___json" class="ref">Json</a> *json)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a json object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___json_1ga3ceec75f52f6dd5798a29cd2813c1c3c" class="nameRef">jsonGet</a>(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a json node value as a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a></td><td><a href="#group___json_1gae20da9a6893b60eb456b65b3dbc5d06b" class="nameRef">jsonGetBool</a>(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> defaultValue)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a json node value as a boolean.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#struct_json_node" class="ref">JsonNode*</a></td><td><a href="#group___json_1ga9204b4baef583a74adb0fce508568f64" class="nameRef">jsonGetChildNode</a>(<a href="#group___json" class="ref">Json</a> *json, int nid, int nth)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the Nth child node for a json node.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___json_1ga5c29505035b5e16a55f92dfb2cdf1012" class="nameRef">jsonGetId</a>(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a json node ID.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#struct_json_node" class="ref">JsonNode*</a></td><td><a href="#group___json_1gaee5ca0f227008c8480c64d42cd3691f2" class="nameRef">jsonGetNode</a>(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a json node object.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___json_1ga80188ee148b40aac962d92bb5f9aee04" class="nameRef">jsonGetNum</a>(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, int defaultValue)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a json node value as an integer.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___json_1gada3b65456bfca0a48348bc86b204ef4d" class="nameRef">jsonGetType</a>(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the value type for a node.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#group___json" class="ref">Json*</a></td><td><a href="#group___json_1ga199f45f83998ad2272ebf3c653a179ab" class="nameRef">jsonParse</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *text, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Parse a json string into a json object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#group___json" class="ref">Json*</a></td><td><a href="#group___json_1gabe29ca01a468f644d299667763e99b95" class="nameRef">jsonParseFile</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, char **errorMsg, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Load a JSON object from a filename.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#group___json" class="ref">Json*</a></td><td><a href="#group___json_1ga198e16e4fcbec7d2545dd369a614b8cb" class="nameRef">jsonParseString</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *text, char **errorMsg, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Parse a JSON string into an object tree and return any errors.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___json_1gaf4ba76c4c8aaacf67f392c7d932e9391" class="nameRef">jsonPrint</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *label, <a href="#group___json" class="ref">Json</a> *json)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Print a JSON object.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___json_1ga84cce656da3fe4d279b9d0db2f18d91a" class="nameRef">jsonRemove</a>(<a href="#group___json" class="ref">Json</a> *obj, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Remove a Property from a JSON object.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___json_1gacfc633df6228e3295e6a04b6da42bc00" class="nameRef">jsonSave</a>(<a href="#group___json" class="ref">Json</a> *obj, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, int mode, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Save a JSON object to a filename.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___json_1gaeebd22fc330c08a802c882d19b16d53a" class="nameRef">jsonSet</a>(<a href="#group___json" class="ref">Json</a> *obj, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, int type)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Update a key/value in the JSON object with a string value.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___json_1ga8f827a05f77ea1fc5c06ec3e37714cc4" class="nameRef">jsonSetBool</a>(<a href="#group___json" class="ref">Json</a> *obj, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> value)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Update a property in the JSON object with a boolean value.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___json_1ga473e19c96d686fe08ca18d0acc2ea9f1" class="nameRef">jsonSetDate</a>(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a> value)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Update a property in the JSON object with date value.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___json_1ga512bbc3846acbea5f78736a639638157" class="nameRef">jsonSetDouble</a>(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, double value)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Update a property with a floating point number value.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___json_1ga1dbb2de72b137d16cc2ea5431e352829" class="nameRef">jsonSetNodeType</a>(<a href="#struct_json_node" class="ref">JsonNode</a> *node, int type)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Update a node type.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___json_1ga6d2ea5e46fc74d016561ffb7c28a514e" class="nameRef">jsonSetNodeValue</a>(<a href="#struct_json_node" class="ref">JsonNode</a> *node, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, int type, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Directly update a node value.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___json_1ga0e00046d7406f934aaefa25d626cbf07" class="nameRef">jsonSetNumber</a>(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Update a property in the JSON object with a numeric value.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___json_1ga603355b5d620164d13ba4d46241068c1" class="nameRef">jsonString</a>(<a href="#group___json" class="ref">Json</a> *json)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Serialize an entire JSON object into a string using a human readable format (JSON_PRETTY).</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___json_1gaaf6c69f0cfb11d411820831fcc433863" class="nameRef">jsonTemplate</a>(<a href="#group___json" class="ref">Json</a> *json, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Expand a string template with ${prop.prop...} references.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___json_1ga75ff4b2328e8928c0456f9a412e033c5" class="nameRef">jsonToBuf</a>(<a href="r.html#group___r_buf" class="ref">RBuf</a> *buf, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a json value to serialized JSON representation and save in the given buffer.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___json_1gaaa118cefeb3521ea51613ba9a9b8bb1c" class="nameRef">jsonToString</a>(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Serialize a JSON object into a string.</td></tr>
</table>
<a name="Typedefs"></a>
## Typedefs

<table class="apiIndex" title="typedefs">
<tr class="apiDef"><td class="apiName"><a href="#struct_json_node" class="nameRef">JsonNode</a></td><td class="apiBrief">JSON Node.</td></tr>
</table>
<a name="Defines"></a>
## Defines

<table class="apiIndex" title="Defines">
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1af4230313ed0c1f56128228c680d8779f" class="nameRef">ITERATE_JSON</a>&nbsp;&nbsp;&nbsp;    nid = (int) ((parent ? parent : json-&gt;nodes) - json-&gt;nodes + 1); \
        (json-&gt;count &gt; 0) &amp;&amp; json-&gt;nodes &amp;&amp; \
        (nid &lt; (parent ? parent : json-&gt;nodes)-&gt;last) &amp;&amp; \
        ((child = &amp;json-&gt;nodes[nid]) != 0); \
    nid = child-&gt;last</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>This iterates over the children under the &quot;parent&quot; id.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1ac5035506ec55f90113234566f39781a4" class="nameRef">JSON_APPEND</a>&nbsp;&nbsp;&nbsp;0x4</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Default to append to existing &apos;+&apos; (default).</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1afd80cb6f5b8d383fdfcaf2a13dafaafc" class="nameRef">JSON_CCREATE</a>&nbsp;&nbsp;&nbsp;0x10</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Conditional create if not already existing &apos;?&apos;.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1aed17088cbe969941e671ed00518837c8" class="nameRef">JSON_COMBINE</a>&nbsp;&nbsp;&nbsp;0x1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Combine properies using &apos;+&apos; &apos;-&apos; &apos;=&apos; &apos;?&apos; prefixes.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1a9dcbf171754a55075a51cf0c518a622c" class="nameRef">JSON_OVERWRITE</a>&nbsp;&nbsp;&nbsp;0x2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Default to overwrite existing properies &apos;=&apos;.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1aef8288834e27cf59ea358d8e092726e6" class="nameRef">JSON_PASS_TEXT</a>&nbsp;&nbsp;&nbsp;0x4</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Transfer ownership of the parsed text to json.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1acc94e6b77a90204b40e3d25f9670f680" class="nameRef">JSON_PRETTY</a>&nbsp;&nbsp;&nbsp;0x10</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Save in Json6 format without quotes arounds keys.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1a14d94e334cb30b87632192562fc913f3" class="nameRef">JSON_PRIMITIVE</a>&nbsp;&nbsp;&nbsp;0x10</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>True, false, null, undefined, number.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1acfbbf9239edbbfa727c9ae5bb3bf0de1" class="nameRef">JSON_QUOTES</a>&nbsp;&nbsp;&nbsp;0x20</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Save in strict JSON format.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1a57689c9304f82af5a5b600afb0e4480e" class="nameRef">JSON_REGEXP</a>&nbsp;&nbsp;&nbsp;0x20</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Regular expressions.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1a2270be723b40d00d4cfbe42aac8601e4" class="nameRef">JSON_REMOVE_UNDEF</a>&nbsp;&nbsp;&nbsp;0x20</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Remove undefined (NULL) properties.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1ac3f9bd8e46decf3fe63a6ffe88995558" class="nameRef">JSON_REPLACE</a>&nbsp;&nbsp;&nbsp;0x8</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Replace existing properies &apos;-&apos;.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1a91798d4bc15764a053558b429f3f2546" class="nameRef">JSON_SINGLE</a>&nbsp;&nbsp;&nbsp;0x2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Save objects on a sinle line where possible.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1a1c606f797875f109f2e67475f436ae29" class="nameRef">JSON_STRICT</a>&nbsp;&nbsp;&nbsp;0x1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Expect strict JSON format.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#json_8h_1adea584ac98210649e2edf68941091356" class="nameRef">JSON_STRING</a>&nbsp;&nbsp;&nbsp;0x8</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Strings including dates encoded as ISO strings.</td></tr>
  </table>

## Json

<a name="group___json"></a>
<div class="api">
  <div class="prototype">Json</div>
  <div class="apiDetail">
<p>JSON Object.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/json/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>count</td><td>
Number of allocated nodes (count &lt;= size).
</td>
    <tr><td class="param">char *</td><td><td>end</td><td>
End of text + 1.
</td>
    <tr><td class="param">char *</td><td><td>errorMsg</td><td>
Parsing error details.
</td>
    <tr><td class="param">REvent</td><td><td>event</td><td>
Saving event.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/json/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>flags</td><td>
Use defined bits.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/json/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>lineNumber</td><td>
Current parse line number.
</td>
    <tr><td class="param">char *</td><td><td>next</td><td>
Pointer to next token.
</td>
    <tr><td class="param">char *</td><td><td>path</td><td>
Filename being parsed.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/json/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>size</td><td>
Size of Json.nodes in elements (includes spare).
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/json/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>strict</td><td>
Strict JSON standard mode.
</td>
    <tr><td class="param">char *</td><td><td>text</td><td>
Text being parsed.
</td>
    <tr><td class="param">char *</td><td><td>value</td><td>
Result from jsonString.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="group___json_1gaca78f6efe191219957470c8ab8d790a9"></a>
<div class="api">
  <div class="prototype">
    <a href="#group___json" class="ref">Json</a> *
    jsonAlloc
(int flags)
  </div>
  <div class="apiDetail">
<p>Allocate a json object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">flags</td><td>Set to one JSON_STRICT for strict JSON parsing. Otherwise permits JSON/5.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A json object.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga9ba93af5829068465665e4a8abc26829"></a>
<div class="api">
  <div class="prototype">
    int
    jsonBlend
(<a href="#group___json" class="ref">Json</a> *dest, int did, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *dkey, <a href="#group___json" class="ref">Json</a> *src, int sid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *skey, int flags)
  </div>
  <div class="apiDetail">
<p>Blend nodes by copying from one Json to another.</p>
    <dl><dt><b>Description</b>:</dt><dd>This performs an N-level deep clone of the source JSON nodes to be blended into the destination object. By default, this add new object properies and overwrite arrays and string values. The Property combination prefixes: &apos;+&apos;, &apos;=&apos;, &apos;-&apos; and &apos;?&apos; to append, overwrite, replace and conditionally overwrite are supported if the JSON_COMBINE flag is present.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">dest</td><td>Destination json.</td>
    <tr><td class="param">did</td><td>Base node ID from which to store the copied nodes.</td>
    <tr><td class="param">dkey</td><td>Destination property name to search for.</td>
    <tr><td class="param">src</td><td>Source json.</td>
    <tr><td class="param">sid</td><td>Base node ID from which to copy nodes.</td>
    <tr><td class="param">skey</td><td>Source property name to search for.</td>
    <tr><td class="param">flags</td><td>The JSON_COMBINE flag enables Property name prefixes: &apos;+&apos;, &apos;=&apos;, &apos;-&apos;, &apos;?&apos; to append, overwrite, replace and conditionally overwrite key values if not already present. When adding string properies, values will be appended using a space separator. Extra spaces will not be removed on replacement. <br/><br/>
 Without JSON_COMBINE or for properies without a prefix, the default is to blend objects by creating new properies if not already existing in the destination, and to treat overwrite arrays and strings. Use the JSON_OVERWRITE flag to override the default appending of objects and rather overwrite existing properies. Use the JSON_APPEND flag to override the default of overwriting arrays and strings and rather append to existing properies.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga643e7c12021c99740d80de0f44cd48d1"></a>
<div class="api">
  <div class="prototype">
    <a href="#group___json" class="ref">Json</a> *
    jsonClone
(<a href="#group___json" class="ref">Json</a> *src, int flags)
  </div>
  <div class="apiDetail">
<p>Clone a json object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">src</td><td>Input json object.</td>
    <tr><td class="param">flags</td><td>Reserved, set to zero.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The copied JSON tree. Caller must free with <a class="ref" href="#group___json_1ga7a4e86175640967ff1a2eb2592595c22">jsonFree</a></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga7a4e86175640967ff1a2eb2592595c22"></a>
<div class="api">
  <div class="prototype">
    void
    jsonFree
(<a href="#group___json" class="ref">Json</a> *json)
  </div>
  <div class="apiDetail">
<p>Free a json object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>A json object.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga3ceec75f52f6dd5798a29cd2813c1c3c"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    jsonGet
(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)
  </div>
  <div class="apiDetail">
<p>Get a json node value as a string.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Source json.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to examine. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to search for. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    <tr><td class="param">defaultValue</td><td>If the key is not defined, return the defaultValue.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The key value as a string or defaultValue if not defined.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1gae20da9a6893b60eb456b65b3dbc5d06b"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a>
    jsonGetBool
(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> defaultValue)
  </div>
  <div class="apiDetail">
<p>Get a json node value as a boolean.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Source json.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to examine. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to search for. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    <tr><td class="param">defaultValue</td><td>If the key is not defined, return the defaultValue.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The key value as a boolean or defaultValue if not defined.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga9204b4baef583a74adb0fce508568f64"></a>
<div class="api">
  <div class="prototype">
    <a href="#struct_json_node" class="ref">JsonNode</a> *
    jsonGetChildNode
(<a href="#group___json" class="ref">Json</a> *json, int nid, int nth)
  </div>
  <div class="apiDetail">
<p>Get the Nth child node for a json node.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Source json.</td>
    <tr><td class="param">nid</td><td>Base node ID to examine.</td>
    <tr><td class="param">nth</td><td>Specify which child to return.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The Nth child node object for the specified node.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga5c29505035b5e16a55f92dfb2cdf1012"></a>
<div class="api">
  <div class="prototype">
    int
    jsonGetId
(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key)
  </div>
  <div class="apiDetail">
<p>Get a json node ID.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Source json.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to start the search. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to search for. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The node ID for the specified key.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1gaee5ca0f227008c8480c64d42cd3691f2"></a>
<div class="api">
  <div class="prototype">
    <a href="#struct_json_node" class="ref">JsonNode</a> *
    jsonGetNode
(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key)
  </div>
  <div class="apiDetail">
<p>Get a json node object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Source json.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to start the search. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to search for. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The node object for the specified key. Returns NULL if not found.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga80188ee148b40aac962d92bb5f9aee04"></a>
<div class="api">
  <div class="prototype">
    int
    jsonGetNum
(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, int defaultValue)
  </div>
  <div class="apiDetail">
<p>Get a json node value as an integer.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Source json.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to examine. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to search for. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    <tr><td class="param">defaultValue</td><td>If the key is not defined, return the defaultValue.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The key value as an integer or defaultValue if not defined.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1gada3b65456bfca0a48348bc86b204ef4d"></a>
<div class="api">
  <div class="prototype">
    int
    jsonGetType
(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key)
  </div>
  <div class="apiDetail">
<p>Get the value type for a node.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Source json.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to start the search.</td>
    <tr><td class="param">key</td><td>Property name to search for. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The data type. Set to JSON_OBJECT, JSON_ARRAY, JSON_COMMENT, JSON_STRING, JSON_PRIMITIVE or JSON_REGEXP.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga199f45f83998ad2272ebf3c653a179ab"></a>
<div class="api">
  <div class="prototype">
    <a href="#group___json" class="ref">Json</a> *
    jsonParse
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *text, int flags)
  </div>
  <div class="apiDetail">
<p>Parse a json string into a json object.</p>
    <dl><dt><b>Description</b>:</dt><dd>Use this method if you are sure the supplied JSON text is valid. Use jsonParseString if you need to receive notification of parse errors.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">text</td><td>Json string to parse.</td>
    <tr><td class="param">flags</td><td>Set to JSON_STRICT to parse json, otherwise a relaxed json6 syntax is supported. Set JSON_PASS_TEXT to transfer ownership of the text to json which will free when jsonFree is called.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Json object if successful. Caller must free via jsonFree. Returns null if the text will not parse.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1gabe29ca01a468f644d299667763e99b95"></a>
<div class="api">
  <div class="prototype">
    <a href="#group___json" class="ref">Json</a> *
    jsonParseFile
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, char **errorMsg, int flags)
  </div>
  <div class="apiDetail">
<p>Load a JSON object from a filename.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">path</td><td>Filename path containing a JSON string to load.</td>
    <tr><td class="param">errorMsg</td><td>Error message string set if the parse fails. Caller must not free.</td>
    <tr><td class="param">flags</td><td>Set to JSON_STRICT to parse json, otherwise a relaxed json6 syntax is supported.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>JSON object tree. Caller must free errorMsg via rFree on errors.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga198e16e4fcbec7d2545dd369a614b8cb"></a>
<div class="api">
  <div class="prototype">
    <a href="#group___json" class="ref">Json</a> *
    jsonParseString
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *text, char **errorMsg, int flags)
  </div>
  <div class="apiDetail">
<p>Parse a JSON string into an object tree and return any errors.</p>
    <dl><dt><b>Description</b>:</dt><dd>Deserializes a JSON string created into an object. The top level of the JSON string must be an object, array, string, number or boolean value.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">text</td><td>JSON string to deserialize.</td>
    <tr><td class="param">errorMsg</td><td>Error message string set if the parse fails. Caller must not free.</td>
    <tr><td class="param">flags</td><td>Set to JSON_STRICT to parse json, otherwise a relaxed json6 syntax is supported. Set JSON_PASS_TEXT to transfer ownership of the text to json which will free when jsonFree is called.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a tree of Json objects. Each object represents a level in the JSON input stream. Caller must free errorMsg via rFree on errors.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1gaf4ba76c4c8aaacf67f392c7d932e9391"></a>
<div class="api">
  <div class="prototype">
    void
    jsonPrint
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *label, <a href="#group___json" class="ref">Json</a> *json)
  </div>
  <div class="apiDetail">
<p>Print a JSON object.</p>
    <dl><dt><b>Description</b>:</dt><dd>Prints a JSON object in pretty format.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">label</td><td>Text label to print before the json object.</td>
    <tr><td class="param">json</td><td>Source json.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga84cce656da3fe4d279b9d0db2f18d91a"></a>
<div class="api">
  <div class="prototype">
    int
    jsonRemove
(<a href="#group___json" class="ref">Json</a> *obj, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key)
  </div>
  <div class="apiDetail">
<p>Remove a Property from a JSON object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">obj</td><td>Parsed JSON object returned by jsonParse.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to start searching for key. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to remove for. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a JSON object array of all removed properies. Array will be empty if not qualifying properies were found and removed.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1gacfc633df6228e3295e6a04b6da42bc00"></a>
<div class="api">
  <div class="prototype">
    int
    jsonSave
(<a href="#group___json" class="ref">Json</a> *obj, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, int mode, int flags)
  </div>
  <div class="apiDetail">
<p>Save a JSON object to a filename.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">obj</td><td>Parsed JSON object returned by jsonParse.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to start searching for key. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to add/update. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    <tr><td class="param">path</td><td>Filename path to contain the saved JSON string.</td>
    <tr><td class="param">flags</td><td>Same flags as for <a class="ref" href="#group___json_1gaaa118cefeb3521ea51613ba9a9b8bb1c">jsonToString</a>: JSON_PRETTY, JSON_QUOTES.</td>
    <tr><td class="param">mode</td><td>Permissions mode.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful, otherwise a negative RT error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1gaeebd22fc330c08a802c882d19b16d53a"></a>
<div class="api">
  <div class="prototype">
    int
    jsonSet
(<a href="#group___json" class="ref">Json</a> *obj, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, int type)
  </div>
  <div class="apiDetail">
<p>Update a key/value in the JSON object with a string value.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call takes a multipart Property name and will operate at any level of depth in the JSON object.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">obj</td><td>Parsed JSON object returned by jsonParse.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to start search for key. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to add/update. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    <tr><td class="param">value</td><td>Character string value.</td>
    <tr><td class="param">type</td><td>Set to JSON_ARRAY, JSON_OBJECT, JSON_PRIMITIVE or JSON_STRING.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Positive node id if updated successfully. Otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga8f827a05f77ea1fc5c06ec3e37714cc4"></a>
<div class="api">
  <div class="prototype">
    int
    jsonSetBool
(<a href="#group___json" class="ref">Json</a> *obj, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> value)
  </div>
  <div class="apiDetail">
<p>Update a property in the JSON object with a boolean value.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call takes a multipart Property name and will operate at any level of depth in the JSON object.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">obj</td><td>Parsed JSON object returned by jsonParse.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to start search for key. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to add/update. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    <tr><td class="param">value</td><td>Boolean string value.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Positive node id if updated successfully. Otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga473e19c96d686fe08ca18d0acc2ea9f1"></a>
<div class="api">
  <div class="prototype">
    int
    jsonSetDate
(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a> value)
  </div>
  <div class="apiDetail">
<p>Update a property in the JSON object with date value.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call takes a multipart Property name and will operate at any level of depth in the JSON object.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Parsed JSON object returned by jsonParse.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to start search for key. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to add/update. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    <tr><td class="param">value</td><td>Date value expressed as a Time (Elapsed milliseconds since Jan 1, 1970).</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Positive node id if updated successfully. Otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga512bbc3846acbea5f78736a639638157"></a>
<div class="api">
  <div class="prototype">
    int
    jsonSetDouble
(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, double value)
  </div>
  <div class="apiDetail">
<p>Update a property with a floating point number value.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call takes a multipart Property name and will operate at any level of depth in the JSON object.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Parsed JSON object returned by jsonParse.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to start search for key. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to add/update. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    <tr><td class="param">value</td><td>Double floating point value.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Positive node id if updated successfully. Otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga1dbb2de72b137d16cc2ea5431e352829"></a>
<div class="api">
  <div class="prototype">
    void
    jsonSetNodeType
(<a href="#struct_json_node" class="ref">JsonNode</a> *node, int type)
  </div>
  <div class="apiDetail">
<p>Update a node type.</p>
    <dl><dt><b>Description</b>:</dt><dd>This is an internal API and is subject to change without notice. It offers a higher performance path to update node types.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">node</td><td>Json node.</td>
    <tr><td class="param">type</td><td>Json node type.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga6d2ea5e46fc74d016561ffb7c28a514e"></a>
<div class="api">
  <div class="prototype">
    void
    jsonSetNodeValue
(<a href="#struct_json_node" class="ref">JsonNode</a> *node, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, int type, int flags)
  </div>
  <div class="apiDetail">
<p>Directly update a node value.</p>
    <dl><dt><b>Description</b>:</dt><dd>This is an internal API and is subject to change without notice. It offers a higher performance path to update node values.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">node</td><td>Json node.</td>
    <tr><td class="param">value</td><td>String value to update with.</td>
    <tr><td class="param">type</td><td>Json node type.</td>
    <tr><td class="param">flags</td><td>Set to JSON_PASS_TEXT to transfer ownership of a string. JSON will then free.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga0e00046d7406f934aaefa25d626cbf07"></a>
<div class="api">
  <div class="prototype">
    int
    jsonSetNumber
(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="r.html#osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value)
  </div>
  <div class="apiDetail">
<p>Update a property in the JSON object with a numeric value.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call takes a multipart Property name and will operate at any level of depth in the JSON object.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Parsed JSON object returned by jsonParse.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to start search for key. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to add/update. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    <tr><td class="param">value</td><td>Number to update.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Positive node id if updated successfully. Otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga603355b5d620164d13ba4d46241068c1"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    jsonString
(<a href="#group___json" class="ref">Json</a> *json)
  </div>
  <div class="apiDetail">
<p>Serialize an entire JSON object into a string using a human readable format (JSON_PRETTY).</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Source json.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a serialized JSON character string. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1gaaf6c69f0cfb11d411820831fcc433863"></a>
<div class="api">
  <div class="prototype">
    char *
    jsonTemplate
(<a href="#group___json" class="ref">Json</a> *json, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Expand a string template with ${prop.prop...} references.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Json object.</td>
    <tr><td class="param">str</td><td>String template to expand.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>An allocated expanded string. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1ga75ff4b2328e8928c0456f9a412e033c5"></a>
<div class="api">
  <div class="prototype">
    void
    jsonToBuf
(<a href="r.html#group___r_buf" class="ref">RBuf</a> *buf, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, int flags)
  </div>
  <div class="apiDetail">
<p>Convert a json value to serialized JSON representation and save in the given buffer.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Destination buffer.</td>
    <tr><td class="param">value</td><td>Value to convert.</td>
    <tr><td class="param">flags</td><td>Json flags.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___json_1gaaa118cefeb3521ea51613ba9a9b8bb1c"></a>
<div class="api">
  <div class="prototype">
    char *
    jsonToString
(<a href="#group___json" class="ref">Json</a> *json, int nid, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, int flags)
  </div>
  <div class="apiDetail">
<p>Serialize a JSON object into a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>Serializes a top level JSON object created via jsonParse into a characters string in JSON format.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">json</td><td>Source json.</td>
    <tr><td class="param">nid</td><td>Base node ID from which to convert. Set to zero for the top level.</td>
    <tr><td class="param">key</td><td>Property name to serialize below. This may include &quot;.&quot;. For example: &quot;settings.mode&quot;.</td>
    <tr><td class="param">flags</td><td>Serialization flags. Supported flags include JSON_PRETTY for a human-readable multiline format. JSON_QUOTES to wrap Property names in quotes. Use JSON_QUOTES to emit all Property values as quoted strings.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a serialized JSON character string. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>

## Typedefs

<a name="struct_json_node"></a>
<div class="api">
  <div class="prototype">JsonNode</div>
  <div class="apiDetail">
<p>JSON Node.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/json/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>allocatedName</td><td>
True if the node text was allocated and must be freed.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/json/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>allocatedValue</td><td>
True if the node text was allocated and must be freed.
</td>
    <tr><td class="param">int</td><td><td>last</td><td>
Index +1 of last node for which this node is parent.
</td>
    <tr><td class="param">char *</td><td><td>name</td><td>
Property name - null terminated.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/json/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>type</td><td>
Primitive type of the node (object, array, string or primitive).
</td>
    <tr><td class="param">char *</td><td><td>value</td><td>
Property value - null terminated.
</td>
    </table></dd></dl>
  </div>
</div>

