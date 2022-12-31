# DB API

The DB library is a high performance NoSQL database for embedded applications. It supports fast, flexible local data access and transparent synchronization of data to the cloud. It is modeled after DynamoDB and the [OneTable](https://github.com/sensedeep/dynamodb-onetable) access library.

DB is a NoSQL database where database items items are documents of arbitrary complexity. Data items are implemented as JSON documents and are organized into entity tables. Application entities are defined via an [entity schema](https://github.com/sensedeep/dynamodb-onetable/blob/main/doc/schema-1.1.0.md) that specifies data fields and attributes.

DB uses Red/black binary search indexes and has controllable local persistency to disk and to the cloud on a per-table basis.



<a name="db.h"></a>
The embedded database is a high performance NoSQL management document database. It offers JSON document items with flexible query API with efficient import and export of database items. The database uses fast red/black binary search indexes. 
<a name="Extensions"></a>
## Extensions

  <table class="apiIndex" title="Extensions">
<tr class="apiDef">
<td class="apiName"><a href="#group___db" class="nameRef">Db</a></td>
<td class="apiBrief">Embedded Database based on DynamoDB.</td></tr>
</table>
<a name="Functions"></a>
## Functions

  <table class="apiIndex" title="Functions">
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___db_1ga0ba4f9dcda8a04dbf819d379c5045a19" class="nameRef">dbAddContext</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Add global context properties.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___db_1ga817a2b32085360202e18676ca84987e6" class="nameRef">dbClose</a>(<a href="#group___db" class="ref">Db</a> *db)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Close a database.</td></tr>
<tr class="apiDef"><td class="apiType">const DbItem*</td><td><a href="#group___db_1ga0a97c8b21841a5dd9db0a5b4756068ab" class="nameRef">dbCreate</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Create a new item.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___db_1ga4b9d7d21ecc2175ae250949ab0e4c8ab" class="nameRef">dbField</a>(const DbItem *item, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Fetch a field value from an item as a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a></td><td><a href="#group___db_1gac5c48a1aa891b0d314edb51b058b9010" class="nameRef">dbFieldBool</a>(const DbItem *item, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Fetch a field value from an item as a boolean.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a></td><td><a href="#group___db_1ga7a4127d0731ee682422c9e0b9c5227f7" class="nameRef">dbFieldDate</a>(const DbItem *item, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Fetch a field value from an item as a date.</td></tr>
<tr class="apiDef"><td class="apiType">double</td><td><a href="#group___db_1ga93fac43e0a7ac5b4c94876481db1724f" class="nameRef">dbFieldDouble</a>(const DbItem *item, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Fetch a field value from an item as a double.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a></td><td><a href="#group___db_1gadf6c90c797efa314f03c8788ce146a56" class="nameRef">dbFieldNumber</a>(const DbItem *item, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Fetch a field value from an item as a number (64 bit).</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#group___db_1gaf054200efd1ed1945d6f3f45371a391d" class="ref">DbGrid*</a></td><td><a href="#group___db_1gaafdada2cde79aa616cc8983bd95e9e41" class="nameRef">dbFind</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Find matching items in the database.</td></tr>
<tr class="apiDef"><td class="apiType">const DbItem*</td><td><a href="#group___db_1gac2f688b7885de38dbd9d124d8ce648aa" class="nameRef">dbFindOne</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Find the first matching item.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___db_1ga5e588393eeb607e9648fa826482378d3" class="nameRef">dbFreeGrid</a>(<a href="#group___db_1gaf054200efd1ed1945d6f3f45371a391d" class="ref">DbGrid</a> *grid)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a grid returned by dbFind.</td></tr>
<tr class="apiDef"><td class="apiType">const DbItem*</td><td><a href="#group___db_1ga50606236e4033352fc77e5c38e2be1cd" class="nameRef">dbGet</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Read a matching item from the database.</td></tr>
<tr class="apiDef"><td class="apiType">const cchar*</td><td><a href="#group___db_1ga21a876d9342d9340ef434e589bcc313d" class="nameRef">dbGetError</a>(<a href="#group___db" class="ref">Db</a> *db)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get an error message for the most recent API call.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___db_1ga495353d379083c0c92d1a2d9fb4c2665" class="nameRef">dbGetField</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a field from a matching item from the database.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#struct_db_model" class="ref">DbModel*</a></td><td><a href="#group___db_1ga42f3669cb98f1de837638a4d589bd153" class="nameRef">dbGetItemModel</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="#struct_db_item" class="ref">DbItem</a> *item)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the model object for a data item.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#struct_db_model" class="ref">DbModel*</a></td><td><a href="#group___db_1gaa98a9533a6cdd60f951be9672bc8e03a" class="nameRef">dbGetModel</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the model object for a model name.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="json.html#group___json" class="ref">Json*</a></td><td><a href="#group___db_1ga454a7dc0105c255ebc1726b18565690c" class="nameRef">dbJson</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Parse a string into Json properties.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="json.html#group___json" class="ref">Json*</a></td><td><a href="#group___db_1gaa0673c3f3f66ad25b65b7658768d2f7f" class="nameRef">dbJsonProps</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *props[])</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a list of keyword / value pairs into a JSON object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___db_1ga41f826540ec6bf61f8e5c8f42176f80c" class="nameRef">dbNext</a>(<a href="#group___db_1gaf054200efd1ed1945d6f3f45371a391d" class="ref">DbGrid</a> *grid)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the next key when using paginated find requests.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="#group___db" class="ref">Db*</a></td><td><a href="#group___db_1gaad25e097a9931956068f7cec19be63db" class="nameRef">dbOpen</a>(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *schema, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Open a database.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___db_1ga60fb164a45e6836efe1e8eb66c96044d" class="nameRef">dbRemove</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Remove matching items in the database.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___db_1ga6d9af9a8f9db7599aaed5e80d023cf5f" class="nameRef">dbSave</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *filename)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Save the database.</td></tr>
<tr class="apiDef"><td class="apiType">const DbItem*</td><td><a href="#group___db_1ga635f11c13cc777afd15791d13e40ec54" class="nameRef">dbSetBool</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> value, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set an item field value as a boolean.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___db_1gac96e0f65d233801a4fbcc7049437c781" class="nameRef">dbSetCallback</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="#group___db_1gaed16356e5494975bb4873c235a00bfed" class="ref">DbCallback</a> proc, void *arg)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the database change trigger callback.</td></tr>
<tr class="apiDef"><td class="apiType">const DbItem*</td><td><a href="#group___db_1ga43add4e01876db74fd391ded4e50adf9" class="nameRef">dbSetDate</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, <a href="r.html#osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a> value, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set an item field value as a date.</td></tr>
<tr class="apiDef"><td class="apiType">const DbItem*</td><td><a href="#group___db_1ga914dfc9629babc4a0102a796c8e2ac54" class="nameRef">dbSetDouble</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, double value, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set an item field value as a double.</td></tr>
<tr class="apiDef"><td class="apiType">const DbItem*</td><td><a href="#group___db_1gaf5b2eac52bf84448943f66d803cc8416" class="nameRef">dbSetField</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set an item field value.</td></tr>
<tr class="apiDef"><td class="apiType">const DbItem*</td><td><a href="#group___db_1ga5676f7ca79bcf86429a0eb269b0c7d23" class="nameRef">dbSetNum</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, <a href="r.html#osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set an item field value as a number.</td></tr>
<tr class="apiDef"><td class="apiType">const DbItem*</td><td><a href="#group___db_1ga19edfe9bef6f314829435b8f4f3fed0e" class="nameRef">dbUpdate</a>(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Update an item.</td></tr>
</table>
<a name="Typedefs"></a>
## Typedefs

<table class="apiIndex" title="typedefs">
<tr class="apiDef"><td class="apiName"><a href="#group___db_1gaed16356e5494975bb4873c235a00bfed" class="nameRef">DbCallback</a></td><td class="apiBrief">Database callback on changes.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___db_1gaf054200efd1ed1945d6f3f45371a391d" class="nameRef">DbGrid</a></td><td class="apiBrief">Database grid of items returned from dbFind.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#struct_db_item" class="nameRef">DbItem</a></td><td class="apiBrief">Database items stored in RB indexes.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#struct_db_model" class="nameRef">DbModel</a></td><td class="apiBrief">Model schema.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#struct_db_params" class="nameRef">DbParams</a></td><td class="apiBrief">Database parameters.</td></tr>
</table>
<a name="Defines"></a>
## Defines

<table class="apiIndex" title="Defines">
<tr class="apiDef">
<td>#define</td><td><a href="#group___db_1ga67783038fa195e408a72a367e6fc2c55" class="nameRef">DB_JSON</a>&nbsp;&nbsp;&nbsp;<initializer><ref refid="group___db_1ga454a7dc0105c255ebc1726b18565690c" kindref="member">dbJson</ref>(__VA_ARGS__)</initializer></td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Macro for supplying API properties as a JSON parsable string.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#db_8h_1a08c2da7b4a86fa837b2bde5ff372d30d" class="nameRef">DB_MAX_ITEM</a>&nbsp;&nbsp;&nbsp;(256 * 1024)</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Maximum database item length.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#db_8h_1a4335c87dea52561d3a2d9fec86fc21fb" class="nameRef">DB_MAX_KEY</a>&nbsp;&nbsp;&nbsp;1024</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Maximum sort key length.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#db_8h_1a69497b5e485696815049be8023f01a6d" class="nameRef">DB_MAX_LOG_AGE</a>&nbsp;&nbsp;&nbsp;<initializer>(60 * <ref refid="group___osdep_1ga5a4b32e0a7ed302b1959f2d663eb9207" kindref="member" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">TPS</ref>)</initializer></td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Maximum age of log file.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#db_8h_1a29ee8ecb87f3a9137f9aa7ced8d95ffb" class="nameRef">DB_MAX_LOG_SIZE</a>&nbsp;&nbsp;&nbsp;(1024 * 1024)</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Maximum sort key length.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#group___db_1ga718a3b5bbc61286511cf431bd41e05ce" class="nameRef">DB_PARAMS</a>&nbsp;&nbsp;&nbsp;<initializer>&amp; (<ref refid="struct_db_params" kindref="compound">DbParams</ref>) { __VA_ARGS__ }</initializer></td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Macro for supplying API parameters.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#group___db_1gabb1dd1472a3f3cfb4b680ceaf578087c" class="nameRef">DB_PROPS</a>&nbsp;&nbsp;&nbsp;<initializer><ref refid="group___db_1gaa0673c3f3f66ad25b65b7658768d2f7f" kindref="member">dbJsonProps</ref>((<ref refid="group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" kindref="member" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">cchar</ref>*[]) { __VA_ARGS__, NULL })</initializer></td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Macro for supplying API properties as key/value pairs.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#db_8h_1aa93c9dfd74135e8e29a17235a0d8b138" class="nameRef">DB_READ_ONLY</a>&nbsp;&nbsp;&nbsp;0x1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Database flags.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#group___db_1ga67783038fa195e408a72a367e6fc2c55" class="nameRef">DB_JSON</a>&nbsp;&nbsp;&nbsp;<initializer><ref refid="group___db_1ga454a7dc0105c255ebc1726b18565690c" kindref="member">dbJson</ref>(__VA_ARGS__)</initializer></td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Macro for supplying API properties as a JSON parsable string.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#group___db_1ga718a3b5bbc61286511cf431bd41e05ce" class="nameRef">DB_PARAMS</a>&nbsp;&nbsp;&nbsp;<initializer>&amp; (<ref refid="struct_db_params" kindref="compound">DbParams</ref>) { __VA_ARGS__ }</initializer></td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Macro for supplying API parameters.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#group___db_1gabb1dd1472a3f3cfb4b680ceaf578087c" class="nameRef">DB_PROPS</a>&nbsp;&nbsp;&nbsp;<initializer><ref refid="group___db_1gaa0673c3f3f66ad25b65b7658768d2f7f" kindref="member">dbJsonProps</ref>((<ref refid="group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" kindref="member" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">cchar</ref>*[]) { __VA_ARGS__, NULL })</initializer></td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Macro for supplying API properties as key/value pairs.</td></tr>
  </table>

## Db

<a name="group___db"></a>
<div class="api">
  <div class="prototype">Db</div>
  <div class="apiDetail">
<p>Embedded Database based on DynamoDB.</p>
    <dl><dt><b>Description</b>:</dt><dd>The DB library is a high performance NoSQL in-memory database for embedded applications modeled on DynamoDB. Data items are implemented as JSON documents and are organized into tables. Application entities are defined via an entity schema that specifies data fields and attributes. Data items are JSON documents and are accessed via a flexible API and dot notation queries. DB uses Red/black binary search indexes and has controllable persistency locally to disk and to the cloud on a per-table basis.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___db_1gaed16356e5494975bb4873c235a00bfed">DbCallback</a></td><td><td>callback</td><td>
Database change notification trigger.
</td>
    <tr><td class="param">void *</td><td><td>callbackArg</td><td>
Argument for the trigger callback.
</td>
    <tr><td class="param">int</td><td><td>code</td><td>
API error code.
</td>
    <tr><td class="param">Json *</td><td><td>context</td><td>
Global context properties - overwrites API properties.
</td>
    <tr><td class="param">char *</td><td><td>error</td><td>
API error message.
</td>
    <tr><td class="param">int</td><td><td>flags</td><td>
Reserved.
</td>
    <tr><td class="param">char *</td><td><td>journal</td><td>
On-disk journal of changes.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga06650984137cfde185bac06dd2a4f355" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">Ticks</a></td><td><td>journalCreated</td><td>
When journal file recreated.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>journalError</td><td>
Journal I/O error.
</td>
    <tr><td class="param">REvent</td><td><td>journalEvent</td><td>
Timeout for journal save.
</td>
    <tr><td class="param">int</td><td><td>journalFd</td><td>
Journal file descriptor.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>journalSize</td><td>
Current size of journal file.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga06650984137cfde185bac06dd2a4f355" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">Ticks</a></td><td><td>maxJournalAge</td><td>
Maximum age of journal file before saving.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>maxJournalSize</td><td>
Maximum size of the journal before saving.
</td>
    <tr><td class="param">RHash *</td><td><td>models</td><td>
List of schema models.
</td>
    <tr><td class="param">char *</td><td><td>path</td><td>
On-disk path.
</td>
    <tr><td class="param">RbTree *</td><td><td>primary</td><td>
Red/black tree primary index.
</td>
    <tr><td class="param">Json *</td><td><td>schema</td><td>
OneTable schema.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>timestamps</td><td>
Maintain created/updated timestamps (if in schema).
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>type</td><td>
Item schema type property.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="group___db_1ga0ba4f9dcda8a04dbf819d379c5045a19"></a>
<div class="api">
  <div class="prototype">
    void
    dbAddContext
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value)
  </div>
  <div class="apiDetail">
<p>Add global context properties.</p>
    <dl><dt><b>Description</b>:</dt><dd>A global context property can be added to the set of properties supplied to each API. These property values are added at the top level only. Dotted notation is not supported.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance.</td>
    <tr><td class="param">name</td><td>Name of the property.</td>
    <tr><td class="param">value</td><td>Property value to set.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga817a2b32085360202e18676ca84987e6"></a>
<div class="api">
  <div class="prototype">
    void
    dbClose
(<a href="#group___db" class="ref">Db</a> *db)
  </div>
  <div class="apiDetail">
<p>Close a database.</p>
    <dl><dt><b>Description</b>:</dt><dd>This will immediately save any unsaved changes and then close the database.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga0a97c8b21841a5dd9db0a5b4756068ab"></a>
<div class="api">
  <div class="prototype">
    const DbItem *
    DbItem* dbCreate
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Create a new item.</p>
    <dl><dt><b>Description</b>:</dt><dd>Create a new item of the required model type.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model entity to create. The model determines the valid set of properties for the created item. Set to NULL if no model is required.</td>
    <tr><td class="param">props</td><td>JSON object containing the item properties to create. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model and unknown property names will not be written to the database.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. <br/>
 bool upsert : 1; // Update on create if present. Create on update if missing. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The created database item. The <a class="ref" href="#struct_db_item">DbItem</a> &quot;name&quot; property is the indexed key value. The value &quot;json&quot; property contains the item values as a cached JSON object. Caller must not free the returned item. Returns null on errors. Use dbGetError to retrieve an error message.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga4b9d7d21ecc2175ae250949ab0e4c8ab"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    dbField
(const DbItem *item, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName)
  </div>
  <div class="apiDetail">
<p>Fetch a field value from an item as a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>Use to examine an item returned via dbGet or other APIs that return items.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">item</td><td>Database item returned from other APIs.</td>
    <tr><td class="param">fieldName</td><td>Name of the field to examine.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The field value as a string. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1gac5c48a1aa891b0d314edb51b058b9010"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a>
    dbFieldBool
(const DbItem *item, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName)
  </div>
  <div class="apiDetail">
<p>Fetch a field value from an item as a boolean.</p>
    <dl><dt><b>Description</b>:</dt><dd>Use to examine an item returned via dbGet or other APIs that return items. Will return true if the item field value is set to &quot;true&quot; or &quot;1&quot;.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">item</td><td>Database item returned from other APIs.</td>
    <tr><td class="param">fieldName</td><td>Name of the field to examine.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The field value as a boolean.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga7a4127d0731ee682422c9e0b9c5227f7"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a>
    dbFieldDate
(const DbItem *item, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName)
  </div>
  <div class="apiDetail">
<p>Fetch a field value from an item as a date.</p>
    <dl><dt><b>Description</b>:</dt><dd>Use to examine an item returned via dbGet or other APIs that return items. This requires that the date value be stored as an ISO date string.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">item</td><td>Database item returned from other APIs.</td>
    <tr><td class="param">fieldName</td><td>Name of the field to examine.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The field value as a date in a Time value. This is the time in milliseconds since Jan 1 1970.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga93fac43e0a7ac5b4c94876481db1724f"></a>
<div class="api">
  <div class="prototype">
    double
    dbFieldDouble
(const DbItem *item, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName)
  </div>
  <div class="apiDetail">
<p>Fetch a field value from an item as a double.</p>
    <dl><dt><b>Description</b>:</dt><dd>Use to examine an item returned via dbGet or other APIs that return items. This requires that the date value be stored as an ISO date string.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">item</td><td>Database item returned from other APIs.</td>
    <tr><td class="param">fieldName</td><td>Name of the field to examine.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The field value as a double.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1gadf6c90c797efa314f03c8788ce146a56"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a>
    dbFieldNumber
(const DbItem *item, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName)
  </div>
  <div class="apiDetail">
<p>Fetch a field value from an item as a number (64 bit).</p>
    <dl><dt><b>Description</b>:</dt><dd>Use to examine an item returned via dbGet or other APIs that return items.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">item</td><td>Database item returned from other APIs.</td>
    <tr><td class="param">fieldName</td><td>Name of the field to examine.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The field value as a 64 bit integer.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1gaafdada2cde79aa616cc8983bd95e9e41"></a>
<div class="api">
  <div class="prototype">
    <a href="#group___db_1gaf054200efd1ed1945d6f3f45371a391d" class="ref">DbGrid</a> *
    dbFind
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Find matching items in the database.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model for matching items. Set to NULL if no model is required.</td>
    <tr><td class="param">props</td><td>JSON object containing item properties to match. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model and unknown property names will not be written to the database.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. <br/>
 int limit; // Limit the number of returned or removed items. <br/>
 cchar *index; // Name of the index to use. Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;. <br/>
 cchar *next; // Next pagination token to use as the starting point for the next page of results. <br/>
 DbWhere where; // Where query expression callback function. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A grid of matching items. The DbGrid returned contains a property &quot;items&quot; that is an instance of RList. Items can be enumerated or accessed using ITERATE_ITEMS, rGetNextItem and rGetItem. Caller must free the grid using dbFreeGrid.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1gac2f688b7885de38dbd9d124d8ce648aa"></a>
<div class="api">
  <div class="prototype">
    const DbItem *
    DbItem* dbFindOne
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Find the first matching item.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model for matching items. Set to NULL if no model is required.</td>
    <tr><td class="param">props</td><td>JSON object containing item properties to match. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model and unknown property names will not be written to the database.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. <br/>
 cchar *index; // Name of the index to use. Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;. <br/>
 DbWhere where; // Where query expression callback function. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The first matching item. Returns null if no match found.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga5e588393eeb607e9648fa826482378d3"></a>
<div class="api">
  <div class="prototype">
    void
    dbFreeGrid
(<a href="#group___db_1gaf054200efd1ed1945d6f3f45371a391d" class="ref">DbGrid</a> *grid)
  </div>
  <div class="apiDetail">
<p>Free a grid returned by dbFind.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">grid</td><td>Grid returned by calling <a class="ref" href="#group___db_1gaafdada2cde79aa616cc8983bd95e9e41">dbFind</a></td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga50606236e4033352fc77e5c38e2be1cd"></a>
<div class="api">
  <div class="prototype">
    const DbItem *
    DbItem* dbGet
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Read a matching item from the database.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model for matching items.</td>
    <tr><td class="param">props</td><td>JSON object containing the item properties to match. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model and unknown property names will not be written to the database.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. <br/>
 cchar *index; // Name of the index to use. Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The matching database item. The <a class="ref" href="#struct_db_item">DbItem</a> &quot;name&quot; property is the indexed key. The value &quot;json&quot; property contains the item values as a cached JSON object. If null, the &quot;value&quot; property contains the item&apos;s value as an unparsed JSON string. Use dbField to access the individual field values in the item. Caller must not free the returned item.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga21a876d9342d9340ef434e589bcc313d"></a>
<div class="api">
  <div class="prototype">
    const cchar *
    cchar* dbGetError
(<a href="#group___db" class="ref">Db</a> *db)
  </div>
  <div class="apiDetail">
<p>Get an error message for the most recent API call.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A static error message string. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga495353d379083c0c92d1a2d9fb4c2665"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    dbGetField
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Get a field from a matching item from the database.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model for matching items.</td>
    <tr><td class="param">fieldName</td><td>Name of the item field to return.</td>
    <tr><td class="param">props</td><td>JSON object containing the item properties to match. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model and unknown property names will not be written to the database.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. <br/>
 cchar *index; // Name of the index to use. Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A string containing the required field in the data item. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga42f3669cb98f1de837638a4d589bd153"></a>
<div class="api">
  <div class="prototype">
    <a href="#struct_db_model" class="ref">DbModel</a> *
    dbGetItemModel
(<a href="#group___db" class="ref">Db</a> *db, <a href="#struct_db_item" class="ref">DbItem</a> *item)
  </div>
  <div class="apiDetail">
<p>Get the model object for a data item.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance.</td>
    <tr><td class="param">item</td><td>Data item with a model type field.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A model instance.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Prototype.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1gaa98a9533a6cdd60f951be9672bc8e03a"></a>
<div class="api">
  <div class="prototype">
    <a href="#struct_db_model" class="ref">DbModel</a> *
    dbGetModel
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)
  </div>
  <div class="apiDetail">
<p>Get the model object for a model name.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance.</td>
    <tr><td class="param">name</td><td>Model name.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A model instance.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Prototype.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga454a7dc0105c255ebc1726b18565690c"></a>
<div class="api">
  <div class="prototype">
    <a href="json.html#group___json" class="ref">Json</a> *
    dbJson
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Parse a string into Json properties.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">fmt</td><td>Printf style format string.</td>
    <tr><td class="param">...</td><td>Arguments to fmt.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A JSON object containing the supplied property values.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1gaa0673c3f3f66ad25b65b7658768d2f7f"></a>
<div class="api">
  <div class="prototype">
    <a href="json.html#group___json" class="ref">Json</a> *
    dbJsonProps
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *props)
  </div>
  <div class="apiDetail">
<p>Convert a list of keyword / value pairs into a JSON object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">props</td><td>NULL terminated array of keyword / value pairs.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A JSON object containing the supplied property values.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga41f826540ec6bf61f8e5c8f42176f80c"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    dbNext
(<a href="#group___db_1gaf054200efd1ed1945d6f3f45371a391d" class="ref">DbGrid</a> *grid)
  </div>
  <div class="apiDetail">
<p>Get the next key when using paginated find requests.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">grid</td><td>A grid returned from a prior dbFind request.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A reference into the last item returned in the grid.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Prototype.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1gaad25e097a9931956068f7cec19be63db"></a>
<div class="api">
  <div class="prototype">
    <a href="#group___db" class="ref">Db</a> *
    dbOpen
(<a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *schema, int flags)
  </div>
  <div class="apiDetail">
<p>Open a database.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">path</td><td>Filename for from which to load and save the database when calling dbSave. On open, an initial load is performed from the file at path.</td>
    <tr><td class="param">schema</td><td>OneTable data schema describing the indexes and data models.</td>
    <tr><td class="param">flags</td><td>Reserved. Set to zero.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___db_1ga817a2b32085360202e18676ca84987e6" class="ref">dbClose</a></dd></dl>
  </div>
</div>
<a name="group___db_1ga60fb164a45e6836efe1e8eb66c96044d"></a>
<div class="api">
  <div class="prototype">
    int
    dbRemove
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Remove matching items in the database.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model for matching items.</td>
    <tr><td class="param">props</td><td>JSON object containing the item properties to match. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model and unknown property names will not be written to the database.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. int limit; // Limit the number of items to remove. <br/>
 cchar *index; // Name of the index to use. Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A count of the number of items removed.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga6d9af9a8f9db7599aaed5e80d023cf5f"></a>
<div class="api">
  <div class="prototype">
    int
    dbSave
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *filename)
  </div>
  <div class="apiDetail">
<p>Save the database.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance.</td>
    <tr><td class="param">filename</td><td>Optional filename to save data to. If set to NULL, the data is saved to the name given when opening the database via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga635f11c13cc777afd15791d13e40ec54"></a>
<div class="api">
  <div class="prototype">
    const DbItem *
    DbItem* dbSetBool
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, <a href="r.html#osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> value, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Set an item field value as a boolean.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model for the item. Set to NULL if no model is required.</td>
    <tr><td class="param">fieldName</td><td>Name of the item field to set.</td>
    <tr><td class="param">value</td><td>Value to assign to the item&apos;s field.</td>
    <tr><td class="param">props</td><td>JSON object containing the item properties to match. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. <br/>
 cchar *index; // Name of the index to use. Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The updated item. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1gac96e0f65d233801a4fbcc7049437c781"></a>
<div class="api">
  <div class="prototype">
    void
    dbSetCallback
(<a href="#group___db" class="ref">Db</a> *db, <a href="#group___db_1gaed16356e5494975bb4873c235a00bfed" class="ref">DbCallback</a> proc, void *arg)
  </div>
  <div class="apiDetail">
<p>Set the database change trigger callback.</p>
    <dl><dt><b>Description</b>:</dt><dd>When database items are changed, the trigger callback is invoked to notify regarding the change.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance.</td>
    <tr><td class="param">proc</td><td>Database trigger function.</td>
    <tr><td class="param">arg</td><td>Argument to pass to the trigger function.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga43add4e01876db74fd391ded4e50adf9"></a>
<div class="api">
  <div class="prototype">
    const DbItem *
    DbItem* dbSetDate
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, <a href="r.html#osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a> value, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Set an item field value as a date.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model for the item. Set to NULL if no model is required.</td>
    <tr><td class="param">fieldName</td><td>Name of the item field to set.</td>
    <tr><td class="param">value</td><td>Value to assign to the item&apos;s field.</td>
    <tr><td class="param">props</td><td>JSON object containing the item properties to match. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. <br/>
 cchar *index; // Name of the index to use. Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The updated item. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga914dfc9629babc4a0102a796c8e2ac54"></a>
<div class="api">
  <div class="prototype">
    const DbItem *
    DbItem* dbSetDouble
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, double value, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Set an item field value as a double.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model for the item. Set to NULL if no model is required.</td>
    <tr><td class="param">fieldName</td><td>Name of the item field to set.</td>
    <tr><td class="param">value</td><td>Value to assign to the item&apos;s field.</td>
    <tr><td class="param">props</td><td>JSON object containing the item properties to match. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. <br/>
 cchar *index; // Name of the index to use. Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The updated item. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1gaf5b2eac52bf84448943f66d803cc8416"></a>
<div class="api">
  <div class="prototype">
    const DbItem *
    DbItem* dbSetField
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *value, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Set an item field value.</p>
    <dl><dt><b>Description</b>:</dt><dd>Update a field in an existing item. The item must already exist.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model for the item. Set to NULL if no model is required.</td>
    <tr><td class="param">fieldName</td><td>Name of the item field to set.</td>
    <tr><td class="param">value</td><td>Value to assign to the item&apos;s field.</td>
    <tr><td class="param">props</td><td>JSON object containing the item properties to match. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. <br/>
 cchar *index; // Name of the index to use. Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The updated item. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga5676f7ca79bcf86429a0eb269b0c7d23"></a>
<div class="api">
  <div class="prototype">
    const DbItem *
    DbItem* dbSetNum
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fieldName, <a href="r.html#osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Set an item field value as a number.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model for the item. Set to NULL if no model is required.</td>
    <tr><td class="param">fieldName</td><td>Name of the item field to set.</td>
    <tr><td class="param">value</td><td>Value to assign to the item&apos;s field.</td>
    <tr><td class="param">props</td><td>JSON object containing the item properties to match. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. <br/>
 cchar *index; // Name of the index to use. Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The updated item. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1ga19edfe9bef6f314829435b8f4f3fed0e"></a>
<div class="api">
  <div class="prototype">
    const DbItem *
    DbItem* dbUpdate
(<a href="#group___db" class="ref">Db</a> *db, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *model, <a href="json.html#group___json" class="ref">Json</a> *props, <a href="#struct_db_params" class="ref">DbParams</a> *params)
  </div>
  <div class="apiDetail">
<p>Update an item.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">db</td><td>Database instance returned via <a class="ref" href="#group___db_1gaad25e097a9931956068f7cec19be63db">dbOpen</a></td>
    <tr><td class="param">model</td><td>Name of the schema model for the item. Set to NULL if no model is required.</td>
    <tr><td class="param">props</td><td>JSON object containing the item properties to update. Use the macro DB_PROP(name, value, ...) to specify the properties as a list of keyword / value pairs. Use DB_JSON to provide the properties as a JSON/5 string. For example: DB_PROP(&quot;name&quot;, name, &quot;address&quot;, &quot;12 Wishbury lane&quot;) or DB_JSON(&quot;{role: &apos;user&apos;}&quot;). If a model is provided, the properties are validated against the model and unknown property names will not be written to the database.</td>
    <tr><td class="param">params</td><td>List of API parameters. Use the macro DB_PARAMS(key = value, ...) to specify. <br/>
 cchar *index; // Name of the index to use. Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;. <br/></td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The updated item. Caller must not free. Returns null on errors. Use dbGetError to retrieve an error message.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>

## Typedefs

<a name="group___db_1gaed16356e5494975bb4873c235a00bfed"></a>
<div class="api">
  <div class="prototype">
    typedef void(* DbCallback) (void *arg, struct Db *db, struct DbModel *model, struct DbItem *item, struct DbParams *params, cchar *cmd).
  </div>
  <div class="apiDetail">
<p>Database callback on changes.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">arg</td><td>User argument provided to dbSetCallback.</td>
    <tr><td class="param">db</td><td>Database instance.</td>
    <tr><td class="param">model</td><td><a class="ref" href="#struct_db_model">DbModel</a> reference describing the item&apos;s schema model.</td>
    <tr><td class="param">item</td><td>Database item that is changing.</td>
    <tr><td class="param">params</td><td>User params provided to the API that caused the change.</td>
    <tr><td class="param">cmd</td><td>The nature of the change. Set to &quot;create&quot;, &quot;update&quot; or &quot;remove&quot;.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___db_1gaf054200efd1ed1945d6f3f45371a391d"></a>
<div class="api">
  <div class="prototype">
    typedef RList DbGrid.
  </div>
  <div class="apiDetail">
<p>Database grid of items returned from dbFind.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="struct_db_item"></a>
<div class="api">
  <div class="prototype">DbItem</div>
  <div class="apiDetail">
<p>Database items stored in RB indexes.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>allocatedName</td><td>
The name is allocated and must be freed when removed.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>allocatedValue</td><td>
The value is allocated and must be freed when removed.
</td>
    <tr><td class="param">Json *</td><td><td>json</td><td>
Parsed JSON value of the item.
</td>
    <tr><td class="param">char *</td><td><td>key</td><td>
Indexed name of the item. 
Used as the sort key.
</td>
    <tr><td class="param">char *</td><td><td>value</td><td>
Text value of the item (JSON string).
</td>
    </table></dd></dl>
  </div>
</div>
<a name="struct_db_model"></a>
<div class="api">
  <div class="prototype">DbModel</div>
  <div class="apiDetail">
<p>Model schema.</p>
    <dl><dt><b>Description</b>:</dt><dd>The model schema defines an application entity and the supported entity fields.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">RHash *</td><td><td>fields</td><td>
Hash of model fields.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>name</td><td>
Name of the model.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>sync</td><td>
Sync model items to the cloud.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">Time</a></td><td><td>syncDelay</td><td>
Time to delay syncing changes to the cloud.
</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="struct_db_params"></a>
<div class="api">
  <div class="prototype">DbParams</div>
  <div class="apiDetail">
<p>Database parameters.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">cvoid</a> *</td><td><td>arg</td><td>
Argument to where callback.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>bypass</td><td>
Bypass change trigger.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>index</td><td>
Name of index to use. 
Defaults to &quot;primary&quot;. Currently only supports &quot;primary&quot;.
</td>
    <tr><td class="param">int</td><td><td>limit</td><td>
Limit the number of returned or removed items.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>log</td><td>
Emit trace information to the log.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>next</td><td>
Next pagination token to use as the starting point for the next page of results.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" external="/Users/mob/dev/db/paks/osdep/doc/api/osdep.dtags">bool</a></td><td><td>upsert</td><td>
Update on create if present. 
Create on update if missing.
</td>
    <tr><td class="param">DbWhere</td><td><td>where</td><td>
Where query expression callback.
</td>
    </table></dd></dl>
  </div>
</div>

