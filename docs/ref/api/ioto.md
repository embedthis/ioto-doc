# Ioto API

The Ioto library provides some utility routines and cloud helper functions.

Most of the Ioto API is provided by the following component libraries:

* [Crypt](crypt.md)
* [Database](db.md)
* [Embedded Web Server](web.md)
* [JSON parser](json.md)
* [MQTT client](mqtt.md)
* [Safe Runtime](r.md)
* [Url HTTP Client](url.md)



<a name="Extensions"></a>
## Extensions

  <table class="apiIndex" title="Extensions">
<tr class="apiDef">
<td class="apiName"><a href="#group___aws" class="nameRef">Aws</a></td>
<td class="apiBrief">AWS Support.</td></tr>
<tr class="apiDef">
<td class="apiName"><a href="#group___ioto" class="nameRef">Ioto</a></td>
<td class="apiBrief">Ioto control structure.</td></tr>
</table>
<a name="Functions"></a>
## Functions

  <table class="apiIndex" title="Functions">
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___aws_1ga0c203ace45b6297fb155586c66ca37c5" class="nameRef">aws</a>(<a href="url.html#group___url" class="ref">Url</a> *up, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *region, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *service, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *target, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *body, <a href="web.html#r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bodyLen, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Invoke an AWS API request.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___aws_1gaa8d577443da8468e707715e6c06f07a3" class="nameRef">awsPutFileToS3</a>(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *region, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *bucket, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *filename)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Put a file to AWS S3.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___aws_1ga51aed8ebba4596746ea25a70f3800405" class="nameRef">awsPutToS3</a>(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *region, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *bucket, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *data, <a href="web.html#r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> dataLen)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Put a data block to AWS S3.</td></tr>
<tr class="apiDef"><td class="apiType">char*</td><td><a href="#group___aws_1ga667cc42975b96caa833c234a2cce3497" class="nameRef">awsSign</a>(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *region, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *service, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *target, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *method, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *query, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *body, <a href="web.html#r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bodyLen, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Create a set of signed headers to use with AWS SigV4 REST APIs.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___ioto_1ga1becc07b70ae4d76573efa725f1990cb" class="nameRef">ioConfig</a>(<a href="web.html#json.html#group___json" class="ref">Json</a> *config)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>User config entry point.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___ioto_1ga9e3012936de37bcb7c19e34965de5ce1" class="nameRef">ioGetShadow</a>(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a value from the shadow state.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___ioto_1ga219114ddbf607f45c56bb8ce755301d2" class="nameRef">ioInit</a>(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *profile)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Initialize Ioto.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___ioto_1gac263e5f5e3131e8a4a3f40f4749b94b6" class="nameRef">ioSaveShadow</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Save the shadow state immediately.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___ioto_1ga2f63ee1f855a2a02174319693ae75381" class="nameRef">ioSetShadow</a>(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, <a href="web.html#r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> save)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set a key value in the shadow.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___ioto_1ga3e8dd69c4d0bccc318ad46ad671abf47" class="nameRef">ioStart</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>User start entry point.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___ioto_1ga5eb0815de56438e5555b7a6342a0c8c2" class="nameRef">ioStop</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>User stop entry point.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___ioto_1gafba29dc58f2f90bdb09e9b852a73a8f8" class="nameRef">ioTerm</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Terminate Ioto.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="web.html#r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a></td><td><a href="#group___ioto_1ga19f439c548c4024011f0347f44907585" class="nameRef">webWriteItem</a>(<a href="web.html#group___web" class="ref">Web</a> *web, const DbItem *item)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write a database item as part of a web response.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="web.html#r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a></td><td><a href="#group___ioto_1ga767ef41e2df6ffd2786d0e374158dbbb" class="nameRef">webWriteItems</a>(<a href="web.html#group___web" class="ref">Web</a> *web, const DbGrid *items)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write a grid of database items as part of a web response.</td></tr>
</table>
<a name="Typedefs"></a>
## Typedefs

<table class="apiIndex" title="typedefs">
</table>
<a name="Defines"></a>
## Defines

<table class="apiIndex" title="Defines">
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1ad770bc9f59d6926fa5564267635ca7f7" class="nameRef">IO_CERTIFICATE</a>&nbsp;&nbsp;&nbsp;&quot;ioto.crt&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Name of the AWS thing certificate file.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a4a3307e26a46278a8aeb18a94bbc5480" class="nameRef">IO_CONFIG_FILE</a>&nbsp;&nbsp;&nbsp;&quot;config/config.json5&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Name of the primary control config file.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a83a4a6114eb4d52fc10a65da61d7d3d5" class="nameRef">IO_DEVICE_FILE</a>&nbsp;&nbsp;&nbsp;&quot;config/device.json5&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Name of the device identification config file.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a2379b5675f95d4d8c7e0a273b4d6f07c" class="nameRef">IO_KEY</a>&nbsp;&nbsp;&nbsp;&quot;ioto.key&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Name of the AWS thing key file.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a7330baa3f616cfd2e2eb8b9c3b1a4fde" class="nameRef">IO_LOCAL_FILE</a>&nbsp;&nbsp;&nbsp;&quot;config/local.json5&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Development overrides.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a430329838b3ffc70cafeff87db03b3b9" class="nameRef">IO_LOG_FILE</a>&nbsp;&nbsp;&nbsp;&quot;ioto.log&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Name of the ioto log file.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1ace9e806c4ad02f84f5881b7fcd3279ca" class="nameRef">IO_LOG_GROUP</a>&nbsp;&nbsp;&nbsp;&quot;ioto&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>AWS log group name.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a64e4ec81b9d5c93ecf262ebef1e764e4" class="nameRef">IO_LOG_LINGER</a>&nbsp;&nbsp;&nbsp;5000</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Delay before flushing log events to the cloud.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a75ea43b1bdb8b839114975a5c56de6b3" class="nameRef">IO_LOG_MAX_EVENTS</a>&nbsp;&nbsp;&nbsp;1000</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Max log events to buffer.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1aba71653a2b91c17163fa196501e180de" class="nameRef">IO_LOG_MAX_SIZE</a>&nbsp;&nbsp;&nbsp;32767</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Max size of log events to buffer.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a93142909c9f0aad13b96b2bec4b480e8" class="nameRef">IO_LOG_STREAM</a>&nbsp;&nbsp;&nbsp;&quot;agent&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>AWS log stream name.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a0d2f565b4755c00b71711b15193f0e07" class="nameRef">IO_MAX_URL</a>&nbsp;&nbsp;&nbsp;256</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Sanity length of a URL.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1ab53f3640a33f78f073666872307ae696" class="nameRef">IO_MESSAGE_SIZE</a>&nbsp;&nbsp;&nbsp;128 * 1024 * 1024</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Maximum MQTT message size.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a61de856d2df31cce30d7c62926eb09d3" class="nameRef">IO_PROVISION_FILE</a>&nbsp;&nbsp;&nbsp;&quot;provision.json5&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Name of the device provisioning config file.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1ad5740f43107ad666df54e4712722dfcb" class="nameRef">IO_SAVE_DELAY</a>&nbsp;&nbsp;&nbsp;5000</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Delay before saving updated shadow state.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1aaeec0c54868924f5df75a5904c38bfbc" class="nameRef">IO_SHADOW_FILE</a>&nbsp;&nbsp;&nbsp;&quot;shadow.json5&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Name of the persisted AWS shadow state file.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a6522af80e19cb2d70d0afac222984a70" class="nameRef">IO_SIGNATURES_FILE</a>&nbsp;&nbsp;&nbsp;&quot;config/signatures.json5&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Name of the optional REST API signatures file.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#ioto_8h_1a9c53f6db77e8e6975766b28403f806fc" class="nameRef">IO_WEB_FILE</a>&nbsp;&nbsp;&nbsp;&quot;config/web.json5&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Name of the web server config file.</td></tr>
  </table>

## Aws

<a name="group___aws"></a>
<div class="api">
  <div class="prototype">Aws</div>
  <div class="apiDetail">
<p>AWS Support.</p>
    <dl><dt><b>Description</b>:</dt><dd>This is suite of AWS helper routines that implement AWS SigV4 signed REST API requests.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___aws_1ga0c203ace45b6297fb155586c66ca37c5" class="ref">aws</a>, <a href="#group___aws_1gaa8d577443da8468e707715e6c06f07a3" class="ref">awsPutFileToS3</a>, <a href="#group___aws_1ga51aed8ebba4596746ea25a70f3800405" class="ref">awsPutToS3</a>, <a href="#group___aws_1ga667cc42975b96caa833c234a2cce3497" class="ref">awsSign</a></dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    </table></dd></dl>
  </div>
</div>
<a name="group___aws_1ga0c203ace45b6297fb155586c66ca37c5"></a>
<div class="api">
  <div class="prototype">
    int
    aws
(<a href="url.html#group___url" class="ref">Url</a> *up, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *region, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *service, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *target, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *body, <a href="web.html#r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bodyLen, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)
  </div>
  <div class="apiDetail">
<p>Invoke an AWS API request.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">up</td><td>Url object allocated via urlAlloc.</td>
    <tr><td class="param">region</td><td>AWS Region to target.</td>
    <tr><td class="param">service</td><td>AWS Service name. E.g. &quot;s3&quot;.</td>
    <tr><td class="param">target</td><td>AWS Target name. If not supplied, this is deduced from the service name and the &quot;x-amz-target&quot; header.</td>
    <tr><td class="param">body</td><td>Request body data.</td>
    <tr><td class="param">bodyLen</td><td>Length of the request body.</td>
    <tr><td class="param">headers</td><td>Format string containing HTTP headers. This format string can use printf embedded tokens that will be expanded to form the HTTP headers. The header format is of the form: &quot;Key:Value\n...&quot; with an extra new line at the end.</td>
    <tr><td class="param">...</td><td>Headers arguments.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___aws_1gaa8d577443da8468e707715e6c06f07a3" class="ref">awsPutFileToS3</a>, <a href="#group___aws_1ga51aed8ebba4596746ea25a70f3800405" class="ref">awsPutToS3</a>, <a href="#group___aws_1ga667cc42975b96caa833c234a2cce3497" class="ref">awsSign</a></dd></dl>
  </div>
</div>
<a name="group___aws_1gaa8d577443da8468e707715e6c06f07a3"></a>
<div class="api">
  <div class="prototype">
    int
    awsPutFileToS3
(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *region, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *bucket, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *filename)
  </div>
  <div class="apiDetail">
<p>Put a file to AWS S3.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">region</td><td>AWS Region to target.</td>
    <tr><td class="param">bucket</td><td>AWS S3 bucket name.</td>
    <tr><td class="param">key</td><td>AWS S3 bucket key (filename). If set to null, the key is set to the filename.</td>
    <tr><td class="param">filename</td><td>File name to put to S3.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___aws_1ga0c203ace45b6297fb155586c66ca37c5" class="ref">aws</a>, <a href="#group___aws_1ga51aed8ebba4596746ea25a70f3800405" class="ref">awsPutToS3</a>, <a href="#group___aws_1ga667cc42975b96caa833c234a2cce3497" class="ref">awsSign</a></dd></dl>
  </div>
</div>
<a name="group___aws_1ga51aed8ebba4596746ea25a70f3800405"></a>
<div class="api">
  <div class="prototype">
    int
    awsPutToS3
(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *region, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *bucket, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *data, <a href="web.html#r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> dataLen)
  </div>
  <div class="apiDetail">
<p>Put a data block to AWS S3.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">region</td><td>AWS Region to target.</td>
    <tr><td class="param">bucket</td><td>AWS S3 bucket name.</td>
    <tr><td class="param">key</td><td>AWS S3 bucket key (filename).</td>
    <tr><td class="param">data</td><td>Data block to write to S3.</td>
    <tr><td class="param">dataLen</td><td>Length of the data block.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___aws_1ga0c203ace45b6297fb155586c66ca37c5" class="ref">aws</a>, <a href="#group___aws_1gaa8d577443da8468e707715e6c06f07a3" class="ref">awsPutFileToS3</a>, <a href="#group___aws_1ga667cc42975b96caa833c234a2cce3497" class="ref">awsSign</a></dd></dl>
  </div>
</div>
<a name="group___aws_1ga667cc42975b96caa833c234a2cce3497"></a>
<div class="api">
  <div class="prototype">
    char *
    awsSign
(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *region, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *service, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *target, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *method, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *query, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *body, <a href="web.html#r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bodyLen, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *headers, ...)
  </div>
  <div class="apiDetail">
<p>Create a set of signed headers to use with AWS SigV4 REST APIs.</p>
    <dl><dt><b>Description</b>:</dt><dd>The AWS SDK is big and relatively slow. If you only need a few AWS APIs, you can use the AWS REST APIs and avoid the AWS SDK. This routine processes HTTP request parameters to create a set of signed HTTP headers that can be used with the URL HTTP client.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">region</td><td>AWS Region to target.</td>
    <tr><td class="param">service</td><td>AWS Service name. E.g. &quot;s3&quot;.</td>
    <tr><td class="param">target</td><td>AWS Target name. If not supplied, this is deduced from the service name and the &quot;x-amz-target&quot; header.</td>
    <tr><td class="param">method</td><td>HTTP method to utilize.</td>
    <tr><td class="param">path</td><td>URL request path.</td>
    <tr><td class="param">query</td><td>URL request query.</td>
    <tr><td class="param">body</td><td>Request body data.</td>
    <tr><td class="param">bodyLen</td><td>Length of the request body.</td>
    <tr><td class="param">headers</td><td>Format string containing HTTP headers. This format string can use printf embedded tokens that will be expanded to form the HTTP headers. The header format is of the form: &quot;Key:Value\n...&quot; with an extra new line at the end.</td>
    <tr><td class="param">...</td><td>Headers arguments.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The HTTP headers to use with a URL HTTP client request. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___aws_1ga0c203ace45b6297fb155586c66ca37c5" class="ref">aws</a>, <a href="#group___aws_1gaa8d577443da8468e707715e6c06f07a3" class="ref">awsPutFileToS3</a>, <a href="#group___aws_1ga51aed8ebba4596746ea25a70f3800405" class="ref">awsPutToS3</a></dd></dl>
  </div>
</div>

## Ioto

<a name="group___ioto"></a>
<div class="api">
  <div class="prototype">Ioto</div>
  <div class="apiDetail">
<p>Ioto control structure.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>api</td><td>
Device cloud API endpoint.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>apiToken</td><td>
Device cloud API authentication token.
</td>
    <tr><td class="param">Json *</td><td><td>auth</td><td>
Auth configuraiton.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>awsAccess</td><td>
AWS temp creds.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">Time</a></td><td><td>awsExpires</td><td>
AWS cred expiry.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>awsRegion</td><td>
Default AWS region.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>awsSecret</td><td>
AWS cred secret.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>awsToken</td><td>
AWS cred token.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>builder</td><td>
Builder API endpoint.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>claimId</td><td>
Claim ID.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>cloudService</td><td>
Embedded database service.
</td>
    <tr><td class="param">Json *</td><td><td>config</td><td>
Configuration.
</td>
    <tr><td class="param">Db *</td><td><td>db</td><td>
Structured state database.
</td>
    <tr><td class="param">RBuf *</td><td><td>dbChanges</td><td>
Buffer of database change records.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>deviceId</td><td>
Device ID.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga06650984137cfde185bac06dd2a4f355" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">Ticks</a></td><td><td>firstSyncChange</td><td>
When the first database state change happend.
</td>
    <tr><td class="param">char *</td><td><td>instance</td><td>
Enforce strict signature compliance. 
EC2 instance.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>keyService</td><td>
Manufacturing serialization.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>loadPath</td><td>
Database file to load.
</td>
    <tr><td class="param">struct IotoLog *</td><td><td>log</td><td>
Cloud Watch Log object.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>logDir</td><td>
Directory for Ioto log files.
</td>
    <tr><td class="param">RList *</td><td><td>logs</td><td>
Log file ingestion list.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>logService</td><td>
AWS IAM key generation.
</td>
    <tr><td class="param">Mqtt *</td><td><td>mqtt</td><td>
Mqtt object.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>mqttService</td><td>
Log file ingest to CloudWatch logs.
</td>
    <tr><td class="param">char *</td><td><td>profile</td><td>
Run profile. 
Defaults to &quot;prod&quot;.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>provisionService</td><td>
MQTT service.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>registered</td><td>
Web server.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>registerService</td><td>
Cloud provisioning service.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>serializeService</td><td>
AWS IoT core service.
</td>
    <tr><td class="param">Json *</td><td><td>shadow</td><td>
Shadow state.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>shadowName</td><td>
AWS IoT shadow name.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>shadowService</td><td>
Device registration service.
</td>
    <tr><td class="param">char *</td><td><td>shadowTopic</td><td>
AWS IoT shadow topic.
</td>
    <tr><td class="param">Json *</td><td><td>signatures</td><td>
Web Rest API signatures.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>stateDir</td><td>
Directory for state files.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>strictSignatures</td><td>
Device has been registered.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga06650984137cfde185bac06dd2a4f355" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">Ticks</a></td><td><td>syncDelay</td><td>
Delay to flush database changes to the cloud.
</td>
    <tr><td class="param">REvent</td><td><td>syncEvent</td><td>
Schedule synchronization event.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>syncLimit</td><td>
Limit of buffered database changes.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>syncService</td><td>
AWS IoT core shadows.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>syncToken</td><td>
Authentication token when sending database changes to the cloud.
</td>
    <tr><td class="param">Json *</td><td><td>template</td><td>
Properties for templates.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>thingName</td><td>
AWS IoT thing name.
</td>
    <tr><td class="param">WebHost *</td><td><td>webHost</td><td>
Web server host.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/ioto/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>webService</td><td>
Sync device state to AWS.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="group___ioto_1ga1becc07b70ae4d76573efa725f1990cb"></a>
<div class="api">
  <div class="prototype">
    int
    ioConfig
(<a href="web.html#json.html#group___json" class="ref">Json</a> *config)
  </div>
  <div class="apiDetail">
<p>User config entry point.</p>
    <dl><dt><b>Description</b>:</dt><dd>The ioConfig function is invoked when Ioto has read its configuration into ioto-&gt;config and before Ioto initializes services. Users can provide their own ioConfig function and link with the Ioto library. Ioto will then invoke the user&apos;s ioConfig for custom configuratoiun.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___ioto_1ga3e8dd69c4d0bccc318ad46ad671abf47" class="ref">ioStart</a>, <a href="#group___ioto_1ga5eb0815de56438e5555b7a6342a0c8c2" class="ref">ioStop</a></dd></dl>
  </div>
</div>
<a name="group___ioto_1ga9e3012936de37bcb7c19e34965de5ce1"></a>
<div class="api">
  <div class="prototype">
    <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    ioGetShadow
(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *defaultValue)
  </div>
  <div class="apiDetail">
<p>Get a value from the shadow state.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">key</td><td>Property key value. May contain dots.</td>
    <tr><td class="param">defaultValue</td><td>Default value to return if the key is not found.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___ioto_1ga219114ddbf607f45c56bb8ce755301d2"></a>
<div class="api">
  <div class="prototype">
    void
    ioInit
(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *profile)
  </div>
  <div class="apiDetail">
<p>Initialize Ioto.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">profile</td><td>Configuration profile. Defaults to &quot;prod&quot;.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___ioto_1gac263e5f5e3131e8a4a3f40f4749b94b6"></a>
<div class="api">
  <div class="prototype">
    void
    ioSaveShadow
(void )
  </div>
  <div class="apiDetail">
<p>Save the shadow state immediately.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___ioto_1ga2f63ee1f855a2a02174319693ae75381"></a>
<div class="api">
  <div class="prototype">
    void
    ioSetShadow
(<a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="web.html#r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, <a href="web.html#r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> save)
  </div>
  <div class="apiDetail">
<p>Set a key value in the shadow.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">key</td><td>Property key value. May contain dots.</td>
    <tr><td class="param">value</td><td>Value to set.</td>
    <tr><td class="param">save</td><td>Set to true to persist immediately.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___ioto_1ga3e8dd69c4d0bccc318ad46ad671abf47"></a>
<div class="api">
  <div class="prototype">
    int
    ioStart
(void )
  </div>
  <div class="apiDetail">
<p>User start entry point.</p>
    <dl><dt><b>Description</b>:</dt><dd>The ioStart function is invoked when Ioto is fully initialized and ready to start. Users can provide their own ioStart and ioStop functions and link with the Ioto library. Ioto will then invoke the user&apos;s ioStart for custom initialization.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___ioto_1ga1becc07b70ae4d76573efa725f1990cb" class="ref">ioConfig</a>, <a href="#group___ioto_1ga5eb0815de56438e5555b7a6342a0c8c2" class="ref">ioStop</a></dd></dl>
  </div>
</div>
<a name="group___ioto_1ga5eb0815de56438e5555b7a6342a0c8c2"></a>
<div class="api">
  <div class="prototype">
    void
    ioStop
(void )
  </div>
  <div class="apiDetail">
<p>User stop entry point.</p>
    <dl><dt><b>Description</b>:</dt><dd>The ioStop function is invoked when Ioto is shutting down. Users can provide their own ioStart function and link with the Ioto library. Ioto will then invoke the user&apos;s ioStop for custom shutdown cleanup.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___ioto_1ga1becc07b70ae4d76573efa725f1990cb" class="ref">ioConfig</a>, <a href="#group___ioto_1ga3e8dd69c4d0bccc318ad46ad671abf47" class="ref">ioStart</a></dd></dl>
  </div>
</div>
<a name="group___ioto_1gafba29dc58f2f90bdb09e9b852a73a8f8"></a>
<div class="api">
  <div class="prototype">
    void
    ioTerm
(void )
  </div>
  <div class="apiDetail">
<p>Terminate Ioto.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___ioto_1ga19f439c548c4024011f0347f44907585"></a>
<div class="api">
  <div class="prototype">
    <a href="web.html#r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a>
    webWriteItem
(<a href="web.html#group___web" class="ref">Web</a> *web, const DbItem *item)
  </div>
  <div class="apiDetail">
<p>Write a database item as part of a web response.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine serialize a database item into JSON and write it as a response.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">item</td><td>Database item.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes written.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___ioto_1ga767ef41e2df6ffd2786d0e374158dbbb"></a>
<div class="api">
  <div class="prototype">
    <a href="web.html#r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a>
    webWriteItems
(<a href="web.html#group___web" class="ref">Web</a> *web, const DbGrid *items)
  </div>
  <div class="apiDetail">
<p>Write a grid of database items as part of a web response.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine serializes a database grid into JSON and write it as a response.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">web</td><td>Web object.</td>
    <tr><td class="param">items</td><td>Grid of database items.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes written.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>

## Typedefs


