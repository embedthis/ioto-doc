# Crypt API

The crypt library provides a minimal set of crypto for connected devices.
It provides Base64 encode/decode, MD5, SHA256, Bcrypt crypto and password utilities.



<a name="Extensions"></a>
## Extensions

  <table class="apiIndex" title="Extensions">
<tr class="apiDef">
<td class="apiName"><a href="#group___crypt" class="nameRef">Crypt</a></td>
<td class="apiBrief">Minimal Crypto Library.</td></tr>
</table>
<a name="Functions"></a>
## Functions

  <table class="apiIndex" title="Functions">
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#osdep_8h_1ad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a></td><td><a href="#group___crypt_1ga96bcefb0f66a265557fff0f7c99cfddb" class="nameRef">cryptCheckPassword</a>(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *plainTextPassword, <a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *passwordHash)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Check a plain-text password against a password hash.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1ga1347655aff5456bed01714017e3c8077" class="nameRef">cryptDecode64</a>(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Decode a block that has been base64 encoded.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1ga93a710fe30f13c2f6b02d93f691cb073" class="nameRef">cryptDecode64Block</a>(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> *len, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Decode a block that has been base64 encoded.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1ga7841f34e227d7d0a4b743bc42affa811" class="nameRef">cryptEncode64</a>(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Encode a string using base64 encoding.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1gab4cdf7e0e3f0c256fd057340c83cea16" class="nameRef">cryptEncode64Block</a>(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Encode a block using base64 encoding.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1ga2999383840207c5c2d2ee7d91af4c2b1" class="nameRef">cryptGetFileMd5</a>(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *path)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get an MD5 string hash for a file.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1gad053ae10f8814696aca9f4b521c021bd" class="nameRef">cryptGetFileSha256</a>(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *path)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a SHA256 hash for the contents of a file.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1ga7b1c2b34bc0c5b0b9bae8b7cced8df47" class="nameRef">cryptGetMd5</a>(<a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get an MD5 hash for a block and return a string hash.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___crypt_1ga5c7ebf3c45e3df4afe99ba08fb3ef3f4" class="nameRef">cryptGetMd5Block</a>(<a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length, <a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> hash[CRYPT_MD5_SIZE])</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get an MD5 hash for a block and return a binary hash.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1gaf3ff876d244be30ebb110ef13431c57b" class="nameRef">cryptGetPassword</a>(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *prompt)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Read a password from the console.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___crypt_1gaed31a633370efe6174b29606c89215f2" class="nameRef">cryptGetRandomBytes</a>(char *buf, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length, <a href="r.html#osdep.html#osdep_8h_1ad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> block)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get random data.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1ga5295120b665b55bd5859671edbbe95b4" class="nameRef">cryptGetSha256</a>(<a href="r.html#osdep.html#osdep_8h_1ad5d9ae5e2ea7e75aa605e36485987fc2" class="ref">cuchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a SHA256 hash for a block and return a string hash.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___crypt_1gaa56209733ebcbec4ae64e09f5d0eee60" class="nameRef">cryptGetSha256Block</a>(<a href="r.html#osdep.html#osdep_8h_1ad5d9ae5e2ea7e75aa605e36485987fc2" class="ref">cuchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length, <a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> hash[CRYPT_SHA256_SIZE])</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a SHA256 hash for a block and return a binary hash.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1gacbcf67d58dd8b323e05cf0824e1f64b6" class="nameRef">cryptMakePassword</a>(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *password, int saltLength, int rounds)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Make a password using the Blowfish cipher (Bcrypt).</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___crypt_1gaf259536bb620790d0a236bc248a138ff" class="nameRef">cryptMd5Finalize</a>(<a href="#struct_r_md5" class="ref">RMd5</a> *ctx, <a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> digest[CRYPT_MD5_SIZE]),typedef,struct,RSha256</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Low level MD5 hashing API to finalize an MD5 hash compuation and return a binary hash result.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1ga6708a45a5a4bb4246560b4cba846e4cc" class="nameRef">cryptMd5HashToString</a>(<a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> hash[CRYPT_MD5_SIZE])</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert an MD5 hash to a hex string.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___crypt_1gad2a2bef2c2713fd5c98e5131ef4b5cf5" class="nameRef">cryptMd5Init</a>(<a href="#struct_r_md5" class="ref">RMd5</a> *ctx)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Low level MD5 hashing API to initialize an MD5 hash computation.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___crypt_1ga5866217629371baaf57b307bf5079167" class="nameRef">cryptMd5Update</a>(<a href="#struct_r_md5" class="ref">RMd5</a> *ctx, <a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a91ad9478d81a7aaf2593e8d9c3d06a14" class="ref">uint</a> length)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Low level MD5 hashing API to update an MD5 hash computation with a block of data.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___crypt_1ga1917efb9f2262bc5a97b61a7e9223010" class="nameRef">cryptSha256Finalize</a>(<a href="#crypt_8h_1a3502b5b2bd83f733a207cc348145cdac" class="ref">RSha256</a> *ctx, <a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> hash[CRYPT_SHA256_SIZE])</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Low level SHA256 hashing API to finalize a SHA256 hash compuation and return a binary result.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___crypt_1gaa52dc0b936028f8bd154e7968d900bc1" class="nameRef">cryptSha256HashToString</a>(<a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> hash[CRYPT_SHA256_SIZE])</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a SHA256 hash to a string.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___crypt_1ga9383dc5975280053290784fff4fa29b6" class="nameRef">cryptSha256Init</a>(<a href="#crypt_8h_1a3502b5b2bd83f733a207cc348145cdac" class="ref">RSha256</a> *ctx)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Low level SHA256 hashing API to initialize a SHA256 hash computation.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___crypt_1gaedb3515be55f7c5b7fcd92c85ac2a529" class="nameRef">cryptSha256Start</a>(<a href="#crypt_8h_1a3502b5b2bd83f733a207cc348145cdac" class="ref">RSha256</a> *ctx)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Low level SHA256 hashing API to start a SHA256 hash computation.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___crypt_1ga94b97c277fb145f3e9747c162836024d" class="nameRef">cryptSha256Term</a>(<a href="#crypt_8h_1a3502b5b2bd83f733a207cc348145cdac" class="ref">RSha256</a> *ctx)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Low level SHA256 hashing API to terminate a SHA256 hash compuation.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___crypt_1gabaddccda081b18d139fd7cce0586a78f" class="nameRef">cryptSha256Update</a>(<a href="#crypt_8h_1a3502b5b2bd83f733a207cc348145cdac" class="ref">RSha256</a> *ctx, <a href="r.html#osdep.html#osdep_8h_1ad5d9ae5e2ea7e75aa605e36485987fc2" class="ref">cuchar</a> *block, int length)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Low level SHA256 hashing API to update a SHA256 hash computation with input data.</td></tr>
</table>
<a name="Typedefs"></a>
## Typedefs

<table class="apiIndex" title="typedefs">
<tr class="apiDef"><td class="apiName"><a href="#struct_r_md5" class="nameRef">RMd5</a></td><td class="apiBrief">MD5 computation block.</td></tr>
</table>
<a name="Defines"></a>
## Defines

<table class="apiIndex" title="Defines">
<tr class="apiDef">
<td>#define</td><td><a href="#crypt_8h_1a2f2887ab7c3456ae5c4445e06b309841" class="nameRef">CRYPT_BLOWFISH</a>&nbsp;&nbsp;&nbsp;&quot;BF1&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Blowfish hash tag.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#crypt_8h_1ad554a0daff7b758e482022e5e8d1f50b" class="nameRef">CRYPT_BLOWFISH_ROUNDS</a>&nbsp;&nbsp;&nbsp;128</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Number of computation rounds.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#crypt_8h_1af2a70c573a5d5ad2835bbdeba75fa4b6" class="nameRef">CRYPT_BLOWFISH_SALT_LENGTH</a>&nbsp;&nbsp;&nbsp;16</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Length of salt text.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#crypt_8h_1a61b5edd98629b0d6ff60daef795de236" class="nameRef">CRYPT_DECODE_TOKEQ</a>&nbsp;&nbsp;&nbsp;1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Decode base64 blocks up to a NULL or equals.</td></tr>
  </table>

## Crypt

<a name="group___crypt"></a>
<div class="api">
  <div class="prototype">Crypt</div>
  <div class="apiDetail">
<p>Minimal Crypto Library.</p>
    <dl><dt><b>Description</b>:</dt><dd>The crypt library provides a minimal set of crypto for connected devices. It provides Base64 encode/decode, MD5, SHA256, Bcrypt crypto and password utilities.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    </table></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga96bcefb0f66a265557fff0f7c99cfddb"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#osdep_8h_1ad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a>
    cryptCheckPassword
(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *plainTextPassword, <a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *passwordHash)
  </div>
  <div class="apiDetail">
<p>Check a plain-text password against a password hash.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">plainTextPassword</td><td>Input plain-text password.</td>
    <tr><td class="param">passwordHash</td><td>Hash previously computed via <a class="ref" href="#group___crypt_1gacbcf67d58dd8b323e05cf0824e1f64b6">cryptMakePassword</a></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the password matches.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1gaf3ff876d244be30ebb110ef13431c57b" class="ref">cryptGetPassword</a>, <a href="#group___crypt_1gacbcf67d58dd8b323e05cf0824e1f64b6" class="ref">cryptMakePassword</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga1347655aff5456bed01714017e3c8077"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptDecode64
(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Decode a block that has been base64 encoded.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Base64 encoded string.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Null terminated decoded string. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga7841f34e227d7d0a4b743bc42affa811" class="ref">cryptEncode64</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga93a710fe30f13c2f6b02d93f691cb073"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptDecode64Block
(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> *len, int flags)
  </div>
  <div class="apiDetail">
<p>Decode a block that has been base64 encoded.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">block</td><td>Base64 encoded string.</td>
    <tr><td class="param">len</td><td>Pointer to receive the length of the decoded block.</td>
    <tr><td class="param">flags</td><td>Stop decoding at the end of the block or &apos;=&apos; if CRYPT_DECODE_TOKEQ is specified.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Decoded block string. Caller must free. The length is described via *len.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga1347655aff5456bed01714017e3c8077" class="ref">cryptDecode64</a>, <a href="#group___crypt_1ga7841f34e227d7d0a4b743bc42affa811" class="ref">cryptEncode64</a>, <a href="#group___crypt_1gab4cdf7e0e3f0c256fd057340c83cea16" class="ref">cryptEncode64Block</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga7841f34e227d7d0a4b743bc42affa811"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptEncode64
(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Encode a string using base64 encoding.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Null terminated string to encode.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Base64 encoded string. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1gab4cdf7e0e3f0c256fd057340c83cea16" class="ref">cryptEncode64Block</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1gab4cdf7e0e3f0c256fd057340c83cea16"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptEncode64Block
(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)
  </div>
  <div class="apiDetail">
<p>Encode a block using base64 encoding.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">block</td><td>Block of data to encode.</td>
    <tr><td class="param">len</td><td>Length of the block.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Base64 encoded string. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga7841f34e227d7d0a4b743bc42affa811" class="ref">cryptEncode64</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga2999383840207c5c2d2ee7d91af4c2b1"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptGetFileMd5
(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *path)
  </div>
  <div class="apiDetail">
<p>Get an MD5 string hash for a file.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">path</td><td>Filename for the file for which to compute the hash.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A hex string representation of the hash. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga7b1c2b34bc0c5b0b9bae8b7cced8df47" class="ref">cryptGetMd5</a>, <a href="#group___crypt_1ga5c7ebf3c45e3df4afe99ba08fb3ef3f4" class="ref">cryptGetMd5Block</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1gad053ae10f8814696aca9f4b521c021bd"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptGetFileSha256
(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *path)
  </div>
  <div class="apiDetail">
<p>Get a SHA256 hash for the contents of a file.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">path</td><td>Filename of the file.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A hex string representation of the hash. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga5295120b665b55bd5859671edbbe95b4" class="ref">cryptGetSha256</a>, <a href="#group___crypt_1gaa56209733ebcbec4ae64e09f5d0eee60" class="ref">cryptGetSha256Block</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga7b1c2b34bc0c5b0b9bae8b7cced8df47"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptGetMd5
(<a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length)
  </div>
  <div class="apiDetail">
<p>Get an MD5 hash for a block and return a string hash.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">block</td><td>Block of data for which to compute the hash.</td>
    <tr><td class="param">length</td><td>Length of the block. If the length is -1, the block is assumed to be a string and its length is determined by strlen on the block.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A hex string representation of the hash. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga5c7ebf3c45e3df4afe99ba08fb3ef3f4" class="ref">cryptGetMd5Block</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga5c7ebf3c45e3df4afe99ba08fb3ef3f4"></a>
<div class="api">
  <div class="prototype">
    void
    cryptGetMd5Block
(<a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length, <a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> hash)
  </div>
  <div class="apiDetail">
<p>Get an MD5 hash for a block and return a binary hash.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">block</td><td>Block of data for which to compute the hash.</td>
    <tr><td class="param">length</td><td>Length of the block. If the length is -1, the block is assumed to be a string and its length is determined by strlen on the block.</td>
    <tr><td class="param">hash</td><td>Array to receive the hash.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga7b1c2b34bc0c5b0b9bae8b7cced8df47" class="ref">cryptGetMd5</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1gaf3ff876d244be30ebb110ef13431c57b"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptGetPassword
(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *prompt)
  </div>
  <div class="apiDetail">
<p>Read a password from the console.</p>
    <dl><dt><b>Description</b>:</dt><dd>Used by utility programs to read passwords from the console.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">prompt</td><td>Password user prompt.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The input password. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1gacbcf67d58dd8b323e05cf0824e1f64b6" class="ref">cryptMakePassword</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1gaed31a633370efe6174b29606c89215f2"></a>
<div class="api">
  <div class="prototype">
    int
    cryptGetRandomBytes
(char *buf, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length, <a href="r.html#osdep.html#osdep_8h_1ad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> block)
  </div>
  <div class="apiDetail">
<p>Get random data.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Result buffer to hold the random data.</td>
    <tr><td class="param">length</td><td>Size of the buffer.</td>
    <tr><td class="param">block</td><td>Set to true to read from a blocking random generator that will guarantee the return of random data in the situation of insufficient entropy at the time the call was made.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The input password. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1gacbcf67d58dd8b323e05cf0824e1f64b6" class="ref">cryptMakePassword</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga5295120b665b55bd5859671edbbe95b4"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptGetSha256
(<a href="r.html#osdep.html#osdep_8h_1ad5d9ae5e2ea7e75aa605e36485987fc2" class="ref">cuchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length)
  </div>
  <div class="apiDetail">
<p>Get a SHA256 hash for a block and return a string hash.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">block</td><td>Block of data for which to compute the hash. If set to -1, the block is assumed to be a null terminated string.</td>
    <tr><td class="param">length</td><td>Length of the data block.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A hex string representation of the hash. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___crypt_1gaa56209733ebcbec4ae64e09f5d0eee60"></a>
<div class="api">
  <div class="prototype">
    void
    cryptGetSha256Block
(<a href="r.html#osdep.html#osdep_8h_1ad5d9ae5e2ea7e75aa605e36485987fc2" class="ref">cuchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length, <a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> hash)
  </div>
  <div class="apiDetail">
<p>Get a SHA256 hash for a block and return a binary hash.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">block</td><td>Block of data for which to compute the hash.</td>
    <tr><td class="param">length</td><td>Length of the data block. If set to -1, the block is assumed to be a null terminated string.</td>
    <tr><td class="param">hash</td><td>Array to receive the hash result.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1gad053ae10f8814696aca9f4b521c021bd" class="ref">cryptGetFileSha256</a>, <a href="#group___crypt_1ga5295120b665b55bd5859671edbbe95b4" class="ref">cryptGetSha256</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1gacbcf67d58dd8b323e05cf0824e1f64b6"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptMakePassword
(<a href="r.html#osdep.html#osdep_8h_1a0f128c3e0c83721af0220c00554e9c4e" class="ref">cchar</a> *password, int saltLength, int rounds)
  </div>
  <div class="apiDetail">
<p>Make a password using the Blowfish cipher (Bcrypt).</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">password</td><td>Input plain-text password.</td>
    <tr><td class="param">saltLength</td><td>Length of salt text to add.</td>
    <tr><td class="param">rounds</td><td>Number of computation rounds. Default is 128. Longer is slower, but more secure.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The computed password hash. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga96bcefb0f66a265557fff0f7c99cfddb" class="ref">cryptCheckPassword</a>, <a href="#group___crypt_1gaf3ff876d244be30ebb110ef13431c57b" class="ref">cryptGetPassword</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1gaf259536bb620790d0a236bc248a138ff"></a>
<div class="api">
  <div class="prototype">
    void
    cryptMd5Finalize
(<a href="#struct_r_md5" class="ref">RMd5</a> *ctx, <a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> digest)
  </div>
  <div class="apiDetail">
<p>Low level MD5 hashing API to finalize an MD5 hash compuation and return a binary hash result.</p>
    <dl><dt><b>Description</b>:</dt><dd>Finalize the hash computation.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ctx</td><td>MD5 context.</td>
    <tr><td class="param">digest</td><td>MD5 array to receive the hash result.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1gad2a2bef2c2713fd5c98e5131ef4b5cf5" class="ref">cryptMd5Init</a>, <a href="#group___crypt_1ga5866217629371baaf57b307bf5079167" class="ref">cryptMd5Update</a></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
  </div>
</div>
<a name="group___crypt_1ga6708a45a5a4bb4246560b4cba846e4cc"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptMd5HashToString
(<a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> hash)
  </div>
  <div class="apiDetail">
<p>Convert an MD5 hash to a hex string.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Previously computed MD5 hash.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A hex string representation of the hash. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga7b1c2b34bc0c5b0b9bae8b7cced8df47" class="ref">cryptGetMd5</a>, <a href="#group___crypt_1ga5c7ebf3c45e3df4afe99ba08fb3ef3f4" class="ref">cryptGetMd5Block</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1gad2a2bef2c2713fd5c98e5131ef4b5cf5"></a>
<div class="api">
  <div class="prototype">
    void
    cryptMd5Init
(<a href="#struct_r_md5" class="ref">RMd5</a> *ctx)
  </div>
  <div class="apiDetail">
<p>Low level MD5 hashing API to initialize an MD5 hash computation.</p>
    <dl><dt><b>Description</b>:</dt><dd>Initialize the hash computation.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ctx</td><td>MD5 context.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1gaf259536bb620790d0a236bc248a138ff" class="ref">cryptMd5Finalize</a>, <a href="#group___crypt_1ga5866217629371baaf57b307bf5079167" class="ref">cryptMd5Update</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga5866217629371baaf57b307bf5079167"></a>
<div class="api">
  <div class="prototype">
    void
    cryptMd5Update
(<a href="#struct_r_md5" class="ref">RMd5</a> *ctx, <a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> *block, <a href="r.html#osdep.html#osdep_8h_1a91ad9478d81a7aaf2593e8d9c3d06a14" class="ref">uint</a> length)
  </div>
  <div class="apiDetail">
<p>Low level MD5 hashing API to update an MD5 hash computation with a block of data.</p>
    <dl><dt><b>Description</b>:</dt><dd>Update the hash computation with input.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ctx</td><td>MD5 context.</td>
    <tr><td class="param">block</td><td>Input block to add to the hash.</td>
    <tr><td class="param">length</td><td>Length of the input block.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1gaf259536bb620790d0a236bc248a138ff" class="ref">cryptMd5Finalize</a>, <a href="#group___crypt_1gad2a2bef2c2713fd5c98e5131ef4b5cf5" class="ref">cryptMd5Init</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga1917efb9f2262bc5a97b61a7e9223010"></a>
<div class="api">
  <div class="prototype">
    void
    cryptSha256Finalize
(<a href="#crypt_8h_1a3502b5b2bd83f733a207cc348145cdac" class="ref">RSha256</a> *ctx, <a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> hash)
  </div>
  <div class="apiDetail">
<p>Low level SHA256 hashing API to finalize a SHA256 hash compuation and return a binary result.</p>
    <dl><dt><b>Description</b>:</dt><dd>Finalize the hash computation and return a binary hash result.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ctx</td><td>SHA256 context.</td>
    <tr><td class="param">hash</td><td>Array to receive the hash result.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga9383dc5975280053290784fff4fa29b6" class="ref">cryptSha256Init</a>, <a href="#group___crypt_1gaedb3515be55f7c5b7fcd92c85ac2a529" class="ref">cryptSha256Start</a>, <a href="#group___crypt_1ga94b97c277fb145f3e9747c162836024d" class="ref">cryptSha256Term</a>, <a href="#group___crypt_1gabaddccda081b18d139fd7cce0586a78f" class="ref">cryptSha256Update</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1gaa52dc0b936028f8bd154e7968d900bc1"></a>
<div class="api">
  <div class="prototype">
    char *
    cryptSha256HashToString
(<a href="r.html#osdep.html#osdep_8h_1a65f85814a8290f9797005d3b28e7e5fc" class="ref">uchar</a> hash)
  </div>
  <div class="apiDetail">
<p>Convert a SHA256 hash to a string.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Hash result from <a class="ref" href="#group___crypt_1gaa56209733ebcbec4ae64e09f5d0eee60">cryptGetSha256Block</a></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A hex string representation of the hash. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga5295120b665b55bd5859671edbbe95b4" class="ref">cryptGetSha256</a>, <a href="#group___crypt_1gaa56209733ebcbec4ae64e09f5d0eee60" class="ref">cryptGetSha256Block</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga9383dc5975280053290784fff4fa29b6"></a>
<div class="api">
  <div class="prototype">
    void
    cryptSha256Init
(<a href="#crypt_8h_1a3502b5b2bd83f733a207cc348145cdac" class="ref">RSha256</a> *ctx)
  </div>
  <div class="apiDetail">
<p>Low level SHA256 hashing API to initialize a SHA256 hash computation.</p>
    <dl><dt><b>Description</b>:</dt><dd>Initialize the hash computation.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ctx</td><td>SHA256 context.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga1917efb9f2262bc5a97b61a7e9223010" class="ref">cryptSha256Finalize</a>, <a href="#group___crypt_1gaedb3515be55f7c5b7fcd92c85ac2a529" class="ref">cryptSha256Start</a>, <a href="#group___crypt_1gabaddccda081b18d139fd7cce0586a78f" class="ref">cryptSha256Update</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1gaedb3515be55f7c5b7fcd92c85ac2a529"></a>
<div class="api">
  <div class="prototype">
    void
    cryptSha256Start
(<a href="#crypt_8h_1a3502b5b2bd83f733a207cc348145cdac" class="ref">RSha256</a> *ctx)
  </div>
  <div class="apiDetail">
<p>Low level SHA256 hashing API to start a SHA256 hash computation.</p>
    <dl><dt><b>Description</b>:</dt><dd>Start the hash computation.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ctx</td><td>SHA256 context.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga1917efb9f2262bc5a97b61a7e9223010" class="ref">cryptSha256Finalize</a>, <a href="#group___crypt_1ga9383dc5975280053290784fff4fa29b6" class="ref">cryptSha256Init</a>, <a href="#group___crypt_1ga94b97c277fb145f3e9747c162836024d" class="ref">cryptSha256Term</a>, <a href="#group___crypt_1gabaddccda081b18d139fd7cce0586a78f" class="ref">cryptSha256Update</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1ga94b97c277fb145f3e9747c162836024d"></a>
<div class="api">
  <div class="prototype">
    void
    cryptSha256Term
(<a href="#crypt_8h_1a3502b5b2bd83f733a207cc348145cdac" class="ref">RSha256</a> *ctx)
  </div>
  <div class="apiDetail">
<p>Low level SHA256 hashing API to terminate a SHA256 hash compuation.</p>
    <dl><dt><b>Description</b>:</dt><dd>Terminate (conclude) the hash computation. This erases in-memory state and should be the final step in computing a hash.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ctx</td><td>SHA256 context.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga1917efb9f2262bc5a97b61a7e9223010" class="ref">cryptSha256Finalize</a>, <a href="#group___crypt_1ga9383dc5975280053290784fff4fa29b6" class="ref">cryptSha256Init</a>, <a href="#group___crypt_1gaedb3515be55f7c5b7fcd92c85ac2a529" class="ref">cryptSha256Start</a>, <a href="#group___crypt_1gabaddccda081b18d139fd7cce0586a78f" class="ref">cryptSha256Update</a></dd></dl>
  </div>
</div>
<a name="group___crypt_1gabaddccda081b18d139fd7cce0586a78f"></a>
<div class="api">
  <div class="prototype">
    void
    cryptSha256Update
(<a href="#crypt_8h_1a3502b5b2bd83f733a207cc348145cdac" class="ref">RSha256</a> *ctx, <a href="r.html#osdep.html#osdep_8h_1ad5d9ae5e2ea7e75aa605e36485987fc2" class="ref">cuchar</a> *block, int length)
  </div>
  <div class="apiDetail">
<p>Low level SHA256 hashing API to update a SHA256 hash computation with input data.</p>
    <dl><dt><b>Description</b>:</dt><dd>Update the hash computation with a block of data.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ctx</td><td>SHA256 context.</td>
    <tr><td class="param">block</td><td>Block of data to hash.</td>
    <tr><td class="param">length</td><td>Length of the input block.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___crypt_1ga1917efb9f2262bc5a97b61a7e9223010" class="ref">cryptSha256Finalize</a>, <a href="#group___crypt_1ga9383dc5975280053290784fff4fa29b6" class="ref">cryptSha256Init</a>, <a href="#group___crypt_1gaedb3515be55f7c5b7fcd92c85ac2a529" class="ref">cryptSha256Start</a>, <a href="#group___crypt_1ga94b97c277fb145f3e9747c162836024d" class="ref">cryptSha256Term</a></dd></dl>
  </div>
</div>

## Typedefs

<a name="struct_r_md5"></a>
<div class="api">
  <div class="prototype">RMd5</div>
  <div class="apiDetail">
<p>MD5 computation block.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">uint</td><td><td>state[4]</td><td>
MD5 hashing state.
</td>
    </table></dd></dl>
  </div>
</div>

