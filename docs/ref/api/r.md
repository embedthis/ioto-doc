# R API

The Safe Runtime (R) is a portable runtime library for embedded applications.

The R library provides management for binary searching, buffering, error handling, events, events, files, hashing, lists, logging, memory, ssl, sockets, strings, and date/time functions. It also provides a foundation of safe routines for secure programming, that help to prevent buffer overflows and other security threats. The library can be used in both C and C++ programs.

The R library uses a set extended typedefs for common types. These include: bool, cchar, cvoid, uchar, short, ushort, int, uint, long, ulong, int32, uint32, int64, uint64, float, and double. The cchar type is a const char, cvoid is const void. Several types have "u" prefixes to denote unsigned qualifiers.

The library includes a memory allocator and global memory allocation handler.

The library provides support for fiber coroutines to enable parallel programming without callbacks or complex threads. The network APIs use fibers to transparently block the fiber and resume other fibers automatically. This enables a straight-line "blocking" programming paradigm while enabling other fibers to run as required.



<a name="Extensions"></a>
## Extensions

  <table class="apiIndex" title="Extensions">
<tr class="apiDef">
<td class="apiName"><a href="#group___r_buf" class="nameRef">RBuf</a></td>
<td class="apiBrief">Dynamic Buffer Module.</td></tr>
<tr class="apiDef">
<td class="apiName"><a href="#group___r_event" class="nameRef">REvent</a></td>
<td class="apiBrief">Event Subsystem.</td></tr>
<tr class="apiDef">
<td class="apiName"><a href="#group___r_file" class="nameRef">RFile</a></td>
<td class="apiBrief">R File Module.</td></tr>
<tr class="apiDef">
<td class="apiName"><a href="#group___r_hash" class="nameRef">RHash</a></td>
<td class="apiBrief">Hash table structure.</td></tr>
<tr class="apiDef">
<td class="apiName"><a href="#group___r_list" class="nameRef">RList</a></td>
<td class="apiBrief">List data structure.</td></tr>
<tr class="apiDef">
<td class="apiName"><a href="#group___r_log" class="nameRef">RLog</a></td>
<td class="apiBrief">Log Services.</td></tr>
<tr class="apiDef">
<td class="apiName"><a href="#group___r_string" class="nameRef">RString</a></td>
<td class="apiBrief">R String Module.</td></tr>
<tr class="apiDef">
<td class="apiName"><a href="#group___r_wait" class="nameRef">RWait</a></td>
<td class="apiBrief">Wait object.</td></tr>
<tr class="apiDef">
<td class="apiName"><a href="#group___rb_tree" class="nameRef">RbTree</a></td>
<td class="apiBrief">Red/Black Tree.</td></tr>
</table>
<a name="Functions"></a>
## Functions

  <table class="apiIndex" title="Functions">
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1ga5b4b64403d8306e632101ffcd0591d57" class="nameRef">assert</a>(<a href="osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> cond)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Asser that a condition is true.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName*</td><td><a href="#group___r_hash_1gaf4902c99237c8c91554dfa8997c2f158" class="nameRef">rAddFmtName</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, int flags, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Add a name and formatted string value into the hash table.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName*</td><td><a href="#group___r_hash_1ga2659446e00d89fe3905c9404d854ea22" class="nameRef">rAddIntName</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Add a name and integer value.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="nameRef">rAddItem</a>(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *item)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Add an item to a list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName*</td><td><a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="nameRef">rAddName</a>(<a href="#group___r_hash" class="ref">RHash</a> *table, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, void *ptr, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Add a name and value into the hash table.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName*</td><td><a href="#group___r_hash_1ga4c8f8c3eb68752a68d242d2f3ef8d6bd" class="nameRef">rAddNameSubstring</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> nameSize, char *value, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> valueSize)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Add a name and value substring into the hash table.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="nameRef">rAddNullItem</a>(<a href="#group___r_list" class="ref">RList</a> *list)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Add a null item to the list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="nameRef">rAddNullToBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Add a null character to the buffer contents.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="nameRef">rAdjustBufEnd</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> count)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Adjust the buffer end position.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="nameRef">rAdjustBufStart</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> count)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Adjust the buffer start position.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#r_8h_1acc57d0183d0c7a070b92ec44532175a7" class="nameRef">rAlloc</a>(<a href="#r_8h_1a1600235df88b3821764244933b5024f5" class="ref">size_t</a> size)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate a block of memory.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RBuf*</td><td><a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="nameRef">rAllocBuf</a>(<a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> initialSize)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Create a new buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> REvent</td><td><a href="#r_8h_1a9956968f7bf3e00c214fdc7efc1d6058" class="nameRef">rAllocEvent</a>(<a href="#struct_r_fiber" class="ref">RFiber</a> *fiber, <a href="#group___r_event_1ga02fa8ee37c08629cb92622c0f8dc1135" class="ref">REventProc</a> proc, void *data, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> delay)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate and schedule a new event to be run from the event loop.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a62cfe3780073101ebb4305677889637d" class="nameRef">rAllocException</a>(int cause, <a href="#r_8h_1a1600235df88b3821764244933b5024f5" class="ref">size_t</a> size)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Signal a memory allocation exception.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RFiber*</td><td><a href="#r_8h_1a6221a2d6416bc9a0bb2a0b8e01800a31" class="nameRef">rAllocFiber</a>(<a href="#r_8h_1acd4039811a4e67c7ef110876b509b8be" class="ref">RFiberProc</a> fn, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate a fiber coroutine object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RHash*</td><td><a href="#group___r_hash_1ga31a62f7f2ddcf452767b083906ad01e4" class="nameRef">rAllocHash</a>(int size, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Create a hash table.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RList*</td><td><a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="nameRef">rAllocList</a>(int size, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate a list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RLock*</td><td><a href="#r_8h_1a0c254e7a278ede4db77f88be56f05e27" class="nameRef">rAllocLock</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate a lock object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RSocket*</td><td><a href="#r_8h_1a8c46e261f1fe1a8dc841cfe7b980b1cf" class="nameRef">rAllocSocket</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate a socket object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#r_8h_1a95d674cbdb1def04814b3915eddbdcc0" class="nameRef">rAllocType</a>(<a href="#r_8h_1a4d5d80eb50dbe31bd1c45a7607a222f6" class="ref">RType</a> type)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate an object of a given type.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RWait*</td><td><a href="#group___r_wait_1ga5a6810a6d12f5bcb3e17fee7fc1fb1d8" class="nameRef">rAllocWait</a>(int fd)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate a wait object for a file descriptor.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1ga8a42754b9d1b03011c35a0dbc4b5e8ab" class="nameRef">rAssert</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *loc, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *msg)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Output an assert failed message.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_file_1ga716ee6d70922510d433663743637fbea" class="nameRef">rBackupFile</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, int count)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Backup the given file.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1ga88d26bf0221718cdf82c34afccc182d2" class="nameRef">rBackupLog</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Backup a log.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar*</td><td><a href="#group___r_file_1ga912ef2bd9ee35aa743ae76cc24ed29d0" class="nameRef">rBasename</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return the basename (filename) portion of a filename.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a1ee5682992282644ea9f86d2b6fd0ac0" class="nameRef">rBreakpoint</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Trigger a breakpoint.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="nameRef">rBufToString</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return a reference to the buffer contents.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_buf_1gaa3c557dad4f202adf0a0f03aee2b5de6" class="nameRef">rBufToStringAndFree</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert the buffer contents to a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="nameRef">rClearList</a>(<a href="#group___r_list" class="ref">RList</a> *list)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Clears the list of all items.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RHash*</td><td><a href="#group___r_hash_1gac1d58f482e934683f662bf65c124885e" class="nameRef">rCloneHash</a>(<a href="#group___r_hash" class="ref">RHash</a> *master)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Copy a hash table.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a2840dcc80c3c9da4c051da6206dfb182" class="nameRef">rCloseSocket</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Close a socket.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="nameRef">rCompactBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Compact the buffer contents.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1adb1137a3aadc487a50c8715a179e874a" class="nameRef">rConnectSocket</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *host, int port, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Connect a client socket.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1a0c3a47b424de519ffd6cbd8025e04f1b" class="nameRef">rCreateThread</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, void *proc, void *data)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Create an O/S thread.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_log_1ga8a257ecb7db62931d0c93cc45cab746c" class="nameRef">rDaemonize</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>For the current process and run as a daemon.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1ga98a3bfdd72a73f58867a576d206a7264" class="nameRef">rDebug</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Emit a debug message to the log.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1ga466aeadb53aa9115af4a38b56fe99ced" class="nameRef">rDefaultLogHandler</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *type, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *msg)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>The default log handler.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#group___r_log_1ga962ed96d28a0430a633a350f05131295" class="nameRef">rEmitLog</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *type, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Test if a log message should be emitted.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="nameRef">rError</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Emit an error message to the log.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="nameRef">rFlushBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Flush the buffer contents.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#r_8h_1a3cdb0dd3552f0cda8911ac028742bd36" class="nameRef">rFormatLocalTime</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *format, <a href="osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a> time)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a time value to local time and format as a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RBuf*</td><td><a href="#group___r_log_1ga38020b8554396c9ca013e01b42c80487" class="nameRef">rFormatLog</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *type, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *msg)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Format a log message into a buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#r_8h_1ad1d54b741f20a8d2f3e4c1448be44b15" class="nameRef">rFormatUniversalTime</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *format, <a href="osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a> time)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a time value to universal time and format as a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a7a2d7caf461b23fdbc41b6a448018c6c" class="nameRef">rFree</a>(void *ptr)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a block of memory allocated via rAlloc.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_buf_1ga4e8dd5b9e1095239db0f32e802112edd" class="nameRef">rFreeBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1aedbf935e66750b9f6d963ed460150d99" class="nameRef">rFreeFiber</a>(<a href="#struct_r_fiber" class="ref">RFiber</a> *fiber)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a fiber coroutine.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_hash_1gabf892e6b860a6e005e28924cadfcbb94" class="nameRef">rFreeHash</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a hash table.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_list_1gac4b1e668494ccaae544fad3e939cc3da" class="nameRef">rFreeList</a>(<a href="#group___r_list" class="ref">RList</a> *list)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a1ded1ae622f1d4a0f629891fc66b76e1" class="nameRef">rFreeLock</a>(<a href="#struct_r_lock" class="ref">RLock</a> *mutex)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a dynamically allocated lock object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a5974bf340241888ac8e6a62623574cf2" class="nameRef">rFreeSocket</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a socket object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_wait_1ga037cbc9c455f940d6fdafbd37cda3211" class="nameRef">rFreeWait</a>(<a href="#group___r_wait" class="ref">RWait</a> *wp)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a wait object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_file_1ga053627192a327b861938345f04a290ec" class="nameRef">rGetAppDir</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the directory containing the application executable.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar*</td><td><a href="#r_8h_1a7cc294120ab4d36a0443ff664a1b3783" class="nameRef">rGetAppName</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the application name defined via rSetAppName.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="nameRef">rGetBlockFromBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, char *blk, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> count)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a block of data from the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar*</td><td><a href="#group___r_buf_1ga1e140ede977634a38b356e014e1a7ab5" class="nameRef">rGetBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the origin of the buffer content storage.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar*</td><td><a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="nameRef">rGetBufEnd</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a reference to the end of the buffer contents.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="nameRef">rGetBufLength</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the buffer content length.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="nameRef">rGetBufSize</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the current size of the buffer content storage.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="nameRef">rGetBufSpace</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the space available to store content.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar*</td><td><a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="nameRef">rGetBufStart</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the start of the buffer contents.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="nameRef">rGetCharFromBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a character from the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RThread</td><td><a href="#r_8h_1a4ead22e4e498bd3c3dcce1efb3558886" class="nameRef">rGetCurrentThread</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the current Thread.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_file_1ga8055b75c8862a5e7a241a06f24fa4b23" class="nameRef">rGetCwd</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the current application working directory.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#r_8h_1ace5dc0804f699de76ac4b0ce52d667f9" class="nameRef">rGetDate</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *format)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a string representation of the current date/time.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Ticks</td><td><a href="#r_8h_1a21aa129982dcedfa8de399059f9d39c7" class="nameRef">rGetElapsedTicks</a>(<a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> mark)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the elapsed time since a ticks mark.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar*</td><td><a href="#r_8h_1aad2a1d28c40f060ad1cfc810338c9c9b" class="nameRef">rGetError</a>(int error)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return a string representation of an R error code.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RFiber*</td><td><a href="#r_8h_1a4245dba2ae6400bd683cfe659c952f2d" class="nameRef">rGetFiber</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the current fiber object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#r_8h_1a166b5f27f5f01da78f1b7945464ede23" class="nameRef">rGetFiberStack</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the base address of the fiber stack.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RList*</td><td><a href="#group___r_file_1gad1cf3cbd9aa1bf289c1bba118dbc2f51" class="nameRef">rGetFiles</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *base, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Create a list of files in a directory or subdirectories that match the given wildcard pattern.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RList*</td><td><a href="#group___r_file_1gacaa309aeb865a892577d46c03e970702" class="nameRef">rGetFilesEx</a>(<a href="#group___r_list" class="ref">RList</a> *results, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *base, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a list of files in a directory or subdirectories that match the given wildcard pattern.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="nameRef">rGetHashLength</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return the count of symbols in a symbol entry.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1a151d6b4fc026bbbf0b057d78f2543f50" class="ref">uint64</a></td><td><a href="#r_8h_1a0e3990fe1e1b665f0d78d1edf8ed1fa3" class="nameRef">rGetHiResTicks</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the CPU tick count.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#r_8h_1a7eb682d940ee0ec2326ba835b4ee5d50" class="nameRef">rGetIsoDate</a>(<a href="osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a> time)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get an ISO Date string representation of the given date/time.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="nameRef">rGetItem</a>(<a href="#group___r_list" class="ref">RList</a> *list, int index)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get an list item.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="nameRef">rGetListLength</a>(<a href="#group___r_list" class="ref">RList</a> *list)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the number of items in the list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="nameRef">rGetLogFile</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the log file file handle.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RLogHandler</td><td><a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="nameRef">rGetLogHandler</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return the currently configured log handler defined via <a class="ref" href="#group___r_log_1ga8d1f1a5146e4c8654ddf7d98a1da78c0">rSetLogHandler</a></td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="nameRef">rGetNextItem</a>(<a href="#group___r_list" class="ref">RList</a> *list, int *lastIndex)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the next item in the list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName*</td><td><a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="nameRef">rGetNextName</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="#struct_r_name" class="ref">RName</a> *next)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return the next symbol in a symbol entry.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1a6c976fbb9c1038e02d41c618593c21b6" class="nameRef">rGetOsError</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return the native O/S error code.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Ticks</td><td><a href="#r_8h_1a5dc330a4d9c78f414c3289dfc6be6341" class="nameRef">rGetRemainingTicks</a>(<a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> mark, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> timeout)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return the time remaining until a timeout has elapsed.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar*</td><td><a href="#r_8h_1a49a635c02ea8f5992a3fc1117996653d" class="nameRef">rGetServerName</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the application server name string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1a34ab66c09cf9644da85ef1257f63e6e1" class="nameRef">rGetSocketAddr</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, char *ipbuf, int ipbufLen, int *port)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the locally bound socket IP address and port for the socket.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Socket</td><td><a href="#r_8h_1ab4b12fff7f437c19e7ccc0837c8de773" class="nameRef">rGetSocketHandle</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the socket file descriptor.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1a4bba5d382cad512b94fb175f3795acab" class="nameRef">rGetState</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the current R state.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_file_1ga6abaa4fb2e6607a073bfb2dd7f4cc609" class="nameRef">rGetTempFile</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *dir, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *prefix)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get a temp filename.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Ticks</td><td><a href="#r_8h_1adf7e774e1366b9578853ff33619141f2" class="nameRef">rGetTicks</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the system time.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Time</td><td><a href="#r_8h_1adeff51c6169701ca88855c628e541213" class="nameRef">rGetTime</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the time.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#r_8h_1ac13f8cbe3da625b2be5d9bfd514763b4" class="nameRef">rGetTimeouts</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return true if timeouts are enabled.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1a027be31ceca9425f9027e861af344db0" class="nameRef">rGetWaitFd</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the global wait descriptor.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a69c34c0d21ba3e687fd427ec7e8c76e0" class="nameRef">rGlobalLock</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Globally lock the application.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a5730b725b8f64ebdaf60610e2505473d" class="nameRef">rGlobalUnlock</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Unlock the global mutex.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1aaefdc50bc76e3432ab3e17828131d865" class="nameRef">rGracefulStop</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Gracefully stop the app.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="nameRef">rGrowBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> count)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Grow the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1af8cabeb2b1a911a9158521980d56e9ec" class="nameRef">rGrowList</a>(<a href="#group___r_list" class="ref">RList</a> *list, int size)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Grow the list to be at least the requested size in elements.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#r_8h_1a4d3daaf25495154da965f2a6f02a6377" class="nameRef">rHashToJson</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash, int pretty)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a hash into JSON.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RBuf*</td><td><a href="#r_8h_1a3745469c82bb38b8552e4e388cf55914" class="nameRef">rHashToJsonBuf</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="#group___r_buf" class="ref">RBuf</a> *buf, int pretty)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a hash into JSON in the given buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_hash_1gae9e1444aab973b2133f316e831d06020" class="nameRef">rHashToString</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *join)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a hash of strings to a single string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1ga7ca88dbb4fff0bb32525a6a0777c10b5" class="nameRef">rInfo</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Emit an informational message to the log.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1a035204f021dd1ab1a47355c57ac68850" class="nameRef">rInit</a>(<a href="#r_8h_1acd4039811a4e67c7ef110876b509b8be" class="ref">RFiberProc</a> fn, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *arg, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> stackSize)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Initialize the runtime.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="nameRef">rInitBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Initialize the buffer and set the initial buffer size.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1a10264d35b573aaa8df2ab522082cfba1" class="nameRef">rInitFibers</a>(<a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> stackSize)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Initialize the fiber coroutine module.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RLock*</td><td><a href="#r_8h_1ad6370a569f893788ec5a45dae4042929" class="nameRef">rInitLock</a>(<a href="#struct_r_lock" class="ref">RLock</a> *mutex)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Initialize a statically allocated lock object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_log_1gab4a504e7ebc1b15e397da634d34babd4" class="nameRef">rInitLog</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Initialize the logging subsystem.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1a39a3b12767224595ac001b4a5030ba6c" class="nameRef">rInitOs</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Create and initialze the O/S dependent subsystem.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_wait_1gafa3d44f93c21799c4d279a37c44ca190" class="nameRef">rInitWait</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Initialize the I/O wait subsystem.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="nameRef">rInserCharToBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, int c)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Inser a character into the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="nameRef">rInsertItemAt</a>(<a href="#group___r_list" class="ref">RList</a> *list, int index, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *item)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Inser an item into a list at a specific position.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#group___r_file_1gae57072acf0891538468aa4f744001c77" class="nameRef">rIsFileAbs</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Determine if a file path is an absolute path.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#group___r_log_1gabd718243ed41bc3ff573f6fd487016ba" class="nameRef">rIsLogSet</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Test if the log has been configured.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#r_8h_1a8a750bb33290f0089f447865e08bb9be" class="nameRef">rIsMain</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Test if a fiber is the main fiber.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#r_8h_1a89de99c5d48a75a6b85bd41a08b7b61e" class="nameRef">rIsSocketClosed</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Test if the socket has been closed.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#r_8h_1a3ac7acebcbef32b9da5dde0f42ebfbb5" class="nameRef">rIsSocketConnected</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Determine if the socket has connected to a remote pper.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#r_8h_1ad1ba813892c1fefc9c2c4cfb209a181c" class="nameRef">rIsSocketEof</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Test if the other end of the socket has been closed.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#r_8h_1ac57d5c9c5051641bc023ad20751e58ef" class="nameRef">rIsSocketHandshaking</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Determine if the socket is partway through a TLS handshake.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#r_8h_1a1d7bb7eb0e4b3bcd2d64770fe5eb131a" class="nameRef">rIsSocketSecure</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Determine if the socket is secure.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_file_1ga48108215fedceddb56a801f374d7868e" class="nameRef">rJoinFile</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *base, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *other)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Join file paths.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_file_1gac1eb37657cb00decdae3d35b346409cd" class="nameRef">rJoinFileBuf</a>(char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *base, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *other)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Join paths into a buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_list_1ga194af257ed4a162b37d85279afc9367a" class="nameRef">rListToString</a>(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *join)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a list of strings to a single string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1a8a536877ebfc576456b1493a8cd373a5" class="nameRef">rListenSocket</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *host, int port, <a href="#r_8h_1af324bdc33c3c712ac5c73c295cd6b79c" class="ref">RSocketProc</a> handler, void *arg)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Listen on a server socket for incoming connections.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="nameRef">rLog</a>(char *type, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write a message to the error log file.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1ga289ce10b47b026afb492f1b688693841" class="nameRef">rLogConfig</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Print the product configuration at the start of the log file.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1gac48ae55a11f78d13459fe258a9e842c9" class="nameRef">rLogv</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *type, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, va_list args)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write a message to the log file.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="nameRef">rLookAtLastCharInBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Peek at the last character in the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="nameRef">rLookAtNextCharInBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Peek at the next character in the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#group___r_event_1ga60ce3f229feb51fb1311bdc62d0acec2" class="nameRef">rLookupEvent</a>(<a href="#group___r_event" class="ref">REvent</a> id)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Lookup an event ID.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="nameRef">rLookupItem</a>(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *item)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Find an item and return its index.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="nameRef">rLookupName</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Lookup a symbol in the hash table.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName*</td><td><a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="nameRef">rLookupNameEntry</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Lookup a symbol in the hash table and return the hash entry.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="nameRef">rLookupStringItem</a>(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Find a string item and return its index.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#group___r_file_1ga609be803fc704a4efe4134f32a286475" class="nameRef">rMatchFile</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Matach a file against a glob pattern.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#r_8h_1a5a59bb8b3265904510668e13d02e48ae" class="nameRef">rMemdup</a>(<a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *ptr, <a href="#r_8h_1a1600235df88b3821764244933b5024f5" class="ref">size_t</a> size)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Duplicate a block of memory.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1ga4ee437179e03b37a917ab6072ca4183f" class="nameRef">rMetrics</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *message, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *namespace, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *dimensions, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *values, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Emit an EMF metrics message suitable for AWS CloudWatch Metrics.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Time</td><td><a href="#r_8h_1aef8dcc86e5a69f95e2d9abc166449a67" class="nameRef">rParseIsoDate</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *when)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Parse an ISO date string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#group___r_list_1ga245a6881a7a7c67bcaa9dede4311416a" class="nameRef">rPopItem</a>(<a href="#group___r_list" class="ref">RList</a> *list)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Pop an item.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_list_1ga6d3bdf54b10a35114671150e1e810744" class="nameRef">rPushItem</a>(<a href="#group___r_list" class="ref">RList</a> *list, void *item)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Push an item onto the list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="nameRef">rPutBlockToBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *ptr, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Put a block to the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="nameRef">rPutCharToBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, int c)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Put a character to the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="nameRef">rPutIntToBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> i)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Put an integer to the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="nameRef">rPutStringToBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Put a string to the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="nameRef">rPutSubToBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> count)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Put a substring to the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_buf_1ga8187f289dd689e63ace742627324c956" class="nameRef">rPutToBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Put a formatted string to the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_file_1ga07fcdaa12ea86cb33d3a958c6dd32f94" class="nameRef">rReadFile</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> *lenp)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Read data from a file.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#r_8h_1a5e68016e4b9381eb07d94855361e4a6d" class="nameRef">rReadSocket</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Read from a socket.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#r_8h_1aa75ed2c407f881549fadace8ec56a3bc" class="nameRef">rReadSocketSync</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Read from a socket.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="nameRef">rRemoveItem</a>(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *item)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Remove an item from the list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="nameRef">rRemoveItemAt</a>(<a href="#group___r_list" class="ref">RList</a> *list, int index)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Remove an item from the list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="nameRef">rRemoveName</a>(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Remove a symbol entry from the hash table.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="nameRef">rRemoveStringItem</a>(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Remove a string item from the list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_buf_1ga2c0a8bb3043a79a0b76990d072dc728e" class="nameRef">rReserveBufSpace</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> need)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Grow the buffer so that there is at least the needed minimum space available.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="nameRef">rResetBufIfEmpty</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Reset the buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a8eb347a434bd998d213ec23e19230a6d" class="nameRef">rResetSocket</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Reset a socket.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#r_8h_1a059333256cfab39b5037149625e1133b" class="nameRef">rResumeFiber</a>(<a href="#struct_r_fiber" class="ref">RFiber</a> *fiber, void *result)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Resume a fiber.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Ticks</td><td><a href="#group___r_event_1ga562d0c21d142ca29cc7cee26fc21b450" class="nameRef">rRunEvents</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Run due events.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_event_1ga1e7ecc44de09a8c42918273b3fb89b30" class="nameRef">rServiceEvents</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Service events.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1ac43d285ac3c0df87711d0cea9fd50172" class="nameRef">rSetAppName</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *title, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *version)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the application name, title and version.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a30e2a4ad9a03e6de3925c1583489d19f" class="nameRef">rSetDefaultSocketCa</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *ca)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the default CA root certificate bundle.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1ga6bcd9eb7c0b6710d4eacf0bae8b7047a" class="nameRef">rSetError</a>(int error)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the error code.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1aa934a700a08bd3e0450d8846f4fb23c7" class="nameRef">rSetFiberStack</a>(<a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the default fiber stack size.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="nameRef">rSetItem</a>(<a href="#group___r_list" class="ref">RList</a> *list, int index, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *item)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set a list item.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="nameRef">rSetLog</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *spec, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *format, <a href="osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> force)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Initialize logging.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1ga0a43c6359c5f45d6b9b5d09fd9a67169" class="nameRef">rSetLogFilter</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *types, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *sources, <a href="osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> force)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Define a filter for log messages.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RLogHandler</td><td><a href="#group___r_log_1ga8d1f1a5146e4c8654ddf7d98a1da78c0" class="nameRef">rSetLogHandler</a>(<a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a> handler)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Define a log handler routine that will be invoked to process log messages.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a8c789489ea07a942b46dcb1c6a0d18c5" class="nameRef">rSetMemHandler</a>(<a href="#r_8h_1a3e2bc18aa2db34222ff8e68c993bb1d4" class="ref">RMemProc</a> handler)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Define a global memory exhaustion handler.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1af84ad013fcfa0dc3867dc6df1e4e7581" class="nameRef">rSetOsError</a>(int error)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the O/S error code.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a817d093be54881d3fc2b3a72e07271be" class="nameRef">rSetSocketBlocking</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> on)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set a socket into blocking I/O mode.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a55542c59fff2734e3993dc2bc7049b80" class="nameRef">rSetSocketCerts</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *cert, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *ca, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *revoke)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Configure the socket TLS certificates.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a9c25522e398b3719fec8e5028ff10c37" class="nameRef">rSetSocketCiphers</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *ciphers)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the ciphers to use for communications.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a962e82f4240c024e7117402fd15c3b38" class="nameRef">rSetSocketVerify</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, int verifyPeer, int verifyIssuer)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the socket TLS verification parameters.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1abb141da0e571ac51d9422fd89445c830" class="nameRef">rSetSocketWaitMask</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> mask, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Update the wait mask for a socket.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a5f33a3343c0937ad589d48beaeac5b8f" class="nameRef">rSetState</a>(int state)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the R state.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1gad227b3587a2e6ddd19b6e7cbc5fc9ae2" class="nameRef">rSetTimeouts</a>(<a href="osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> on)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Control timeouts.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_wait_1gaa04880449a5268ad44dc67a3d079eef9" class="nameRef">rSetWaitHandler</a>(<a href="#group___r_wait" class="ref">RWait</a> *wp, <a href="#group___r_wait_1ga489c3016ecc64ff8fffdd663a6249fbe" class="ref">RWaitProc</a> handler, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *arg, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> mask)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Define a wait handler function on a wait object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_event_1gab19a9edafc17535aa1b4c1435a3eeef1" class="nameRef">rSetWaitMask</a>(<a href="#group___r_wait" class="ref">RWait</a> *wp, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> mask, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Update the wait mask for a wait handler.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_event_1ga793fb8b257249e61ae9ecdfd998a952c" class="nameRef">rSignal</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *arg)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Signal watches of a named event.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a35b19891b3c32f496ee52b157cae938a" class="nameRef">rSleep</a>(<a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> ticks)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Sleep a fiber for the requested number of milliseconds.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#group___r_list_1gad5498b891b6f620a0f6f3319f8adf79e" class="nameRef">rSort</a>(void *base, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> num, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> width, <a href="#group___r_list_1gae9d91521f1622b618ba1bb4cffc9090b" class="ref">RSortProc</a> compare, void *ctx)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Quicksort.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RList*</td><td><a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="nameRef">rSortList</a>(<a href="#group___r_list" class="ref">RList</a> *list, <a href="#group___r_list_1gae9d91521f1622b618ba1bb4cffc9090b" class="ref">RSortProc</a> compare, void *ctx)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Sor a list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#r_8h_1a116c72a151fb75665eaef53222bcae37" class="nameRef">rSpawnFiber</a>(<a href="#r_8h_1acd4039811a4e67c7ef110876b509b8be" class="ref">RFiberProc</a> fn, void *arg)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Spawn a fiber coroutine.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#r_8h_1a19f0ff099cd1403e8498f5f73bdba421" class="nameRef">rSpawnThread</a>(<a href="#r_8h_1ab0f2523ffe3b986a0f334c049881b687" class="ref">RThreadProc</a> fn, void *arg)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Spawn an O/S thread.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> REvent</td><td><a href="#group___r_event_1gadada457cdac6b212a648e7630a137d00" class="nameRef">rStartEvent</a>(<a href="#group___r_event_1ga02fa8ee37c08629cb92622c0f8dc1135" class="ref">REventProc</a> proc, void *data, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> delay)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Start a callback event.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1af095d5a60dd353712a4c24bd5a489d23" class="nameRef">rStartFiber</a>(<a href="#struct_r_fiber" class="ref">RFiber</a> *fiber, void *data)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Start a fiber coroutine.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a979b9dbe371c8ee5a00022747757e3ef" class="nameRef">rStop</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Immediately stop the app.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_event_1ga28f58bf28e186b9a27975385310c5af1" class="nameRef">rStopEvent</a>(<a href="#group___r_event" class="ref">REvent</a> id)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Stop an event.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_buf_1ga0fbbd1c96397725aed7b599f8c61ed2b" class="nameRef">rTermBuf</a>(<a href="#group___r_buf" class="ref">RBuf</a> *buf)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Terminate a buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a0a54d92e2877d58e7d2593f25e5cd5d2" class="nameRef">rTermFibers</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Terminate the fiber coroutine module.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a2e0e2e889ef1f3b7d9663258d30ec304" class="nameRef">rTermLock</a>(<a href="#struct_r_lock" class="ref">RLock</a> *mutex)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Terminate a statically allocated lock object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_log_1ga727a8e85d6e2fc6160083fa253c2ee7f" class="nameRef">rTermLog</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Terminate logging.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#r_8h_1a85f79a92f163bafc1b0123face97996c" class="nameRef">rTermOs</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Stop the O/S dependent subsystem.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_wait_1ga0e6c27c5ea9b2dc104b907bf6797c827" class="nameRef">rTermWait</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Terminate the I/O wait subsystem.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#r_8h_1a3b692979faceb23c232599374f7f7d71" class="nameRef">rTryLock</a>(<a href="#struct_r_lock" class="ref">RLock</a> *lock)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Attempt to lock access.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_event_1gaf8b471d1bd50ab302bee67e681001a95" class="nameRef">rWait</a>(<a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> timeout)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Wait for an I/O event.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#group___r_event_1ga2b70602524029e5bbe0f15263ca46266" class="nameRef">rWaitForIO</a>(<a href="#group___r_wait" class="ref">RWait</a> *wp, int mask, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Wait for an IO event on a wait object.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_file_1ga10200903fefbee39bb31e455f5c9225a" class="nameRef">rWalkDir</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *dir, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, <a href="#group___r_file_1ga3d6ff45f976d1c59d5c261e3b4e8d456" class="ref">RWalkDirProc</a> callback, void *arg, int flags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Walk a directory tree and invoke a callback for each path that matches a given pattern.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_event_1gaa619d657767c66c8cd9da82aff32aaaf" class="nameRef">rWatch</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="#group___r_event_1ga20f2b4a832a556bf6f00c51b9e19179c" class="ref">RWatchProc</a> proc, void *data)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Watch for a named event to happen.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_event_1ga44ab13da7c96cdd3b296218f162c7889" class="nameRef">rWatchOff</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="#group___r_event_1ga20f2b4a832a556bf6f00c51b9e19179c" class="ref">RWatchProc</a> proc, void *data)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Stop watching for a named event to happen.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_file_1ga0167a54bf71c7d38188bae9de547f580" class="nameRef">rWriteFile</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len, int mode)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write data to a file.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_log_1ga4b2398683f3cf0b8ec13055e1107cc4f" class="nameRef">rWritePid</a>(void)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write the current process pid to /var/run.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#r_8h_1a59d42a597c69a42387f41d62f0e8c5b2" class="nameRef">rWriteSocket</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write to a socket.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#r_8h_1a4a9bc1513a3f0a6f9ef8cd02a91a7041" class="nameRef">rWriteSocketSync</a>(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Write to a socket.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#r_8h_1a531c892493b60bb2088705d7f4e447cb" class="nameRef">rYieldFiber</a>(void *value)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Yield a fiber back to the main fiber.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbTree*</td><td><a href="#group___rb_tree_1ga2e6e20e9aae8331ce33ca0cbace1f95b" class="nameRef">rbAlloc</a>(int flags, <a href="#group___rb_tree_1ga43a3ce1da1157ab6fb9c663d13fc6edc" class="ref">RbFree</a> free, <a href="#group___rb_tree_1gad22beb71648c702810f53925002ce5d0" class="ref">RbCompare</a> compare)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate a red/black tree.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode*</td><td><a href="#group___rb_tree_1ga4ede061debe339749f47f1c36a1ff2cf" class="nameRef">rbFirst</a>(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return the lexically first node.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___rb_tree_1ga9fbbeb3160a0f7532bd4221e00ee559a" class="nameRef">rbFree</a>(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free a red/black tree.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode*</td><td><a href="#group___rb_tree_1gaca3058fa6a3333945e476b9817b312f1" class="nameRef">rbInsert</a>(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, void *data)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Insert a new data item in the tree.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode*</td><td><a href="#group___rb_tree_1ga0a7e9a89dc5c23728437985c3d84bf12" class="nameRef">rbLookup</a>(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, void *data, void *ctx)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Lookup a data item.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode*</td><td><a href="#group___rb_tree_1ga264e8c7389132f53bf38ccb423030dca" class="nameRef">rbLookupFirst</a>(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, void *data, void *ctx)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return the lexically first matching node.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode*</td><td><a href="#group___rb_tree_1ga5311cd7f36ebed442471ca87462be2c5" class="nameRef">rbLookupNext</a>(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, <a href="#struct_rb_node" class="ref">RbNode</a> *node, void *data, void *ctx)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return the next matching node after the given node.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode*</td><td><a href="#group___rb_tree_1ga767f5f0beb2f270e32b51b26dcdc0ae4" class="nameRef">rbNext</a>(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, <a href="#struct_rb_node" class="ref">RbNode</a> *node)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return the next node in sequence.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void*</td><td><a href="#group___rb_tree_1gab50d4e29e7427d3358152976397b644b" class="nameRef">rbRemove</a>(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, <a href="#struct_rb_node" class="ref">RbNode</a> *node, int keep)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Remove a data item from the tree.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1gae2d990c0ecee9718f90651cd0e9d4f9b" class="nameRef">scamel</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Create a camel case version of the string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="nameRef">scaselesscmp</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Compare strings ignoring case.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#group___r_string_1gaf6dba65d34e3f194b3b3eea1cf26dc48" class="nameRef">scaselessmatch</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Compare strings ignoring case.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="nameRef">schr</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, int c)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Find a character in a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="nameRef">sclone</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Clone a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="nameRef">scmp</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Compare strings.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="nameRef">scontains</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Find a pattern in a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="nameRef">scopy</a>(char *dest, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> destMax, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *src)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Copy a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar*</td><td><a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="nameRef">sends</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *suffix)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Test if the string ends with a given pattern.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="nameRef">sfmt</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Format a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="nameRef">sfmtbuf</a>(char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> maxSize, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Format a string into a static buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="nameRef">sfmtbufv</a>(char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> maxSize, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, va_list args)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Format a string into a statically allocated buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="nameRef">sfmtv</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, va_list args)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Format a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> uint</td><td><a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="nameRef">shash</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Compute a hash code for a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> uint</td><td><a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="nameRef">shashlower</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Compute a caseless hash code for a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga9d26412974b40e80020d687a2d0ea24c" class="nameRef">sitos</a>(<a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert an integer to a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga08c6bce6ff3cfbf9c9e75c78963a0f0f" class="nameRef">sitosbuf</a>(char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value, int radix)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert an integer to a string buffer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga865ec14e3b17d6a8ad1036c7bc9a8194" class="nameRef">sitosradix</a>(<a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value, int radix)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert an integer to a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="nameRef">sjoin</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Catenate strings.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar*</td><td><a href="#group___r_string_1gad5e17183221999a043c7ffbe42bf5317" class="nameRef">sjoinArgs</a>(int argc, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> **argv, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *sep)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Join an array of strings.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1gafc4c6dc7fd45cc6a009c45cf5a74fd2c" class="nameRef">sjoinfmt</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Join a formatted string to an existing string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="nameRef">sjoinv</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, va_list args)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Catenate strings.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="nameRef">slen</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Return the length of a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="nameRef">slower</a>(char *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a string to lower case.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="nameRef">smatch</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Compare strings.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="nameRef">sncaselesscmp</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Compare strings ignoring case.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga56440e50950476d6015ad47c967b2830" class="nameRef">sncaselesscontains</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> limit)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Find a pattern in a string with a limit using a caseless comparison.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="nameRef">snclone</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Clone a substring.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int</td><td><a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="nameRef">sncmp</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Compare strings.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="nameRef">sncontains</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> limit)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Find a pattern in a string with a limit.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="nameRef">sncopy</a>(char *dest, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> destMax, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *src, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Copy characters from a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="nameRef">spbrk</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *set)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Locate the a character from a set in a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga25f29ae528696bf67924b2f4bb0db353" class="nameRef">sptok</a>(char *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, char **last)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Tokenize a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="nameRef">srchr</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, int c)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Find a character in a string by searching backwards.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga8be66c7ef8c243118b628a2286f9bbe8" class="nameRef">ssplit</a>(char *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *delim, char **last)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Split a string at a delimiter.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize</td><td><a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="nameRef">sspn</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *set)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Find the end of a spanning prefix.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool</td><td><a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="nameRef">sstarts</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *prefix)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Test if the string starts with a given pattern.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="nameRef">ssub</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> offset, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Create a substring.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="nameRef">stemplate</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, void *tokens)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Replace template tokens in a string with values from a lookup table.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="nameRef">stitle</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Create a Title Case version of the string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> double</td><td><a href="#group___r_string_1ga53820f3d30989fd3ea991174f84af722" class="nameRef">stof</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a string to a double.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int64</td><td><a href="#group___r_string_1ga22ce5bb9382b9354a1525f4c35d7fb81" class="nameRef">stoi</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a string to an integer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int64</td><td><a href="#group___r_string_1gac02880ab504c38248dbdf5b5cabc5a4f" class="nameRef">stoiradix</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, int radix, int *err)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a string to an integer.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="nameRef">stok</a>(char *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *delim, char **last)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Tokenize a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> struct,RList*</td><td><a href="#group___r_string_1ga231481de141b753a6155976901f4e544" class="nameRef">stolist</a>(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *src)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>String to list.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="nameRef">strim</a>(char *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *set, int where)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Trim a string.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char*</td><td><a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="nameRef">supper</a>(char *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Convert a string to upper case.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void</td><td><a href="#group___r_string_1gae02b31275acbe16f125234a0375a648e" class="nameRef">szero</a>(char *str)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Erase the contents of a string.</td></tr>
</table>
<a name="Typedefs"></a>
## Typedefs

<table class="apiIndex" title="typedefs">
<tr class="apiDef"><td class="apiName"><a href="#group___r_event_1ga02fa8ee37c08629cb92622c0f8dc1135" class="nameRef">REventProc</a></td><td class="apiBrief">Callback function for events.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#struct_r_fiber" class="nameRef">RFiber</a></td><td class="apiBrief">Fiber state.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#r_8h_1a1622ca8d14e7e932db8328d19e89d0cf" class="nameRef">RFiberContext</a></td><td class="apiBrief">Fiber coroutine stack context.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#r_8h_1acd4039811a4e67c7ef110876b509b8be" class="nameRef">RFiberProc</a></td><td class="apiBrief">Fiber entry point function.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#r_8h_1a6e07786e9b309fd95506934538563f92" class="nameRef">RHashProc</a></td><td class="apiBrief">Hashing function to use for the table.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="nameRef">RListCompareProc</a></td><td class="apiBrief">List comparison procedure for soring.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#struct_r_lock" class="nameRef">RLock</a></td><td class="apiBrief">Multithreading lock control structure.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="nameRef">RLogHandler</a></td><td class="apiBrief">Log handler callback type.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#r_8h_1a3e2bc18aa2db34222ff8e68c993bb1d4" class="nameRef">RMemProc</a></td><td class="apiBrief">Memory exhaustion callback procedure.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#struct_r_name" class="nameRef">RName</a></td><td class="apiBrief">Per item structure.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___r_list_1gae9d91521f1622b618ba1bb4cffc9090b" class="nameRef">RSortProc</a></td><td class="apiBrief">Quicksort callback function.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#r_8h_1ab0f2523ffe3b986a0f334c049881b687" class="nameRef">RThreadProc</a></td><td class="apiBrief">Thread entry point function.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___r_wait_1ga489c3016ecc64ff8fffdd663a6249fbe" class="nameRef">RWaitProc</a></td><td class="apiBrief">Callback function for IO wait events.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___r_file_1ga3d6ff45f976d1c59d5c261e3b4e8d456" class="nameRef">RWalkDirProc</a></td><td class="apiBrief">Callback function for <a class="ref" href="#group___r_file_1ga10200903fefbee39bb31e455f5c9225a">rWalkDir</a></td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___r_event_1ga20f2b4a832a556bf6f00c51b9e19179c" class="nameRef">RWatchProc</a></td><td class="apiBrief">Callback function for watched events.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___rb_tree_1gad22beb71648c702810f53925002ce5d0" class="nameRef">RbCompare</a></td><td class="apiBrief">Callback to compare a data nodes.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___rb_tree_1ga43a3ce1da1157ab6fb9c663d13fc6edc" class="nameRef">RbFree</a></td><td class="apiBrief">Callback to free a nodes associated data.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#r_8h_1af9381320a2640ea84038579d8f143c01" class="nameRef">Socket</a></td><td class="apiBrief">Argument for sockets.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#r_8h_1a1600235df88b3821764244933b5024f5" class="nameRef">size_t</a></td><td class="apiBrief">Unsigned integral type.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#r_8h_1aec517130c026730881898750d76e596f" class="nameRef">time_t</a></td><td class="apiBrief">Unsigned time type.</td></tr>
</table>
<a name="Defines"></a>
## Defines

<table class="apiIndex" title="Defines">
<tr class="apiDef">
<td>#define</td><td><a href="#group___rb_tree_1gaeaf01b18e253b72c74cbd946070b26c9" class="nameRef">ITERATE_INDEX</a>&nbsp;&nbsp;&nbsp;<initializer>node = <ref refid="group___rb_tree_1ga264e8c7389132f53bf38ccb423030dca" kindref="member">rbLookupFirst</ref>(rbt, key, ctx); node; node = <ref refid="group___rb_tree_1ga5311cd7f36ebed442471ca87462be2c5" kindref="member">rbLookupNext</ref>(rbt, node, key, ctx)</initializer></td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Traverse an index over matching nodes.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a84cc270a1e157a89f9843ce085608b00" class="nameRef">ME_R_LOGGING</a>&nbsp;&nbsp;&nbsp;1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Default for logging is &quot;on&quot;.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1adad78526d377a1168f1569afa676e242" class="nameRef">R_DEFAULT_DATE</a>&nbsp;&nbsp;&nbsp;&quot;%a %b %d %T %Y %Z&quot;</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Default date format used in rFormatLocalTime/rFormatUniversalTime when no format supplied E.g.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a3d7ce88a186216468c5a53aaa92665c3" class="nameRef">R_DYNAMIC_NAME</a>&nbsp;&nbsp;&nbsp;0x8</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Dynamic name provided, hash will free.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a06e7e9639b853a0938e65b40fa0750c5" class="nameRef">R_DYNAMIC_VALUE</a>&nbsp;&nbsp;&nbsp;0x1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Dynamic (allocated) value provided, hash will free.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a6e0ef4116a4fd21c17a83a7ba5c647ca" class="nameRef">R_EVENT_ASYNC</a>&nbsp;&nbsp;&nbsp;1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Windows async select.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a508763484c0c56f2b8083d340d457c66" class="nameRef">R_EVENT_EPOLL</a>&nbsp;&nbsp;&nbsp;2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>epoll_wait.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1ada5e12c5316d1c79818db2416e543608" class="nameRef">R_EVENT_KQUEUE</a>&nbsp;&nbsp;&nbsp;3</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>BSD kqueue.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a2043c7d1f3618b685408ca8bd0c3edb3" class="nameRef">R_EVENT_SELECT</a>&nbsp;&nbsp;&nbsp;4</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>traditional select().</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a67b856c30925be20b3c4139746e3998d" class="nameRef">R_HASH_CASELESS</a>&nbsp;&nbsp;&nbsp;0x40</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Ignore case in comparisons.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a0baada4fe23f6e1e5f09e915e9ffacd3" class="nameRef">R_IO</a>&nbsp;&nbsp;&nbsp;0x6</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Wait mask for readable or writeable events.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a40c44ffc68408bba9e809374b8067303" class="nameRef">R_MEM_FAIL</a>&nbsp;&nbsp;&nbsp;0x4</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Memory allocation failed - immediate exit.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a117da2fcd7e6ebd4517fc4d3402b7bd2" class="nameRef">R_MEM_LIMIT</a>&nbsp;&nbsp;&nbsp;0x2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Memory use exceeds memory limit - invoking policy.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a3836c7756780aa810b6b94ad019acbe2" class="nameRef">R_MEM_TOO_BIG</a>&nbsp;&nbsp;&nbsp;0x8</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Memory allocation request is too big - immediate exit.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a0cbe2d9e495990b5aba86c3379a736a8" class="nameRef">R_MEM_WARNING</a>&nbsp;&nbsp;&nbsp;0x1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Memory use exceeds warnHeap level limit.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a893e566d286efe81feebb8035e8d2d3b" class="nameRef">R_MODIFIED</a>&nbsp;&nbsp;&nbsp;0x200</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Wait mask for modify events.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a4872c01b021840019a191f99ea8f515e" class="nameRef">R_READABLE</a>&nbsp;&nbsp;&nbsp;0x2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Wait mask for readable events.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a795c7aae1975021e9fef9b19783566e2" class="nameRef">R_SOCKET_CLOSED</a>&nbsp;&nbsp;&nbsp;0x1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>RSocket has been closed.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a5a21f92944d8bebaa4f6ede45325e04a" class="nameRef">R_SOCKET_EOF</a>&nbsp;&nbsp;&nbsp;0x2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Seen end of file.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a3574dfecf12525916285939d7f68e2c1" class="nameRef">R_SOCKET_LISTENER</a>&nbsp;&nbsp;&nbsp;0x4</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>RSocket is server listener.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1ad25857c9b0c0373fa94af6a4f913d296" class="nameRef">R_SOCKET_SERVER</a>&nbsp;&nbsp;&nbsp;0x8</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Socket is on the server-side.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a952b31ce2c10338cd81cb4fbb3bbf955" class="nameRef">R_STATIC_NAME</a>&nbsp;&nbsp;&nbsp;0x10</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Static name provided no need to clone or free.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1ad8debb5cdeccbe62c96ff026002c50ed" class="nameRef">R_STATIC_VALUE</a>&nbsp;&nbsp;&nbsp;0x2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Static value provided, no need to clone or free.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a6f9390ac248ea48d25818784778e495b" class="nameRef">R_TEMPORAL_NAME</a>&nbsp;&nbsp;&nbsp;0x20</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Temporal name provided, hash will clone and free.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1ad82624ad6334643d45f9685bb8f2994b" class="nameRef">R_TEMPORAL_VALUE</a>&nbsp;&nbsp;&nbsp;0x4</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Temporal value provided, hash will clone and free.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a1e5d0c3de9189304114fca20bf2bec07" class="nameRef">R_TRIM_BOTH</a>&nbsp;&nbsp;&nbsp;0x3</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Flag for <a class="ref" href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca">strim</a> to trim from both the start and the end of the string.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1ab8c86eaa08fbeeeeea24aa6e15835e58" class="nameRef">R_TRIM_END</a>&nbsp;&nbsp;&nbsp;0x2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Flag for <a class="ref" href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca">strim</a> to trim from the end of the string.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a34fcdeeae27de7f86c4a66df8db09908" class="nameRef">R_TRIM_START</a>&nbsp;&nbsp;&nbsp;0x1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Flag for <a class="ref" href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca">strim</a> to trim from the start of the string.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a0ec8eab885efe728a9b44f469edb0595" class="nameRef">R_WALK_DEPTH_FIRST</a>&nbsp;&nbsp;&nbsp;0x1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Flag for rGetFiles to do a depth-first traversal.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1aeb9dde8f89512883e1da27a1833de40a" class="nameRef">R_WALK_DIRS</a>&nbsp;&nbsp;&nbsp;0x4</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Include hidden files starting with &quot;.&quot; except for &quot;.&quot; and &quot;..&quot;.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1af53bc808bb51247674a7e4f60d743eae" class="nameRef">R_WALK_FILES</a>&nbsp;&nbsp;&nbsp;0x8</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Include hidden files starting with &quot;.&quot; except for &quot;.&quot; and &quot;..&quot;.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a5fd283b65b0e3aa3960477b344192352" class="nameRef">R_WALK_HIDDEN</a>&nbsp;&nbsp;&nbsp;0x2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Include hidden files starting with &quot;.&quot; except for &quot;.&quot; and &quot;..&quot;.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1af87ecc8e03ffac0fed5b1108c75c1680" class="nameRef">R_WALK_MISSING</a>&nbsp;&nbsp;&nbsp;0x20</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Allow walking missing paths.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a660a2aab35d043eff6b3ba933ead02b9" class="nameRef">R_WALK_RELATIVE</a>&nbsp;&nbsp;&nbsp;0x10</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Return paths relative to the original path.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a682a32f0cd725352c8344787e2523aa2" class="nameRef">R_WRITABLE</a>&nbsp;&nbsp;&nbsp;0x4</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Wait mask for writable events.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#r_8h_1a510fe2b629135f54b432746381c46eea" class="nameRef">RB_DUP</a>&nbsp;&nbsp;&nbsp;0x1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Flags for rbAlloc to permit duplicate keys.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#group___rb_tree_1gaeaf01b18e253b72c74cbd946070b26c9" class="nameRef">ITERATE_INDEX</a>&nbsp;&nbsp;&nbsp;<initializer>node = <ref refid="group___rb_tree_1ga264e8c7389132f53bf38ccb423030dca" kindref="member">rbLookupFirst</ref>(rbt, key, ctx); node; node = <ref refid="group___rb_tree_1ga5311cd7f36ebed442471ca87462be2c5" kindref="member">rbLookupNext</ref>(rbt, node, key, ctx)</initializer></td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Traverse an index over matching nodes.</td></tr>
  </table>

## RBuf

<a name="group___r_buf"></a>
<div class="api">
  <div class="prototype">RBuf</div>
  <div class="apiDetail">
<p>Dynamic Buffer Module.</p>
    <dl><dt><b>Description</b>:</dt><dd>RBuf is a flexible, dynamic growable buffer structure. It has start and end pointers to the data buffer which act as read/write pointers. Routines are provided to get and put data into and out of the buffer and automatically advance the appropriate start/end pointer. By definition, the buffer is empty when the start pointer == the end pointer. Buffers can be created with a fixed size or can grow dynamically as more data is added to the buffer. <br/><br/>
For performance, the specification of RBuf is deliberately exposed. All members of RBuf are implicitly public. However, it is still recommended that wherever possible, you use the accessor routines provided.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">char *</td><td><td>buf</td><td>
Actual buffer for data.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>buflen</td><td>
Current size of buffer.
</td>
    <tr><td class="param">char *</td><td><td>end</td><td>
Pointer one past the last data chr.
</td>
    <tr><td class="param">char *</td><td><td>endbuf</td><td>
Pointer one past the end of buffer.
</td>
    <tr><td class="param">char *</td><td><td>start</td><td>
Pointer to next data char.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rAddNullToBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Add a null character to the buffer contents.</p>
    <dl><dt><b>Description</b>:</dt><dd>Add a null byte but do not change the buffer content lengths. The null is added outside the &quot;official&quot; content length. This is useful when calling <a class="ref" href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec">rGetBufStart</a> and using the returned pointer as a &quot;C&quot; string pointer.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rAdjustBufEnd
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> count)
  </div>
  <div class="apiDetail">
<p>Adjust the buffer end position.</p>
    <dl><dt><b>Description</b>:</dt><dd>Adjust the buffer end position by the specified amount. This is typically used to advance the end position as content is appended to the buffer. Adjusting the start or end position will change the value returned by <a class="ref" href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937">rGetBufLength</a>. If using the rPutBlock or rPutChar routines, adjusting the end position is done automatically.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">count</td><td>Positive or negative count of bytes to adjust the end position.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rAdjustBufStart
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> count)
  </div>
  <div class="apiDetail">
<p>Adjust the buffer start position.</p>
    <dl><dt><b>Description</b>:</dt><dd>Adjust the buffer start position by the specified amount. This is typically used to advance the start position as content is consumed. Adjusting the start or end position will change the value returned by <a class="ref" href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937">rGetBufLength</a>. If using the rGetBlock or rGetChar routines, adjusting the start position is done automatically.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">count</td><td>Positive or negative count of bytes to adjust the start position.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RBuf,*
    RBuf* rAllocBuf
(<a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> initialSize)
  </div>
  <div class="apiDetail">
<p>Create a new buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Create a new buffer.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">initialSize</td><td>Initial size of the buffer.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A new buffer.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga45614042012eb61dc8407f4d0c764a11"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rBufToString
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Return a reference to the buffer contents.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A pointer into the buffer data. Caller must not free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1gaa3c557dad4f202adf0a0f03aee2b5de6"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rBufToStringAndFree
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Convert the buffer contents to a string.</p>
The string is allocated and the buffer is freed
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Allocated string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga71df0092865360408223f37016a6fc51"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rCompactBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Compact the buffer contents.</p>
    <dl><dt><b>Description</b>:</dt><dd>Compact the buffer contents by copying the contents down to start the the buffer origin.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rFlushBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Flush the buffer contents.</p>
    <dl><dt><b>Description</b>:</dt><dd>Discard the buffer contents and reset the start end content pointers.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga4e8dd5b9e1095239db0f32e802112edd"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rFreeBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Free a buffer.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffere created via <a class="ref" href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f">rAllocBuf</a></td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rGetBlockFromBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, char *blk, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> count)
  </div>
  <div class="apiDetail">
<p>Get a block of data from the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get a block of data from the buffer start and advance the start position. If the requested length is greater than the available buffer content, then return whatever data is available.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">blk</td><td>Destination block for the read data.</td>
    <tr><td class="param">count</td><td>Count of bytes to read from the buffer.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The count of bytes read into the block or -1 if the buffer is empty.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga1e140ede977634a38b356e014e1a7ab5"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar,*
    cchar* rGetBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Get the origin of the buffer content storage.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get a pointer to the start of the buffer content storage. This is always and allocated block.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A pointer to the buffer content storage.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar,*
    cchar* rGetBufEnd
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Get a reference to the end of the buffer contents.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get a pointer to the location immediately after the end of the buffer contents.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Pointer to the end of the buffer data contents. Points to the location one after the last data byte.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1gaa561e84dfde0cb491632f989b9b03937"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rGetBufLength
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Get the buffer content length.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get the length of the buffer contents. This is not the same as the buffer size which may be larger.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The length of the content stored in the buffer in bytes.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rGetBufSize
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Get the current size of the buffer content storage.</p>
    <dl><dt><b>Description</b>:</dt><dd>This returns the size of the memory block allocated for storing the buffer contents.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The size of the buffer content storage.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rGetBufSpace
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Get the space available to store content.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get the number of bytes available to store content in the buffer.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of bytes available.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar,*
    cchar* rGetBufStart
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Get the start of the buffer contents.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get a pointer to the start of the buffer contents. Use <a class="ref" href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937">rGetBufLength</a> to determine the length of the content. Use <a class="ref" href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a">rGetBufEnd</a> to get a pointer to the location after the end of the content.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Pointer to the start of the buffer data contents.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1gae0f409c136635a84ea85d832a36c14e4"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rGetCharFromBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Get a character from the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get the next byte from the buffer start and advance the start position.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The character or -1 if the buffer is empty.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rGrowBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> count)
  </div>
  <div class="apiDetail">
<p>Grow the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Grow the storage allocated for content for the buffer. The new size must be less than the maximum limit specified via <a class="ref" href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f">rAllocBuf</a> or <a class="ref" href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93">rInitBuf</a></dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">count</td><td>Count of bytes by which to grow the buffer content size.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful and otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rInitBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size)
  </div>
  <div class="apiDetail">
<p>Initialize the buffer and set the initial buffer size.</p>
    <dl><dt><b>Description</b>:</dt><dd>This initializes a buffer that is already allocated and is useful for static buffer declarations. This call sets the initial buffer content size. Setting a non-zero size will immediately grow the buffer to be this size.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">size</td><td>Size to make the buffer.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful and otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rInserCharToBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, int c)
  </div>
  <div class="apiDetail">
<p>Inser a character into the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Inser a character into to the buffer prior to the current buffer start point.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">c</td><td>Character to append.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful and otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rLookAtLastCharInBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Peek at the last character in the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Non-destructively return the last character from just prior to the end position in the buffer. The character is returned and the end position is not altered.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful and otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rLookAtNextCharInBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Peek at the next character in the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Non-destructively return the next character from the start position in the buffer. The character is returned and the start position is not altered.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful and otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rPutBlockToBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *ptr, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size)
  </div>
  <div class="apiDetail">
<p>Put a block to the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Append a block of data to the buffer at the end position and increment the end pointer.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">ptr</td><td>Block to append.</td>
    <tr><td class="param">size</td><td>Size of block to append.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful and otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rPutCharToBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, int c)
  </div>
  <div class="apiDetail">
<p>Put a character to the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Append a character to the buffer at the end position and increment the end pointer.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">c</td><td>Character to append.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful and otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rPutIntToBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> i)
  </div>
  <div class="apiDetail">
<p>Put an integer to the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Append a integer to the buffer at the end position and increment the end pointer.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">i</td><td>Integer to append to the buffer.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Number of characters added to the buffer, otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rPutStringToBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Put a string to the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Append a null terminated string to the buffer at the end position and increment the end pointer.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">str</td><td>String to append.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful and otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rPutSubToBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> count)
  </div>
  <div class="apiDetail">
<p>Put a substring to the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Append a null terminated substring to the buffer at the end position and increment the end pointer.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">str</td><td>String to append.</td>
    <tr><td class="param">count</td><td>Put at most count characters to the buffer.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful and otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga8187f289dd689e63ace742627324c956"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rPutToBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Put a formatted string to the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Format a string and append to the buffer at the end position and increment the end pointer.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">fmt</td><td>Printf style format string.</td>
    <tr><td class="param">...</td><td>Variable arguments for the format string.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful and otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga2c0a8bb3043a79a0b76990d072dc728e"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rReserveBufSpace
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> need)
  </div>
  <div class="apiDetail">
<p>Grow the buffer so that there is at least the needed minimum space available.</p>
    <dl><dt><b>Description</b>:</dt><dd>Grow the storage allocated for content for the buffer if required to ensure the minimum specified by &quot;need&quot; is available.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    <tr><td class="param">need</td><td>Required free space in bytes.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful and otherwise a negative error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga9f4503d97333d0580727e937251fe6d1"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rResetBufIfEmpty
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Reset the buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>If the buffer is empty, reset the buffer start and end pointers to the beginning of the buffer.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a></dd></dl>
  </div>
</div>
<a name="group___r_buf_1ga0fbbd1c96397725aed7b599f8c61ed2b"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rTermBuf
(<a href="#group___r_buf" class="ref">RBuf</a> *buf)
  </div>
  <div class="apiDetail">
<p>Terminate a buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>This frees memory allocated by the buffer. This call should be used for buffers initialized via <a class="ref" href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93">rInitBuf</a></dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Buffer created via rAllocBuf.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_buf" class="ref">RBuf</a>, <a href="#group___r_buf_1ga74dff5616174dce0f9f0e59b5e20a3b3" class="ref">rAddNullToBuf</a>, <a href="#group___r_buf_1ga62a0861ce9f3f255e479ac01f71ca101" class="ref">rAdjustBufEnd</a>, <a href="#group___r_buf_1ga2c512cae4419f6ba0e92dc32d4e01c37" class="ref">rAdjustBufStart</a>, <a href="#group___r_buf_1ga9a96f733134e820f88905948ef8e2b4f" class="ref">rAllocBuf</a>, <a href="#group___r_buf_1ga45614042012eb61dc8407f4d0c764a11" class="ref">rBufToString</a>, <a href="#group___r_buf_1ga71df0092865360408223f37016a6fc51" class="ref">rCompactBuf</a>, <a href="#group___r_buf_1ga0efa38a34b94e3a61f6f8817159fc82e" class="ref">rFlushBuf</a>, <a href="#group___r_buf_1ga9f2535a2f020bd3a29eeba4555fee5da" class="ref">rGetBlockFromBuf</a>, <a href="#group___r_buf_1ga39bc3d16c784e8bdbab37f7aa8bb3b4a" class="ref">rGetBufEnd</a>, <a href="#group___r_buf_1gaa561e84dfde0cb491632f989b9b03937" class="ref">rGetBufLength</a>, <a href="#group___r_buf_1gaf7d620c1c9b22ac0b7cb4aa8b467776a" class="ref">rGetBufSize</a>, <a href="#group___r_buf_1ga9bcd81a47591ac97cfcaaaf2fe512393" class="ref">rGetBufSpace</a>, <a href="#group___r_buf_1ga2a55062e06caac5afc4387cd6ff1e3ec" class="ref">rGetBufStart</a>, <a href="#group___r_buf_1gae0f409c136635a84ea85d832a36c14e4" class="ref">rGetCharFromBuf</a>, <a href="#group___r_buf_1ga8e7a521f5ba89c58431d52761f5a62db" class="ref">rGrowBuf</a>, <a href="#group___r_buf_1ga04b2f873f76870c8b38cbe282bf5cc93" class="ref">rInitBuf</a>, <a href="#group___r_buf_1ga8a857fae483214b96c5f30687a45b0cb" class="ref">rInserCharToBuf</a>, <a href="#group___r_buf_1gab616eba4bdc5d0407ea5bc796fb80f96" class="ref">rLookAtLastCharInBuf</a>, <a href="#group___r_buf_1ga996816e79cc70f958afb1b1afbdb5ecd" class="ref">rLookAtNextCharInBuf</a>, <a href="#group___r_buf_1gac92f1d5a6984f15a9094b288584b6c96" class="ref">rPutBlockToBuf</a>, <a href="#group___r_buf_1ga1832ca41073ac35e78ead5837f44d1a0" class="ref">rPutCharToBuf</a>, <a href="#group___r_buf_1gaa03fd03c3ed485ce5c66ed62c6eea7ad" class="ref">rPutIntToBuf</a>, <a href="#group___r_buf_1ga63a2d2c15ea22268dd0c814142a716f4" class="ref">rPutStringToBuf</a>, <a href="#group___r_buf_1ga8e8006fbf35ded9e419ef415f2dbdb4a" class="ref">rPutSubToBuf</a>, <a href="#group___r_buf_1ga9f4503d97333d0580727e937251fe6d1" class="ref">rResetBufIfEmpty</a></dd></dl>
  </div>
</div>

## REvent

<a name="group___r_event"></a>
<div class="api">
  <div class="prototype">REvent</div>
  <div class="apiDetail">
<p>Event Subsystem.</p>
    <dl><dt><b>Description</b>:</dt><dd>R provides a simple based eventing mechanism. Events are described by REvent objects which are created and queued via <a class="ref" href="#group___r_event_1gadada457cdac6b212a648e7630a137d00">rStartEvent</a>. Events are scheduled once unless restarted via rRestartEvent.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    </table></dd></dl>
  </div>
</div>
<a name="group___r_event_1ga60ce3f229feb51fb1311bdc62d0acec2"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rLookupEvent
(<a href="#group___r_event" class="ref">REvent</a> id)
  </div>
  <div class="apiDetail">
<p>Lookup an event ID.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">id</td><td>Event id allocated by rStartEvent.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the event exists.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_event_1ga562d0c21d142ca29cc7cee26fc21b450"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Ticks
    Ticks rRunEvents
(void )
  </div>
  <div class="apiDetail">
<p>Run due events.</p>
    <dl><dt>Returns:</dt><dd>Time delay till the next event.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_event_1ga1e7ecc44de09a8c42918273b3fb89b30"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rServiceEvents
(void )
  </div>
  <div class="apiDetail">
<p>Service events.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call blocks and continually services events on the event loop until the app is instructed to exit via $rStop. An app should call rServiceEvents from the main program.</dd></dl>
    <dl><dt>Returns:</dt><dd>The current R state.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_event_1gab19a9edafc17535aa1b4c1435a3eeef1"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetWaitMask
(<a href="#group___r_wait" class="ref">RWait</a> *wp, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> mask, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)
  </div>
  <div class="apiDetail">
<p>Update the wait mask for a wait handler.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">wp</td><td>RWait object.</td>
    <tr><td class="param">mask</td><td>Set to R_READABLE or R_WRITABLE or both.</td>
    <tr><td class="param">deadline</td><td>System time in ticks to wait until.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_event_1ga793fb8b257249e61ae9ecdfd998a952c"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSignal
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *arg)
  </div>
  <div class="apiDetail">
<p>Signal watches of a named event.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">name</td><td>Named event.</td>
    <tr><td class="param">arg</td><td>Data argument to pass to the function.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_event_1gadada457cdac6b212a648e7630a137d00"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> REvent
    REvent rStartEvent
(<a href="#group___r_event_1ga02fa8ee37c08629cb92622c0f8dc1135" class="ref">REventProc</a> proc, void *data, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> delay)
  </div>
  <div class="apiDetail">
<p>Start a callback event.</p>
    <dl><dt><b>Description</b>:</dt><dd>This schedules an event to run once. The event can be rescheduled in the callback by invoking rRestartEvent.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">proc</td><td>Callback procedure function. Signature is: void (*fn)(void *data, int id).</td>
    <tr><td class="param">data</td><td>Data reference to pass to the callback.</td>
    <tr><td class="param">delay</td><td>Delay in milliseconds in which to run the callback.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A positive integer event ID.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_event_1ga28f58bf28e186b9a27975385310c5af1"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rStopEvent
(<a href="#group___r_event" class="ref">REvent</a> id)
  </div>
  <div class="apiDetail">
<p>Stop an event.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">id</td><td>Event id allocated by rStartEvent.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Integer handle index. Otherwise return -1 on allocation errors.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_event_1gaf8b471d1bd50ab302bee67e681001a95"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rWait
(<a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> timeout)
  </div>
  <div class="apiDetail">
<p>Wait for an I/O event.</p>
    <dl><dt><b>Description</b>:</dt><dd>This is typically called by $rServiceEvents to wait for I/O events.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">timeout</td><td>Maximum time in milliseconds to wait for an I/O event.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_event_1ga2b70602524029e5bbe0f15263ca46266"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rWaitForIO
(<a href="#group___r_wait" class="ref">RWait</a> *wp, int mask, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)
  </div>
  <div class="apiDetail">
<p>Wait for an IO event on a wait object.</p>
    <dl><dt><b>Description</b>:</dt><dd>Wait for an IO event by yielding the current coroutine fiber until the IO event arrives. When the IO event occurs, the wait handler will be invoked on the fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">wp</td><td>RWait object.</td>
    <tr><td class="param">mask</td><td>Set to R_READABLE or R_WRITABLE or both.</td>
    <tr><td class="param">deadline</td><td>System time in ticks to wait until.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_event_1gaa619d657767c66c8cd9da82aff32aaaf"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rWatch
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="#group___r_event_1ga20f2b4a832a556bf6f00c51b9e19179c" class="ref">RWatchProc</a> proc, void *data)
  </div>
  <div class="apiDetail">
<p>Watch for a named event to happen.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">name</td><td>Named event.</td>
    <tr><td class="param">proc</td><td>Function to call.</td>
    <tr><td class="param">data</td><td>Data argument to pass to the function.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_event_1ga44ab13da7c96cdd3b296218f162c7889"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rWatchOff
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="#group___r_event_1ga20f2b4a832a556bf6f00c51b9e19179c" class="ref">RWatchProc</a> proc, void *data)
  </div>
  <div class="apiDetail">
<p>Stop watching for a named event to happen.</p>
This will remove the watch for a previous rWatch call with exactly the same proc and data arguments
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">name</td><td>Named event.</td>
    <tr><td class="param">proc</td><td>Function provided to a previous rWatch call.</td>
    <tr><td class="param">data</td><td>Data argument supplied to a previous rWatch call.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>

## RFile

<a name="group___r_file"></a>
<div class="api">
  <div class="prototype">RFile</div>
  <div class="apiDetail">
<p>R File Module.</p>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    </table></dd></dl>
  </div>
</div>
<a name="group___r_file_1ga716ee6d70922510d433663743637fbea"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rBackupFile
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, int count)
  </div>
  <div class="apiDetail">
<p>Backup the given file.</p>
    <dl><dt><b>Description</b>:</dt><dd>This creates backup copies of the file using the form: filename-d.ext.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">path</td><td>Filename to backup.</td>
    <tr><td class="param">count</td><td>Number of backup copies to keep.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1ga912ef2bd9ee35aa743ae76cc24ed29d0"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar,*
    cchar* rBasename
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path)
  </div>
  <div class="apiDetail">
<p>Return the basename (filename) portion of a filename.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">path</td><td>Filename to examine.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A pointer to the basename portion of the supplied filename path. This call does not allocate a new string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1ga053627192a327b861938345f04a290ec"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rGetAppDir
(void )
  </div>
  <div class="apiDetail">
<p>Get the directory containing the application executable.</p>
    <dl><dt>Returns:</dt><dd>An allocated string containing the application directory. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1ga8055b75c8862a5e7a241a06f24fa4b23"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rGetCwd
(void )
  </div>
  <div class="apiDetail">
<p>Get the current application working directory.</p>
    <dl><dt>Returns:</dt><dd>An allocated string containing the working directory. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1gad1cf3cbd9aa1bf289c1bba118dbc2f51"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RList,*
    RList* rGetFiles
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *base, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, int flags)
  </div>
  <div class="apiDetail">
<p>Create a list of files in a directory or subdirectories that match the given wildcard pattern.</p>
This call returns a list of filenames
    <dl><dt><b>Description</b>:</dt><dd>Get the list of files in a directory and return a list. The pattern list may contain wildcards. The supported wildcard patterns are: &quot;?&quot; Matches any single character, &quot;*&quot; matches zero or more characters of the file or directory, &quot;**&quot;/ matches zero or more directories, &quot;**&quot; matches zero or more files or directories. <br/><br/>
If the pattern is absolute.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">base</td><td>Base directory from which to interpret the pattern. If the patternDirectory to list.</td>
    <tr><td class="param">pattern</td><td>Wild card patterns to match.</td>
    <tr><td class="param">flags</td><td>Set to R_FILES_HIDDEN to include hidden files that start with &quot;.&quot;. Set to R_FILES_DEPTH_FIRST to do a depth-first traversal, i.e. traverse subdirectories before considering adding the directory to the list. Set R_FILES_RELATIVE to return files relative to the given base. Set R_FILES_NO_DIRS to omit directories. Use R_FILES_DIRS_ONLY to omit regular files.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A list (RList) of filenames.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1gacaa309aeb865a892577d46c03e970702"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RList,*
    RList* rGetFilesEx
(<a href="#group___r_list" class="ref">RList</a> *results, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *base, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, int flags)
  </div>
  <div class="apiDetail">
<p>Get a list of files in a directory or subdirectories that match the given wildcard pattern.</p>
This call adds the files to the supplied results list
    <dl><dt><b>Description</b>:</dt><dd>Get the list of files in a directory and return a list. The pattern list may contain wildcards. The supported wildcard patterns are: &quot;?&quot; Matches any single character, &quot;*&quot; matches zero or more characters of the file or directory, &quot;**&quot;/ matches zero or more directories, &quot;**&quot; matches zero or more files or directories.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">results</td><td>Instance of RList. See <a class="ref" href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30">rAllocList</a></td>
    <tr><td class="param">base</td><td>Base directory from which to interpret the pattern. If the patternDirectory to list.</td>
    <tr><td class="param">pattern</td><td>Wild card patterns to match.</td>
    <tr><td class="param">flags</td><td>Set to R_FILES_HIDDEN to include hidden files that start with &quot;.&quot;. Set to R_FILES_DEPTH_FIRST to do a depth-first traversal, i.e. traverse subdirectories before considering adding the directory to the list. Set R_FILES_RELATIVE to return files relative to the given base. Set R_FILES_NO_DIRS to omit directories. Use R_FILES_DIRS_ONLY to omit regular files.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A list (RList) of filenames.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1ga6abaa4fb2e6607a073bfb2dd7f4cc609"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rGetTempFile
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *dir, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *prefix)
  </div>
  <div class="apiDetail">
<p>Get a temp filename.</p>
    <dl><dt><b>Description</b>:</dt><dd>Create a temp file name in the given directory with the specified prefix.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">dir</td><td>Directory to contain the temporary file. If null, use system default temp directory (/tmp).</td>
    <tr><td class="param">prefix</td><td>Optional filename prefix.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>An allocated string containing the file name. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1gae57072acf0891538468aa4f744001c77"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rIsFileAbs
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path)
  </div>
  <div class="apiDetail">
<p>Determine if a file path is an absolute path.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">path</td><td>Filename path to test.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the path is an absolute path.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1ga48108215fedceddb56a801f374d7868e"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rJoinFile
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *base, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *other)
  </div>
  <div class="apiDetail">
<p>Join file paths.</p>
    <dl><dt><b>Description</b>:</dt><dd>Join a path to a base path. If the other path is absolute, it will be returned.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">base</td><td>Directory filename to use as the base.</td>
    <tr><td class="param">other</td><td>Other filename path to join to the base filename.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Allocated string containing the resolved filename.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1gac1eb37657cb00decdae3d35b346409cd"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rJoinFileBuf
(char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *base, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *other)
  </div>
  <div class="apiDetail">
<p>Join paths into a buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>Join a path to a base path. If path is absolute, it will be returned.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Destination path buffer.</td>
    <tr><td class="param">bufsize</td><td>Size of buf.</td>
    <tr><td class="param">base</td><td>Directory filename to use as the base.</td>
    <tr><td class="param">other</td><td>Other filename path to join to the base filename.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Allocated string containing the resolved filename.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1ga609be803fc704a4efe4134f32a286475"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rMatchFile
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern)
  </div>
  <div class="apiDetail">
<p>Matach a file against a glob pattern.</p>
    <dl><dt><b>Description</b>:</dt><dd>This tests a filename against a file pattern. The pattern list may contain wildcards. The supported wildcard patterns are: &quot;?&quot; Matches any single character, &quot;*&quot; matches zero or more characters of the file or directory, &quot;**&quot;/ matches zero or more directories, &quot;**&quot; matches zero or more files or directories,and a trailing &quot;/&quot; matches directories only. <br/><br/>
If the pattern is absolute.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">path</td><td>Filename to test.</td>
    <tr><td class="param">pattern</td><td>Wild card patterns to match.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the path matches the pattern.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1ga07fcdaa12ea86cb33d3a958c6dd32f94"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rReadFile
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> *lenp)
  </div>
  <div class="apiDetail">
<p>Read data from a file.</p>
    <dl><dt><b>Description</b>:</dt><dd>Reads data from a file.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">path</td><td>Filename to read.</td>
    <tr><td class="param">lenp</td><td>Pointer to receive the length of the file read.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The contents of the file in an allocated string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1ga10200903fefbee39bb31e455f5c9225a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rWalkDir
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *dir, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, <a href="#group___r_file_1ga3d6ff45f976d1c59d5c261e3b4e8d456" class="ref">RWalkDirProc</a> callback, void *arg, int flags)
  </div>
  <div class="apiDetail">
<p>Walk a directory tree and invoke a callback for each path that matches a given pattern.</p>
    <dl><dt><b>Description</b>:</dt><dd>The pattern may contain wildcards. The supported wildcard patterns are: &quot;?&quot; Matches any single character, &quot;*&quot; matches zero or more characters of the file or directory, &quot;**&quot;/ matches zero or more directories, &quot;**&quot; matches zero or more files or directories. <br/><br/></dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">dir</td><td>Base directory from which to interpret the pattern.</td>
    <tr><td class="param">pattern</td><td>Wild card patterns to match.</td>
    <tr><td class="param">callback</td><td>Callback function of the signature <a class="ref" href="#group___r_file_1ga3d6ff45f976d1c59d5c261e3b4e8d456">RWalkDirProc</a></td>
    <tr><td class="param">arg</td><td>Argument to callback function.</td>
    <tr><td class="param">flags</td><td>Set to R_FILES_HIDDEN to include hidden files that start with &quot;.&quot;. Set to R_FILES_DEPTH_FIRST to do a depth-first traversal, i.e. traverse subdirectories before considering adding the directory to the list. Set R_FILES_RELATIVE to return files relative to the given base. Set R_FILES_NO_DIRS to omit directories. Use R_FILES_DIRS_ONLY to omit regular files.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_file_1ga0167a54bf71c7d38188bae9de547f580"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rWriteFile
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *path, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len, int mode)
  </div>
  <div class="apiDetail">
<p>Write data to a file.</p>
    <dl><dt><b>Description</b>:</dt><dd>Write data from a file. The file will be created if required.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">path</td><td>Filename to write.</td>
    <tr><td class="param">buf</td><td>Buffer of data to write to the file.</td>
    <tr><td class="param">len</td><td>Length of the buffer.</td>
    <tr><td class="param">mode</td><td>Create file mode.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The length of bytes written to the file. Should equal len.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>

## RHash

<a name="group___r_hash"></a>
<div class="api">
  <div class="prototype">RHash</div>
  <div class="apiDetail">
<p>Hash table structure.</p>
    <dl><dt><b>Description</b>:</dt><dd>The hash structure supports growable hash tables collision resistant hashes.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">int *</td><td><td>buckets</td><td>
Hash collision bucket table.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>flags</td><td>
Hash control flags.
</td>
    <tr><td class="param">RHashProc</td><td><td>fn</td><td>
Hash function.
</td>
    <tr><td class="param">int</td><td><td>free</td><td>
Free list of names.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>length</td><td>
Number of names in the hash.
</td>
    <tr><td class="param">struct <a class="ref" href="#struct_r_name">RName</a> *</td><td><td>names</td><td>
Hash items.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>numBuckets</td><td>
Number of buckets in the first-level hash.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>size</td><td>
Size of allocated names.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="group___r_hash_1gaf4902c99237c8c91554dfa8997c2f158"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName,*
    RName* rAddFmtName
(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, int flags, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Add a name and formatted string value into the hash table.</p>
    <dl><dt><b>Description</b>:</dt><dd>Associate an arbitrary value with a string name and inser into the hash table.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Hash table returned via rAllocHash.</td>
    <tr><td class="param">name</td><td>String name to associate with the data.</td>
    <tr><td class="param">flags</td><td>Set flags to R_STATIC_NAME if providing statically allocated names. Set to R_TEMPORAL_NAME if the hash must copy the names. Set to R_DYNAMIC_NAME when providing allocated names that the hash may use, own and ultimately free when the hash is free. Set flags to R_STATIC_VALUE if providing statically allocated values. Set to R_DYNAMIC_VALUE when providing allocated values that the hash may use, own and ultimately free when the hash is free. If flags are zero, the flags provided to rAllocHash are used.</td>
    <tr><td class="param">fmt</td><td>Printf style format string.</td>
    <tr><td class="param">...</td><td>Variable arguments for the format string.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Added <a class="ref" href="#struct_r_name">RName</a> reference.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1ga2659446e00d89fe3905c9404d854ea22"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName,*
    RName* rAddIntName
(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value)
  </div>
  <div class="apiDetail">
<p>Add a name and integer value.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Hash table returned via rAllocHash.</td>
    <tr><td class="param">name</td><td>String name to associate with the data.</td>
    <tr><td class="param">value</td><td>A 64 bit integer value.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Added <a class="ref" href="#struct_r_name">RName</a> reference.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName,*
    RName* rAddName
(<a href="#group___r_hash" class="ref">RHash</a> *table, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, void *ptr, int flags)
  </div>
  <div class="apiDetail">
<p>Add a name and value into the hash table.</p>
    <dl><dt><b>Description</b>:</dt><dd>Associate an arbitrary value with a string name and inser into the hash table.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">table</td><td>Hash table returned via rAllocHash.</td>
    <tr><td class="param">name</td><td>String name to associate with the data.</td>
    <tr><td class="param">ptr</td><td>Arbitrary pointer to associate with the name in the table.</td>
    <tr><td class="param">flags</td><td>Set flags to R_STATIC_NAME if providing statically allocated names. Set to R_TEMPORAL_NAME if the hash must copy the names. Set to R_DYNAMIC_NAME when providing allocated names that the hash may use, own and ultimately free when the hash is free. Set flags to R_STATIC_VALUE if providing statically allocated values. Set to R_DYNAMIC_VALUE when providing allocated values that the hash may use, own and ultimately free when the hash is free. If flags are zero, the flags provided to rAllocHash are used.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Added <a class="ref" href="#struct_r_name">RName</a> reference.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1ga4c8f8c3eb68752a68d242d2f3ef8d6bd"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName,*
    RName* rAddNameSubstring
(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> nameSize, char *value, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> valueSize)
  </div>
  <div class="apiDetail">
<p>Add a name and value substring into the hash table.</p>
    <dl><dt><b>Description</b>:</dt><dd>Associate an arbitrary value with a string name and inser into the hash table. The flags used are: R_DYNAMIC_NAME | R_DYNAMIC_VALUE.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Hash table returned via rAllocHash.</td>
    <tr><td class="param">name</td><td>String name to associate with the data.</td>
    <tr><td class="param">nameSize</td><td>Size of the name string.</td>
    <tr><td class="param">value</td><td>Value string to store.</td>
    <tr><td class="param">valueSize</td><td>Length of string value.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Added <a class="ref" href="#struct_r_name">RName</a> reference.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1ga31a62f7f2ddcf452767b083906ad01e4"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RHash,*
    RHash* rAllocHash
(int size, int flags)
  </div>
  <div class="apiDetail">
<p>Create a hash table.</p>
    <dl><dt><b>Description</b>:</dt><dd>Creates a hash table that can store arbitrary objects associated with string names.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">size</td><td>Estimated number of names in the hash table. Set to 0 or -1 to get a default (small) hash table.</td>
    <tr><td class="param">flags</td><td>Set flags to R_STATIC_NAME if providing statically allocated names. Set to R_TEMPORAL_NAME if the hash must copy the names. Set to R_DYNAMIC_NAME when providing allocated names that the hash may use, own and ultimately free when the hash is free. Set flags to R_STATIC_VALUE if providing statically allocated values. Set to R_DYNAMIC_VALUE when providing allocated values that the hash may use, own and ultimately free when the hash is free. Set to R_HASH_CASELESS for case insensitive matching for names. The default flags is: R_STATIC_NAME | R_STATIC_VALUE.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a pointer to the allocated hash table.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1gac1d58f482e934683f662bf65c124885e"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RHash,*
    RHash* rCloneHash
(<a href="#group___r_hash" class="ref">RHash</a> *master)
  </div>
  <div class="apiDetail">
<p>Copy a hash table.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">master</td><td>Original hash table.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a pointer to the new allocated hash table.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1gabf892e6b860a6e005e28924cadfcbb94"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rFreeHash
(<a href="#group___r_hash" class="ref">RHash</a> *hash)
  </div>
  <div class="apiDetail">
<p>Free a hash table.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Hash table to free.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rGetHashLength
(<a href="#group___r_hash" class="ref">RHash</a> *hash)
  </div>
  <div class="apiDetail">
<p>Return the count of symbols in a symbol entry.</p>
    <dl><dt><b>Description</b>:</dt><dd>Returns the number of symbols currently existing in a symbol table.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Symbol table returned via rAllocHash.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Integer count of the number of entries.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName,*
    RName* rGetNextName
(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="#struct_r_name" class="ref">RName</a> *next)
  </div>
  <div class="apiDetail">
<p>Return the next symbol in a symbol entry.</p>
    <dl><dt><b>Description</b>:</dt><dd>Continues walking the contents of a symbol table by returning the next entry in the symbol table. A previous call to rGetFirstSymbol or rGetNextSymbol is required to supply the value of the last argument.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Hash table hash returned via rAllocHash.</td>
    <tr><td class="param">next</td><td>Index of next name.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Pointer to the first entry in the symbol table.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1gae9e1444aab973b2133f316e831d06020"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rHashToString
(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *join)
  </div>
  <div class="apiDetail">
<p>Convert a hash of strings to a single string.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Hash pointer returned from rCreateHash.</td>
    <tr><td class="param">join</td><td>String to use as the element join string.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>String consisting of the joined hash values.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rLookupName
(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)
  </div>
  <div class="apiDetail">
<p>Lookup a symbol in the hash table.</p>
    <dl><dt><b>Description</b>:</dt><dd>Lookup a name and return the value associated with that name.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Symbol table returned via rAllocHash.</td>
    <tr><td class="param">name</td><td>String name of the symbole entry to delete.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Value associated with the name when the entry was insered via rInserSymbol.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RName,*
    RName* rLookupNameEntry
(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)
  </div>
  <div class="apiDetail">
<p>Lookup a symbol in the hash table and return the hash entry.</p>
    <dl><dt><b>Description</b>:</dt><dd>Lookup a name and return the hash table descriptor associated with that name.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Symbol table returned via rAllocHash.</td>
    <tr><td class="param">name</td><td>String name of the symbole entry to delete.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd><a class="ref" href="#struct_r_name">RName</a> for the entry.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed" class="ref">rRemoveName</a></dd></dl>
  </div>
</div>
<a name="group___r_hash_1gadbe20b12abbcdd41777e085c276cd7ed"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rRemoveName
(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name)
  </div>
  <div class="apiDetail">
<p>Remove a symbol entry from the hash table.</p>
    <dl><dt><b>Description</b>:</dt><dd>Removes a symbol entry from the symbol table. The entry is looked up via the supplied name.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Symbol table returned via rAllocHash.</td>
    <tr><td class="param">name</td><td>String name of the symbole entry to delete.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns zero if successful, otherwise a negative RT error code is returned.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_hash" class="ref">RHash</a>, <a href="#struct_r_name" class="ref">RName</a>, <a href="#group___r_hash_1gadad8f7158f78eda432e5e8ffc2f026d0" class="ref">rAddName</a>, <a href="#group___r_hash_1ga9b31a04cd4019aea0227ca94d07560e5" class="ref">rGetHashLength</a>, <a href="#group___r_hash_1ga38dda18039d7cf0154975e7a6e3f9d26" class="ref">rGetNextName</a>, <a href="#group___r_hash_1ga89d813bc7976f0c944e1c66d5afb33f3" class="ref">rLookupName</a>, <a href="#group___r_hash_1ga3db432ac5bdedd385ca5fa721d6d0a4f" class="ref">rLookupNameEntry</a></dd></dl>
  </div>
</div>

## RList

<a name="group___r_list"></a>
<div class="api">
  <div class="prototype">RList</div>
  <div class="apiDetail">
<p>List data structure.</p>
    <dl><dt><b>Description</b>:</dt><dd>The RList is a dynamic, growable list suitable for storing simple primitive data types or pointers to arbitrary objects.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>capacity</td><td>
Current list capacity.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>flags</td><td>
Items should be freed when list is freed.
</td>
    <tr><td class="param">void **</td><td><td>items</td><td>
List item data.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>length</td><td>
Current length of the list contents.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga333de0826e3c4f26c454076e7ef38a12"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rAddItem
(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *item)
  </div>
  <div class="apiDetail">
<p>Add an item to a list.</p>
    <dl><dt><b>Description</b>:</dt><dd>Add the specified item to the list. The list must have been previously created via rAllocList. The list will grow as required to store the item.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from <a class="ref" href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30">rAllocList</a></td>
    <tr><td class="param">item</td><td>Pointer to item to store.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a positive list index for the insered item. If the item cannot be insered due to a memory allocation failure, -1 is returned.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rAddNullItem
(<a href="#group___r_list" class="ref">RList</a> *list)
  </div>
  <div class="apiDetail">
<p>Add a null item to the list.</p>
    <dl><dt><b>Description</b>:</dt><dd>Add a null item to the list. This item does not count in the length returned by <a class="ref" href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6">rGetListLength</a> and will not be visible when iterating using <a class="ref" href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30">rGetNextItem</a></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1gaf7b5c96643c4b576f472f262e9168b30"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RList,*
    RList* rAllocList
(int size, int flags)
  </div>
  <div class="apiDetail">
<p>Allocate a list.</p>
    <dl><dt><b>Description</b>:</dt><dd>Creates an empty list. RList&apos;s can store generic pointers. They automatically grow as required when items are added to the list.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">size</td><td>Initial capacity of the list. Set to &lt; 0 to get a growable list with a default initial size. Set to 0 to to create the list but without any initial list storage. Then call rSetListLimits to define the initial list size.</td>
    <tr><td class="param">flags</td><td>Set to R_DYNAMIC_VALUE when providing allocated values that the hash may use, own and ultimately free when the hash is free. Default is R_STATIC_VALUE.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a pointer to the list.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rClearList
(<a href="#group___r_list" class="ref">RList</a> *list)
  </div>
  <div class="apiDetail">
<p>Clears the list of all items.</p>
    <dl><dt><b>Description</b>:</dt><dd>Resets the list length to zero and clears all items.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1gac4b1e668494ccaae544fad3e939cc3da"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rFreeList
(<a href="#group___r_list" class="ref">RList</a> *list)
  </div>
  <div class="apiDetail">
<p>Free a list.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from <a class="ref" href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30">rAllocList</a></td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rGetItem
(<a href="#group___r_list" class="ref">RList</a> *list, int index)
  </div>
  <div class="apiDetail">
<p>Get an list item.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get an list item specified by its index.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    <tr><td class="param">index</td><td>Item index into the list. Indexes have a range from zero to the lenghth of the list - 1.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rGetListLength
(<a href="#group___r_list" class="ref">RList</a> *list)
  </div>
  <div class="apiDetail">
<p>Get the number of items in the list.</p>
    <dl><dt><b>Description</b>:</dt><dd>Returns the number of items in the list. This will always be less than or equal to the list capacity.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1gab3d0dcae66832e6373c31ae3218aab30"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rGetNextItem
(<a href="#group___r_list" class="ref">RList</a> *list, int *lastIndex)
  </div>
  <div class="apiDetail">
<p>Get the next item in the list.</p>
    <dl><dt><b>Description</b>:</dt><dd>Returns the value of the next item in the list.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    <tr><td class="param">lastIndex</td><td>Pointer to an integer that will hold the last index retrieved.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Next item in list or null for an empty list or after the last item.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1gabb1a9a1df29be030215d47724e9df675"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rInsertItemAt
(<a href="#group___r_list" class="ref">RList</a> *list, int index, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *item)
  </div>
  <div class="apiDetail">
<p>Inser an item into a list at a specific position.</p>
    <dl><dt><b>Description</b>:</dt><dd>Insert the item into the list before the specified position. The list will grow as required to store the item.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from <a class="ref" href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30">rAllocList</a></td>
    <tr><td class="param">index</td><td>Location at which to store the item. The previous item at this index is moved to make room.</td>
    <tr><td class="param">item</td><td>Pointer to item to store.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The position index (positive integer) if successful. If the item cannot be insered due to a memory allocation failure, -1 is returned.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga194af257ed4a162b37d85279afc9367a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rListToString
(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *join)
  </div>
  <div class="apiDetail">
<p>Convert a list of strings to a single string.</p>
This uses the specified join string between the elements
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    <tr><td class="param">join</td><td>String to use as the element join string. May be null.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1gafb9277243f642fc347fce34bf3514794"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rLookupItem
(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *item)
  </div>
  <div class="apiDetail">
<p>Find an item and return its index.</p>
    <dl><dt><b>Description</b>:</dt><dd>Search for an item in the list and return its index.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    <tr><td class="param">item</td><td>Pointer to value stored in the list.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Positive list index if found, otherwise a negative RT error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga32a7ab607f692ade75774d05b5d18582"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rLookupStringItem
(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Find a string item and return its index.</p>
    <dl><dt><b>Description</b>:</dt><dd>Search for the first matching string in the list and return its index.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    <tr><td class="param">str</td><td>Pointer to string to look for.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Positive list index if found, otherwise a negative RT error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga245a6881a7a7c67bcaa9dede4311416a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rPopItem
(<a href="#group___r_list" class="ref">RList</a> *list)
  </div>
  <div class="apiDetail">
<p>Pop an item.</p>
    <dl><dt><b>Description</b>:</dt><dd>Treat the list as a stack and pop the last pushed item.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The last pushed item. If the list is empty, returns NULL.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga6d3bdf54b10a35114671150e1e810744"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rPushItem
(<a href="#group___r_list" class="ref">RList</a> *list, void *item)
  </div>
  <div class="apiDetail">
<p>Push an item onto the list.</p>
    <dl><dt><b>Description</b>:</dt><dd>Treat the list as a stack and push the last pushed item.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    <tr><td class="param">item</td><td>Item to push onto the list.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1gaf5df56f23b3d91ed294465414bd882c3"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rRemoveItem
(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *item)
  </div>
  <div class="apiDetail">
<p>Remove an item from the list.</p>
    <dl><dt><b>Description</b>:</dt><dd>Search for a specified item and then remove it from the list.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    <tr><td class="param">item</td><td>Item pointer to remove.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The positive index of the removed item, otherwise a negative RT error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga700c3096904249bfa90f859914c4b814"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rRemoveItemAt
(<a href="#group___r_list" class="ref">RList</a> *list, int index)
  </div>
  <div class="apiDetail">
<p>Remove an item from the list.</p>
    <dl><dt><b>Description</b>:</dt><dd>Removes the element specified by index, from the list. The list index is provided by rInsertItem.</dd></dl>
    <dl><dt>Returns:</dt><dd>The positive index of the removed item, otherwise a negative RT error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga3a641c82c965133d75d0925249459b52"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rRemoveStringItem
(<a href="#group___r_list" class="ref">RList</a> *list, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Remove a string item from the list.</p>
    <dl><dt><b>Description</b>:</dt><dd>Search for the first matching string and then remove it from the list.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    <tr><td class="param">str</td><td>String value to remove.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The positive index of the removed item, otherwise a negative RT error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga13639491f067138b5bb907998e6f3de4"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rSetItem
(<a href="#group___r_list" class="ref">RList</a> *list, int index, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *item)
  </div>
  <div class="apiDetail">
<p>Set a list item.</p>
    <dl><dt><b>Description</b>:</dt><dd>Update the list item stored at the specified index.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    <tr><td class="param">index</td><td>Location to update.</td>
    <tr><td class="param">item</td><td>Pointer to item to store.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The old item previously at that location index.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1gad5498b891b6f620a0f6f3319f8adf79e"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rSort
(void *base, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> num, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> width, <a href="#group___r_list_1gae9d91521f1622b618ba1bb4cffc9090b" class="ref">RSortProc</a> compare, void *ctx)
  </div>
  <div class="apiDetail">
<p>Quicksort.</p>
    <dl><dt><b>Description</b>:</dt><dd>This is a quicksor with a context argument.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">base</td><td>Base of array to sor.</td>
    <tr><td class="param">num</td><td>Number of array elements.</td>
    <tr><td class="param">width</td><td>Width of array elements.</td>
    <tr><td class="param">compare</td><td>Comparison function.</td>
    <tr><td class="param">ctx</td><td>Context argument to provide to comparison function.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The base array for chaining.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RList,*
    RList* rSortList
(<a href="#group___r_list" class="ref">RList</a> *list, <a href="#group___r_list_1gae9d91521f1622b618ba1bb4cffc9090b" class="ref">RSortProc</a> compare, void *ctx)
  </div>
  <div class="apiDetail">
<p>Sor a list.</p>
    <dl><dt><b>Description</b>:</dt><dd>Sor a list using the sor ordering dictated by the supplied compare function.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    <tr><td class="param">compare</td><td>Comparison function. If null, then a default string comparison is used.</td>
    <tr><td class="param">ctx</td><td>Context to provide to comparison function.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The sorted list.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a></dd></dl>
  </div>
</div>

## RLog

<a name="group___r_log"></a>
<div class="api">
  <div class="prototype">RLog</div>
  <div class="apiDetail">
<p>Log Services.</p>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    </table></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga5b4b64403d8306e632101ffcd0591d57"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void assert
(<a href="osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> cond)
  </div>
  <div class="apiDetail">
<p>Asser that a condition is true.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">cond</td><td>Boolean result of a conditional test.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga8a42754b9d1b03011c35a0dbc4b5e8ab"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rAssert
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *loc, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *msg)
  </div>
  <div class="apiDetail">
<p>Output an assert failed message.</p>
    <dl><dt><b>Description</b>:</dt><dd>This will emit an assert failed message to the standard error output. It may bypass the logging system.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">loc</td><td>Source code location string. Use R_LOC to define a file name and line number string suitable for this parameter.</td>
    <tr><td class="param">msg</td><td>Simple string message to output.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga88d26bf0221718cdf82c34afccc182d2"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rBackupLog
(void )
  </div>
  <div class="apiDetail">
<p>Backup a log.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga8a257ecb7db62931d0c93cc45cab746c"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rDaemonize
(void )
  </div>
  <div class="apiDetail">
<p>For the current process and run as a daemon.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga98a3bfdd72a73f58867a576d206a7264"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rDebug
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Emit a debug message to the log.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">source</td><td>Module emitting the log message.</td>
    <tr><td class="param">fmt</td><td>Printf style format string. Variable number of arguments to.</td>
    <tr><td class="param">...</td><td>Variable arg list from va_list.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga466aeadb53aa9115af4a38b56fe99ced"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rDefaultLogHandler
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *type, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *msg)
  </div>
  <div class="apiDetail">
<p>The default log handler.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">type</td><td>Log message type.</td>
    <tr><td class="param">source</td><td>Source of the message.</td>
    <tr><td class="param">msg</td><td>Log message.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga962ed96d28a0430a633a350f05131295"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rEmitLog
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *type, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source)
  </div>
  <div class="apiDetail">
<p>Test if a log message should be emitted.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call enables routines to test if messages should be logd for a given type/source pair.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">type</td><td>Log message type string.</td>
    <tr><td class="param">source</td><td>Log message source.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the message should be logd.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1gafeb16563395b736ce2e5cde05fb06e25"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rError
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Emit an error message to the log.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">source</td><td>Module emitting the log message.</td>
    <tr><td class="param">fmt</td><td>Printf style format string. Variable number of arguments to.</td>
    <tr><td class="param">...</td><td>Variable arg list from va_list.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga38020b8554396c9ca013e01b42c80487"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RBuf,*
    RBuf* rFormatLog
(<a href="#group___r_buf" class="ref">RBuf</a> *buf, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *type, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *msg)
  </div>
  <div class="apiDetail">
<p>Format a log message into a buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>This formats the log message according to the current log format string.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>RBuf instance.</td>
    <tr><td class="param">type</td><td>Log message type string.</td>
    <tr><td class="param">source</td><td>Log message source.</td>
    <tr><td class="param">msg</td><td>Message to log.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The buffer suitable for chaining calls.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga9e0380f242fcda84916d53133365e51a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rGetLogFile
(void )
  </div>
  <div class="apiDetail">
<p>Get the log file file handle.</p>
    <dl><dt><b>Description</b>:</dt><dd>Returns the file handle used for logging.</dd></dl>
    <dl><dt>Returns:</dt><dd>An file handle.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1gab4f7cc70043180daf079abec1e86266c"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RLogHandler
    RLogHandler rGetLogHandler
(void )
  </div>
  <div class="apiDetail">
<p>Return the currently configured log handler defined via <a class="ref" href="#group___r_log_1ga8d1f1a5146e4c8654ddf7d98a1da78c0">rSetLogHandler</a></p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga7ca88dbb4fff0bb32525a6a0777c10b5"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rInfo
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Emit an informational message to the log.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">source</td><td>Module emitting the log message.</td>
    <tr><td class="param">fmt</td><td>Printf style format string. Variable number of arguments to.</td>
    <tr><td class="param">...</td><td>Variable arg list from va_list.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1gab4a504e7ebc1b15e397da634d34babd4"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rInitLog
(void )
  </div>
  <div class="apiDetail">
<p>Initialize the logging subsystem.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1gabd718243ed41bc3ff573f6fd487016ba"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rIsLogSet
(void )
  </div>
  <div class="apiDetail">
<p>Test if the log has been configured.</p>
    <dl><dt>Returns:</dt><dd>True if the log has been defined.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1gab17605e033d1abe1ac54d07446c4aa0a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rLog
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Emit a log message to the log.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">source</td><td>Module emitting the log message.</td>
    <tr><td class="param">fmt</td><td>Printf style format string. Variable number of arguments to.</td>
    <tr><td class="param">...</td><td>Variable arg list from va_list.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1gac40b7591689649bc8c8e15b2de855bb2"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rLog
(char *type, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Write a message to the error log file.</p>
    <dl><dt><b>Description</b>:</dt><dd>Send a message to the error log file. The purpose of the error log is to record essential configuration and error conditions. Per-request log typically is sent to a separate log. <br/><br/>
 By default, error log messages are sent to the standard output. Applications may redirect output by installing a log handler using <a class="ref" href="#group___r_log_1ga8d1f1a5146e4c8654ddf7d98a1da78c0">rSetLogHandler</a>. <br/><br/>
 Log messages should be a single text line to facilitate machine processing of log files. <br/><br/>
 Log typically is enabled in both debug and release builds and may be controlled via the build define ME_R_LOGGING which is typically set via the MakeMe setting &quot;logging: true&quot;. <br/><br/></dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">type</td><td>Message type.</td>
    <tr><td class="param">source</td><td>Module emitting the log message.</td>
    <tr><td class="param">fmt</td><td>Printf style format string. Variable number of arguments to.</td>
    <tr><td class="param">...</td><td>Variable number of arguments for printf data.</td>
    </table></dd></dl>
    <dl><dt>Remarks:</dt><dd>RLog is highly useful as a debugging aid.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga289ce10b47b026afb492f1b688693841"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rLogConfig
(void )
  </div>
  <div class="apiDetail">
<p>Print the product configuration at the start of the log file.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1gac48ae55a11f78d13459fe258a9e842c9"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rLogv
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *type, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *source, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, va_list args)
  </div>
  <div class="apiDetail">
<p>Write a message to the log file.</p>
    <dl><dt><b>Description</b>:</dt><dd>Send a message to the logging subsystem. The purpose of the log is to record essential configuration and error conditions. Per-request log typically is sent to a separate log. <br/><br/>
 By default, error messages are sent to the standard output. Applications may redirect output by installing a log handler using <a class="ref" href="#group___r_log_1ga8d1f1a5146e4c8654ddf7d98a1da78c0">rSetLogHandler</a>. <br/><br/>
 Log messages should be a single text line to facilitate machine processing of log files. <br/><br/>
 Log typically is enabled in both debug and release builds and may be controlled via the build define ME_R_LOGGING which is typically set via the MakeMe setting &quot;logging: true&quot;. <br/><br/></dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">type</td><td>Message type.</td>
    <tr><td class="param">source</td><td>Module emitting the log message.</td>
    <tr><td class="param">fmt</td><td>Printf style format string. Variable number of arguments to.</td>
    <tr><td class="param">args</td><td>Variable arg list from va_list.</td>
    </table></dd></dl>
    <dl><dt>Remarks:</dt><dd>RLog is highly useful as a debugging aid.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga4ee437179e03b37a917ab6072ca4183f"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rMetrics
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *message, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *namespace, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *dimensions, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *values, ...)
  </div>
  <div class="apiDetail">
<p>Emit an EMF metrics message suitable for AWS CloudWatch Metrics.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">message</td><td>Prefix message string.</td>
    <tr><td class="param">namespace</td><td>Metric namespace.</td>
    <tr><td class="param">dimensions</td><td>Metric dimensions.</td>
    <tr><td class="param">values</td><td>Format string of values.</td>
    <tr><td class="param">...</td><td>Arguments for values format string.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Prototype.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga6bcd9eb7c0b6710d4eacf0bae8b7047a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetError
(int error)
  </div>
  <div class="apiDetail">
<p>Set the error code.</p>
    <dl><dt><b>Description</b>:</dt><dd>Set errno or equivalent.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1gabc76a37c649540d829bb4dad50e0592d"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rSetLog
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *spec, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *format, <a href="osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> force)
  </div>
  <div class="apiDetail">
<p>Initialize logging.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">spec</td><td>The spec is of the form: &quot;destination:filter&quot;. The destination may be a filename, &quot;stdout&quot;, &quot;stderr&quot; or &quot;none&quot;. The log filter portion is of the form: &quot;types:sources&quot; and is passed to rSetLogFilter.</td>
    <tr><td class="param">format</td><td>The log pattern to use to format the message. The format can use Letter tokens that are expanded at runtime. The tokens supported are: &apos;A&apos; for the application name, &apos;D&apos; for the local datetime, &apos;H&apos; for the system hostname, &apos;P&apos; for the process ID , &apos;S&apos; for the message source, and &apos;T&apos; for the log message type.</td>
    <tr><td class="param">force</td><td>Set to true to overwrite a previous definition.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful, otherwise a negative R error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga0a43c6359c5f45d6b9b5d09fd9a67169"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetLogFilter
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *types, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *sources, <a href="osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> force)
  </div>
  <div class="apiDetail">
<p>Define a filter for log messages.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">types</td><td>Comma separated list of types to emit. Can prefix a type with &quot;!&quot; to subtract from the list. Defaults to &quot;error, info&quot;.</td>
    <tr><td class="param">sources</td><td>Comma separated list of sources to emit. Can prefix a type with &quot;!&quot; to subtract from the list. Defaults to &quot;all&quot;.</td>
    <tr><td class="param">force</td><td>Set to true to overwrite a previous definition.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga8d1f1a5146e4c8654ddf7d98a1da78c0"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RLogHandler
    RLogHandler rSetLogHandler
(<a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a> handler)
  </div>
  <div class="apiDetail">
<p>Define a log handler routine that will be invoked to process log messages.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">handler</td><td>Log handler callback function.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The previous log handler function.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1gad227b3587a2e6ddd19b6e7cbc5fc9ae2"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetTimeouts
(<a href="osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> on)
  </div>
  <div class="apiDetail">
<p>Control timeouts.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">on</td><td>Set to false to disable timeouts for debugging.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga727a8e85d6e2fc6160083fa253c2ee7f"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rTermLog
(void )
  </div>
  <div class="apiDetail">
<p>Terminate logging.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga4b2398683f3cf0b8ec13055e1107cc4f"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rWritePid
(void )
  </div>
  <div class="apiDetail">
<p>Write the current process pid to /var/run.</p>
    <dl><dt>Returns:</dt><dd>Zero on success, otherwise a negative status code.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957" class="ref">RLogHandler</a>, <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>

## RString

<a name="group___r_string"></a>
<div class="api">
  <div class="prototype">RString</div>
  <div class="apiDetail">
<p>R String Module.</p>
    <dl><dt><b>Description</b>:</dt><dd>The RT provides a suite of r ascii string manipulation routines to help prevent buffer overflows and other potential security traps.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    </table></dd></dl>
  </div>
</div>
<a name="group___r_string_1gae2d990c0ecee9718f90651cd0e9d4f9b"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* scamel
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Create a camel case version of the string.</p>
    <dl><dt><b>Description</b>:</dt><dd>Copy a string into a newly allocated block and make the first character lower case.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Pointer to the block to duplicate.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a newly allocated string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int scaselesscmp
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2)
  </div>
  <div class="apiDetail">
<p>Compare strings ignoring case.</p>
This is a r replacement for strcasecmp. It can handle NULL args
    <dl><dt><b>Description</b>:</dt><dd>Compare two strings ignoring case differences. This call operates similarly to strcmp.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">s1</td><td>First string to compare.</td>
    <tr><td class="param">s2</td><td>Second string to compare.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns zero if the strings are equivalent, &lt; 0 if s1 sors lower than s2 in the collating sequence or &gt; 0 if it sors higher.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gaf6dba65d34e3f194b3b3eea1cf26dc48"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool scaselessmatch
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2)
  </div>
  <div class="apiDetail">
<p>Compare strings ignoring case.</p>
This is similar to scaselesscmp but it returns a boolean
    <dl><dt><b>Description</b>:</dt><dd>Compare two strings ignoring case differences.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">s1</td><td>First string to compare.</td>
    <tr><td class="param">s2</td><td>Second string to compare.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns true if the strings are equivalent, otherwise false.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* schr
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, int c)
  </div>
  <div class="apiDetail">
<p>Find a character in a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>This is a r replacement for strchr. It can handle NULL args.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to examine.</td>
    <tr><td class="param">c</td><td>Character to search for.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>If the character is found, the call returns a reference to the character position in the string. Otherwise, returns NULL.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga006dafacff82a79754a5fbf45a5e3073"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sclone
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Clone a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>Copy a string into a newly allocated block.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Pointer to the block to duplicate.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a newly allocated string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int scmp
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2)
  </div>
  <div class="apiDetail">
<p>Compare strings.</p>
    <dl><dt><b>Description</b>:</dt><dd>Compare two strings. This is a r replacement for strcmp. It can handle null args.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">s1</td><td>First string to compare.</td>
    <tr><td class="param">s2</td><td>Second string to compare.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns zero if the strings are identical. Return -1 if the first string is less than the second. Return 1 if the first string is greater than the second.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* scontains
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern)
  </div>
  <div class="apiDetail">
<p>Find a pattern in a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>Locate the first occurrence of pattern in a string.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Pointer to the string to search.</td>
    <tr><td class="param">pattern</td><td>String pattern to search for.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a reference to the start of the pattern in the string. If not found, returns NULL.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga31b150a1ca235643b4d57da756116791"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize scopy
(char *dest, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> destMax, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *src)
  </div>
  <div class="apiDetail">
<p>Copy a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>R replacement for strcpy. Copy a string and ensure the destination buffer is not overflowed. The call returns the length of the resultant string or an error code if it will not fit into the target string. This is similar to strcpy, but it will enforce a maximum size for the copied string and will ensure it is always terminated with a null.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">dest</td><td>Pointer to a pointer that will hold the address of the allocated block.</td>
    <tr><td class="param">destMax</td><td>Maximum size of the target string in characters.</td>
    <tr><td class="param">src</td><td>String to copy.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of characters in the target string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga0e165cab681892e9f589d324e4c471d9"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar,*
    cchar* sends
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *suffix)
  </div>
  <div class="apiDetail">
<p>Test if the string ends with a given pattern.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to examine.</td>
    <tr><td class="param">suffix</td><td>Pattern to search for.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a pointer to the start of the pattern if found. Otherwise returns NULL.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sfmt
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Format a string.</p>
This is a secure verion of printf that can handle null args
    <dl><dt><b>Description</b>:</dt><dd>Format the given arguments according to the printf style format. See rPrintf for a full list of the format specifies. This is a secure replacement for sprintf, it can handle null arguments without crashes.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">fmt</td><td>Printf style format string.</td>
    <tr><td class="param">...</td><td>Variable arguments for the format string.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a newly allocated string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gaefe39f246d2d775629ff081bc82e7259"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sfmtbuf
(char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> maxSize, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Format a string into a static buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call format a string using printf style formatting arguments. A trailing null will always be appended. The call returns the size of the allocated string excluding the null.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Pointer to the buffer.</td>
    <tr><td class="param">maxSize</td><td>Size of the buffer.</td>
    <tr><td class="param">fmt</td><td>Printf style format string.</td>
    <tr><td class="param">...</td><td>Variable arguments to format.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The buffer.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga45f672cfa028c10241cfe1f15595a90e"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sfmtbufv
(char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> maxSize, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, va_list args)
  </div>
  <div class="apiDetail">
<p>Format a string into a statically allocated buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call format a string using printf style formatting arguments. A trailing null will always be appended. The call returns the size of the allocated string excluding the null.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Pointer to the buffer.</td>
    <tr><td class="param">maxSize</td><td>Size of the buffer.</td>
    <tr><td class="param">fmt</td><td>Printf style format string.</td>
    <tr><td class="param">args</td><td>Varargs argument obtained from va_start.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The buffer;.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga21286024a5c2525744ea1fa3e5587c50"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sfmtv
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, va_list args)
  </div>
  <div class="apiDetail">
<p>Format a string.</p>
This is a secure verion of printf that can handle null args
    <dl><dt><b>Description</b>:</dt><dd>Format the given arguments according to the printf style format. See rPrintf for a full list of the format specifies. This is a secure replacement for sprintf, it can handle null arguments without crashes.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">fmt</td><td>Printf style format string.</td>
    <tr><td class="param">args</td><td>Varargs argument obtained from va_start.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a newly allocated string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga68717745b0d890315321e376d85a48d0"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> uint
    uint shash
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)
  </div>
  <div class="apiDetail">
<p>Compute a hash code for a string.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to examine.</td>
    <tr><td class="param">len</td><td>Length in characters of the string to include in the hash code.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns an unsigned integer hash code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> uint
    uint shashlower
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)
  </div>
  <div class="apiDetail">
<p>Compute a caseless hash code for a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>This computes a hash code for the string after convering it to lower case.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to examine.</td>
    <tr><td class="param">len</td><td>Length in characters of the string to include in the hash code.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns an unsigned integer hash code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga9d26412974b40e80020d687a2d0ea24c"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sitos
(<a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value)
  </div>
  <div class="apiDetail">
<p>Convert an integer to a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call convers the supplied 64 bit integer to a string using base 10.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">value</td><td>Integer value to conver.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>An allocated string with the convered number.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga08c6bce6ff3cfbf9c9e75c78963a0f0f"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sitosbuf
(char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value, int radix)
  </div>
  <div class="apiDetail">
<p>Convert an integer to a string buffer.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call convers the supplied 64 bit integer into a string formatted into the supplied buffer according to the specified radix.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">buf</td><td>Pointer to the buffer that will hold the string.</td>
    <tr><td class="param">size</td><td>Size of the buffer.</td>
    <tr><td class="param">value</td><td>Integer value to conver.</td>
    <tr><td class="param">radix</td><td>The base radix to use when encoding the number.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a reference to the string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga865ec14e3b17d6a8ad1036c7bc9a8194"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sitosradix
(<a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> value, int radix)
  </div>
  <div class="apiDetail">
<p>Convert an integer to a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call convers the supplied 64 bit integer to a string according to the specified radix.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">value</td><td>Integer value to conver.</td>
    <tr><td class="param">radix</td><td>The base radix to use when encoding the number.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>An allocated string with the convered number.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga36f466e1ee4474467ba91c53d7762c14"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sjoin
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, ...)
  </div>
  <div class="apiDetail">
<p>Catenate strings.</p>
    <dl><dt><b>Description</b>:</dt><dd>This catenates strings together with an optional string separator. If the separator is NULL, not separator is used. This call accepts a variable list of strings to append, terminated by a null argument.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>First string to catentate.</td>
    <tr><td class="param">...</td><td>Variable number of string arguments to append. Terminate list with NULL.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns an allocated string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gad5e17183221999a043c7ffbe42bf5317"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar,*
    cchar* sjoinArgs
(int argc, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> **argv, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *sep)
  </div>
  <div class="apiDetail">
<p>Join an array of strings.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">argc</td><td>number of strings to join.</td>
    <tr><td class="param">argv</td><td>Array of strings.</td>
    <tr><td class="param">sep</td><td>Separator string to use. If NULL, then no separator is used.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A single joined string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gafc4c6dc7fd45cc6a009c45cf5a74fd2c"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sjoinfmt
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *fmt, ...)
  </div>
  <div class="apiDetail">
<p>Join a formatted string to an existing string.</p>
    <dl><dt><b>Description</b>:</dt><dd>This uses the format and args to create a string that is joined to the first string.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>First string to catentate.</td>
    <tr><td class="param">fmt</td><td>First string to catentate.</td>
    <tr><td class="param">...</td><td>Varargs argument obtained from va_start.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns an allocated string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sjoinv
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, va_list args)
  </div>
  <div class="apiDetail">
<p>Catenate strings.</p>
    <dl><dt><b>Description</b>:</dt><dd>This catenates strings together.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>First string to catentate.</td>
    <tr><td class="param">args</td><td>Varargs argument obtained from va_start.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns an allocated string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize slen
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Return the length of a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>R replacement for strlen. This call returns the length of a string and tests if the length is less than a given maximum. It will return zero for NULL args.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to measure.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The length of the string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* slower
(char *str)
  </div>
  <div class="apiDetail">
<p>Convert a string to lower case.</p>
    <dl><dt><b>Description</b>:</dt><dd>Convert a string to its lower case equivalent.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to conver.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool smatch
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2)
  </div>
  <div class="apiDetail">
<p>Compare strings.</p>
    <dl><dt><b>Description</b>:</dt><dd>Compare two strings. This is similar to <a class="ref" href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4">scmp</a> but it returns a boolean.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">s1</td><td>First string to compare.</td>
    <tr><td class="param">s2</td><td>Second string to compare.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns true if the strings are equivalent, otherwise false.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int sncaselesscmp
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)
  </div>
  <div class="apiDetail">
<p>Compare strings ignoring case.</p>
    <dl><dt><b>Description</b>:</dt><dd>Compare two strings ignoring case differences for a given string length. This call operates similarly to strncasecmp.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">s1</td><td>First string to compare.</td>
    <tr><td class="param">s2</td><td>Second string to compare.</td>
    <tr><td class="param">len</td><td>Length of characters to compare.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns zero if the strings are equivalent, &lt; 0 if s1 sors lower than s2 in the collating sequence or &gt; 0 if it sors higher.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga56440e50950476d6015ad47c967b2830"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sncaselesscontains
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> limit)
  </div>
  <div class="apiDetail">
<p>Find a pattern in a string with a limit using a caseless comparison.</p>
    <dl><dt><b>Description</b>:</dt><dd>Locate the first occurrence of pattern in a string, but do not search more than the given character limit. Use a caseless comparison.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Pointer to the string to search.</td>
    <tr><td class="param">pattern</td><td>String pattern to search for.</td>
    <tr><td class="param">limit</td><td>Count of characters in the string to search.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a reference to the start of the pattern in the string. If not found, returns NULL.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* snclone
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)
  </div>
  <div class="apiDetail">
<p>Clone a substring.</p>
    <dl><dt><b>Description</b>:</dt><dd>Copy a substring into a newly allocated block.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Pointer to the block to duplicate.</td>
    <tr><td class="param">len</td><td>Number of bytes to copy. The actual length copied is the minimum of the given length and the length of the supplied string. The result is null terminated.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a newly allocated string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga19ee2558d139a6be382fa2b1a7782327"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int sncmp
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s1, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *s2, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)
  </div>
  <div class="apiDetail">
<p>Compare strings.</p>
    <dl><dt><b>Description</b>:</dt><dd>Compare two strings for a given string length. This call operates similarly to strncmp.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">s1</td><td>First string to compare.</td>
    <tr><td class="param">s2</td><td>Second string to compare.</td>
    <tr><td class="param">len</td><td>Length of characters to compare.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns zero if the strings are equivalent, &lt; 0 if s1 sors lower than s2 in the collating sequence or &gt; 0 if it sors higher.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gac380111626ae7c742e75964378bd5250"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sncontains
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> limit)
  </div>
  <div class="apiDetail">
<p>Find a pattern in a string with a limit.</p>
    <dl><dt><b>Description</b>:</dt><dd>Locate the first occurrence of pattern in a string, but do not search more than the given character limit.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Pointer to the string to search.</td>
    <tr><td class="param">pattern</td><td>String pattern to search for.</td>
    <tr><td class="param">limit</td><td>Count of characters in the string to search.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a reference to the start of the pattern in the string. If not found, returns NULL.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize sncopy
(char *dest, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> destMax, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *src, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)
  </div>
  <div class="apiDetail">
<p>Copy characters from a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>R replacement for strncpy. Copy bytes from a string and ensure the target string is not overflowed. The call returns the length of the resultant string or an error code if it will not fit into the target string. This is similar to strcpy, but it will enforce a maximum size for the copied string and will ensure it is terminated with a null.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">dest</td><td>Pointer to a pointer that will hold the address of the allocated block.</td>
    <tr><td class="param">destMax</td><td>Maximum size of the target string in characters.</td>
    <tr><td class="param">src</td><td>String to copy.</td>
    <tr><td class="param">len</td><td>Maximum count of characters to copy.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a reference to the destination if successful or NULL if the string won&apos;t fit.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* spbrk
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *set)
  </div>
  <div class="apiDetail">
<p>Locate the a character from a set in a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>This locates in the string the first occurence of any character from a given set of characters.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to examine.</td>
    <tr><td class="param">set</td><td>Set of characters to scan for.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a reference to the first character from the given set. Returns NULL if none found.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga25f29ae528696bf67924b2f4bb0db353"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* sptok
(char *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *pattern, char **last)
  </div>
  <div class="apiDetail">
<p>Tokenize a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>Split a string into tokens using a string pattern as delimiters.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to tokenize.</td>
    <tr><td class="param">pattern</td><td>String pattern to use for token delimiters.</td>
    <tr><td class="param">last</td><td>Last token pointer.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a pointer to the next token.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* srchr
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, int c)
  </div>
  <div class="apiDetail">
<p>Find a character in a string by searching backwards.</p>
    <dl><dt><b>Description</b>:</dt><dd>This locates in the string the last occurence of a character.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to examine.</td>
    <tr><td class="param">c</td><td>Character to scan for.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a reference in the string to the requested character. Returns NULL if none found.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga8be66c7ef8c243118b628a2286f9bbe8"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* ssplit
(char *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *delim, char **last)
  </div>
  <div class="apiDetail">
<p>Split a string at a delimiter.</p>
    <dl><dt><b>Description</b>:</dt><dd>Split a string and return pars. The string is modified. This routiner never returns null. If there are leading delimiters, the empty string will be returned and *last will be set to the portion after the delimiters. If str is null, a managed reference to the empty string will be returned. If there are no characters after the delimiter, then *last will be set to the empty string.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to tokenize.</td>
    <tr><td class="param">delim</td><td>Set of characters that are used as token separators.</td>
    <tr><td class="param">last</td><td>Reference to the portion after the delimiters. Will return an empty string if is not trailing portion.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a pointer to the first par before the delimiters. If the string begins with delimiters, the empty string will be returned.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gaef49214f7c1cb74c52134297379f3d9a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize sspn
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *set)
  </div>
  <div class="apiDetail">
<p>Find the end of a spanning prefix.</p>
    <dl><dt><b>Description</b>:</dt><dd>This scans the given string for characters from the set and returns an index to the first character not in the set.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to examine.</td>
    <tr><td class="param">set</td><td>Set of characters to span.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns an index to the first character after the spanning set. If not found, returns the index of the first null.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga72832ed36a60612838da155c7b85de58"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool sstarts
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *prefix)
  </div>
  <div class="apiDetail">
<p>Test if the string starts with a given pattern.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to examine.</td>
    <tr><td class="param">prefix</td><td>Pattern to search for.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns true if the pattern was found. Otherwise returns zero.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* ssub
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> offset, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length)
  </div>
  <div class="apiDetail">
<p>Create a substring.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to examine.</td>
    <tr><td class="param">offset</td><td>Staring offset within str for the beginning of the substring.</td>
    <tr><td class="param">length</td><td>Length of the substring in characters.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a newly allocated substring.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* stemplate
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, void *tokens)
  </div>
  <div class="apiDetail">
<p>Replace template tokens in a string with values from a lookup table.</p>
Tokens are ${variable} references
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to expand.</td>
    <tr><td class="param">tokens</td><td>Hash table of token values to use.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>An expanded string. May return the original string if no &quot;$&quot; references are present.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* stitle
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Create a Title Case version of the string.</p>
    <dl><dt><b>Description</b>:</dt><dd>Copy a string into a newly allocated block and make the first character upper case.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Pointer to the block to duplicate.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a newly allocated string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga53820f3d30989fd3ea991174f84af722"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> double
    double stof
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Convert a string to a double.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call convers the supplied string to a double.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Pointer to the string to parse.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The double equivalent value of the string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga22ce5bb9382b9354a1525f4c35d7fb81"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int64
    int64 stoi
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str)
  </div>
  <div class="apiDetail">
<p>Convert a string to an integer.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call convers the supplied string to an integer using base 10.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Pointer to the string to parse.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The integer equivalent value of the string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gac02880ab504c38248dbdf5b5cabc5a4f"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int64
    int64 stoiradix
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *str, int radix, int *err)
  </div>
  <div class="apiDetail">
<p>Convert a string to an integer.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call convers the supplied string to an integer using the specified radix (base).</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>Pointer to the string to parse.</td>
    <tr><td class="param">radix</td><td>Base to use when parsing the string.</td>
    <tr><td class="param">err</td><td>Return error code. Set to 0 if successful.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The integer equivalent value of the string.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga40788ad5c120d9c09961e509b13535c8"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* stok
(char *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *delim, char **last)
  </div>
  <div class="apiDetail">
<p>Tokenize a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>Split a string into tokens using a character set as delimiters.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to tokenize.</td>
    <tr><td class="param">delim</td><td>Set of characters that are used as token separators.</td>
    <tr><td class="param">last</td><td>Last token pointer.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a pointer to the next token.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga231481de141b753a6155976901f4e544"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> struct,RList,*
    struct RList* stolist
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *src)
  </div>
  <div class="apiDetail">
<p>String to list.</p>
This parses the string of space separated arguments. Single and double quotes are supported
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">src</td><td>Source string to parse.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>List of arguments.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* strim
(char *str, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *set, int where)
  </div>
  <div class="apiDetail">
<p>Trim a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>Trim leading and trailing characters off a string. The original string is not modified and the return value is a newly allocated string.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to trim.</td>
    <tr><td class="param">set</td><td>String of characters to remove.</td>
    <tr><td class="param">where</td><td>Flags to indicate trim from the start, end or both. Use R_TRIM_START, R_TRIM_END, R_TRIM_BOTH.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a newly allocated trimmed string. May not equal str.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* supper
(char *str)
  </div>
  <div class="apiDetail">
<p>Convert a string to upper case.</p>
    <dl><dt><b>Description</b>:</dt><dd>Convert a string to its upper case equivalent.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to conver.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a pointer to the convered string. Will always equal str.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a></dd></dl>
  </div>
</div>
<a name="group___r_string_1gae02b31275acbe16f125234a0375a648e"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void szero
(char *str)
  </div>
  <div class="apiDetail">
<p>Erase the contents of a string.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">str</td><td>String to erase.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_string" class="ref">RString</a>, <a href="#group___r_string_1ga25f8b0848a573b555aca9dfc4d14b065" class="ref">scaselesscmp</a>, <a href="#group___r_string_1ga41a6ae1d881a50070b0dc2a73cf87573" class="ref">schr</a>, <a href="#group___r_string_1ga006dafacff82a79754a5fbf45a5e3073" class="ref">sclone</a>, <a href="#group___r_string_1ga98607dac4844d4018ae6fd17b6a48fc4" class="ref">scmp</a>, <a href="#group___r_string_1ga723138c55c8a6a2e4cd5c8830bb7b50a" class="ref">scontains</a>, <a href="#group___r_string_1ga31b150a1ca235643b4d57da756116791" class="ref">scopy</a>, <a href="#group___r_string_1ga0e165cab681892e9f589d324e4c471d9" class="ref">sends</a>, <a href="#group___r_string_1gaddf694ff2f0f18a42d1cfbe359018aab" class="ref">sfmt</a>, <a href="#group___r_string_1gaefe39f246d2d775629ff081bc82e7259" class="ref">sfmtbuf</a>, <a href="#group___r_string_1ga45f672cfa028c10241cfe1f15595a90e" class="ref">sfmtbufv</a>, <a href="#group___r_string_1ga21286024a5c2525744ea1fa3e5587c50" class="ref">sfmtv</a>, <a href="#group___r_string_1ga68717745b0d890315321e376d85a48d0" class="ref">shash</a>, <a href="#group___r_string_1gae3e12c83d4d1ec7a9f160d218d88d54a" class="ref">shashlower</a>, <a href="#group___r_string_1ga36f466e1ee4474467ba91c53d7762c14" class="ref">sjoin</a>, <a href="#group___r_string_1gab66fcf1c2631cd3f95cc4b6fcf1e0d10" class="ref">sjoinv</a>, <a href="#group___r_string_1ga1e24c23ba7970b8386193dbd046ce48a" class="ref">slen</a>, <a href="#group___r_string_1gaedfad171c59dbef8ebf4425c9fde2f52" class="ref">slower</a>, <a href="#group___r_string_1gad23a6d7a4a3b28f1ec39f373ba88eb19" class="ref">smatch</a>, <a href="#group___r_string_1gad5752b3ca1afcfc6766312db6b59bc92" class="ref">sncaselesscmp</a>, <a href="#group___r_string_1gaf26e8b2539a9c86b5d688a9996ff3613" class="ref">snclone</a>, <a href="#group___r_string_1ga19ee2558d139a6be382fa2b1a7782327" class="ref">sncmp</a>, <a href="#group___r_string_1gac380111626ae7c742e75964378bd5250" class="ref">sncontains</a>, <a href="#group___r_string_1ga16d72b8a9f6d72ce7bc4748d9f1de2a9" class="ref">sncopy</a>, <a href="#group___r_string_1ga53e7e0a0537375dbd5a42274d4fcc3cf" class="ref">spbrk</a>, <a href="#group___r_string_1ga2e0fcc3c64100edf75efef0a6d584170" class="ref">srchr</a>, <a href="#group___r_string_1gaef49214f7c1cb74c52134297379f3d9a" class="ref">sspn</a>, <a href="#group___r_string_1ga72832ed36a60612838da155c7b85de58" class="ref">sstarts</a>, <a href="#group___r_string_1gaba65d7faf8f1d80cf233a70bb2561591" class="ref">ssub</a>, <a href="#group___r_string_1gab5bcb15efaf3dc8f4e9711579f1085dd" class="ref">stemplate</a>, <a href="#group___r_string_1ga3569d0c8ff7399ccd8eafdedc0d12a66" class="ref">stitle</a>, <a href="#group___r_string_1ga40788ad5c120d9c09961e509b13535c8" class="ref">stok</a>, <a href="#group___r_string_1ga6224866cf741ac13a70b8b1429dba1ca" class="ref">strim</a>, <a href="#group___r_string_1ga0754876ebc35ca0ec813b501f524f0e7" class="ref">supper</a></dd></dl>
  </div>
</div>

## RWait

<a name="group___r_wait"></a>
<div class="api">
  <div class="prototype">RWait</div>
  <div class="apiDetail">
<p>Wait object.</p>
    <dl><dt><b>Description</b>:</dt><dd>The RWait service provides a flexible IO waiting mechansim.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">cvoid</a> *</td><td><td>arg</td><td>
Argument to pass to the handler.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga06650984137cfde185bac06dd2a4f355" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">Ticks</a></td><td><td>deadline</td><td>
System deadline time to wait until.
</td>
    <tr><td class="param">int</td><td><td>fd</td><td>
File descriptor to wait upon.
</td>
    <tr><td class="param"><a class="ref" href="#struct_r_fiber">RFiber</a> *</td><td><td>fiber</td><td>
Current fiber for rWaitForIO.
</td>
    <tr><td class="param"><a class="ref" href="#group___r_wait_1ga489c3016ecc64ff8fffdd663a6249fbe">RWaitProc</a></td><td><td>handler</td><td>
Handler function to invoke as the entrypoint in the fiber coroute.
</td>
    <tr><td class="param">int</td><td><td>mask</td><td>
Current event mask.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="group___r_wait_1ga5a6810a6d12f5bcb3e17fee7fc1fb1d8"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RWait,*
    RWait* rAllocWait
(int fd)
  </div>
  <div class="apiDetail">
<p>Allocate a wait object for a file descriptor.</p>
    <dl><dt>Returns:</dt><dd>A RWait object.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_wait_1ga037cbc9c455f940d6fdafbd37cda3211"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rFreeWait
(<a href="#group___r_wait" class="ref">RWait</a> *wp)
  </div>
  <div class="apiDetail">
<p>Free a wait object.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_wait_1gafa3d44f93c21799c4d279a37c44ca190"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rInitWait
(void )
  </div>
  <div class="apiDetail">
<p>Initialize the I/O wait subsystem.</p>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_wait_1gaa04880449a5268ad44dc67a3d079eef9"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetWaitHandler
(<a href="#group___r_wait" class="ref">RWait</a> *wp, <a href="#group___r_wait_1ga489c3016ecc64ff8fffdd663a6249fbe" class="ref">RWaitProc</a> handler, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *arg, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> mask)
  </div>
  <div class="apiDetail">
<p>Define a wait handler function on a wait object.</p>
    <dl><dt><b>Description</b>:</dt><dd>This will run the designated handler on a coroutine fiber in response to matching I/O events.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">wp</td><td>RWait object.</td>
    <tr><td class="param">handler</td><td>Function handler to invoke as the entrypoint in the new coroutine fiber.</td>
    <tr><td class="param">arg</td><td>Parameter argument to pass to the handler.</td>
    <tr><td class="param">mask</td><td>Set to R_READABLE or R_WRITABLE or both.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_wait_1ga0e6c27c5ea9b2dc104b907bf6797c827"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rTermWait
(void )
  </div>
  <div class="apiDetail">
<p>Terminate the I/O wait subsystem.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>

## RbTree

<a name="group___rb_tree"></a>
<div class="api">
  <div class="prototype">RbTree</div>
  <div class="apiDetail">
<p>Red/Black Tree.</p>
    <dl><dt><b>Description</b>:</dt><dd>Self-balancing binary search tree.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    </table></dd></dl>
  </div>
</div>
<a name="group___rb_tree_1ga2e6e20e9aae8331ce33ca0cbace1f95b"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbTree,*
    RbTree* rbAlloc
(int flags, <a href="#group___rb_tree_1ga43a3ce1da1157ab6fb9c663d13fc6edc" class="ref">RbFree</a> free, <a href="#group___rb_tree_1gad22beb71648c702810f53925002ce5d0" class="ref">RbCompare</a> compare)
  </div>
  <div class="apiDetail">
<p>Allocate a red/black tree.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">flags</td><td>Set to RB_DUP if you wish to store duplicate nodes.</td>
    <tr><td class="param">free</td><td>Callback to free a node&apos;s item data.</td>
    <tr><td class="param">compare</td><td>Callback to compare two nodes.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>An RbTree instance.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___rb_tree_1ga4ede061debe339749f47f1c36a1ff2cf"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode,*
    RbNode* rbFirst
(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt)
  </div>
  <div class="apiDetail">
<p>Return the lexically first node.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">rbt</td><td>RbTree allocated via rbAlloc.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The first node.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___rb_tree_1ga9fbbeb3160a0f7532bd4221e00ee559a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rbFree
(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt)
  </div>
  <div class="apiDetail">
<p>Free a red/black tree.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">rbt</td><td>RbTree to free. Allocated via rbAlloc.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___rb_tree_1gaca3058fa6a3333945e476b9817b312f1"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode,*
    RbNode* rbInsert
(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, void *data)
  </div>
  <div class="apiDetail">
<p>Insert a new data item in the tree.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">rbt</td><td>RbTree allocated via rbAlloc.</td>
    <tr><td class="param">data</td><td>User data to store in the tree. The data should contain the lookup key value for the data. The comparison callback will be passed the data and it should be able to extract the key from the data.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The inserted node.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___rb_tree_1ga0a7e9a89dc5c23728437985c3d84bf12"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode,*
    RbNode* rbLookup
(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, void *data, void *ctx)
  </div>
  <div class="apiDetail">
<p>Lookup a data item.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">rbt</td><td>RbTree allocated via rbAlloc.</td>
    <tr><td class="param">data</td><td>User data item to search for. This is passed to the comparison callback supplied when calling rbOpen.</td>
    <tr><td class="param">ctx</td><td>Context to provide to the comparison callback.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The located node or NULL if not found. If there are multiple matching nodes, the first node encountered is returned which may not be the first lexically. If you need the first item lexically, use rbLookupFirst.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___rb_tree_1ga264e8c7389132f53bf38ccb423030dca"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode,*
    RbNode* rbLookupFirst
(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, void *data, void *ctx)
  </div>
  <div class="apiDetail">
<p>Return the lexically first matching node.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">rbt</td><td>RbTree allocated via rbAlloc.</td>
    <tr><td class="param">data</td><td>User data item to search for. This is passed to the comparison callback supplied when calling rbOpen.</td>
    <tr><td class="param">ctx</td><td>Context to provide to the comparison callback.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The located node or NULL if not found. If there are multiple matching nodes, the first node encountered is returned which may not be the first lexically. If you need the first item lexically, use rbLookupFirst.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___rb_tree_1ga5311cd7f36ebed442471ca87462be2c5"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode,*
    RbNode* rbLookupNext
(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, <a href="#struct_rb_node" class="ref">RbNode</a> *node, void *data, void *ctx)
  </div>
  <div class="apiDetail">
<p>Return the next matching node after the given node.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">rbt</td><td>RbTree allocated via rbAlloc.</td>
    <tr><td class="param">node</td><td>Starting node for the search.</td>
    <tr><td class="param">data</td><td>User data item to search for. This is passed to the comparison callback supplied when calling rbOpen.</td>
    <tr><td class="param">ctx</td><td>Context to provide to the comparison callback.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The located node or NULL if not found. If there are multiple matching nodes, the first node encountered is returned which may not be the first lexically. If you need the first item lexically, use rbLookupFirst.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___rb_tree_1ga767f5f0beb2f270e32b51b26dcdc0ae4"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RbNode,*
    RbNode* rbNext
(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, <a href="#struct_rb_node" class="ref">RbNode</a> *node)
  </div>
  <div class="apiDetail">
<p>Return the next node in sequence.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">rbt</td><td>RbTree allocated via rbAlloc.</td>
    <tr><td class="param">node</td><td>Starting node.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The next node in the tree.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___rb_tree_1gab50d4e29e7427d3358152976397b644b"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rbRemove
(<a href="#group___rb_tree" class="ref">RbTree</a> *rbt, <a href="#struct_rb_node" class="ref">RbNode</a> *node, int keep)
  </div>
  <div class="apiDetail">
<p>Remove a data item from the tree.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">rbt</td><td>RbTree allocated via rbAlloc.</td>
    <tr><td class="param">node</td><td>Node to remove. The node is identified by calling rbLookup.</td>
    <tr><td class="param">keep</td><td>If true, the data item will not be freed. Otherwise the free callback will be invoked on the data item.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>

## Functions

<a name="r_8h_1acc57d0183d0c7a070b92ec44532175a7"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rAlloc
(<a href="#r_8h_1a1600235df88b3821764244933b5024f5" class="ref">size_t</a> size)
  </div>
  <div class="apiDetail">
<p>Allocate a block of memory.</p>
    <dl><dt><b>Description</b>:</dt><dd>This is the lowest level of memory allocation routine. Memory is freed via rFree.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">size</td><td>Size of the memory block to allocate.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a pointer to the allocated block. If memory is not available the memory exhaustion handler will be invoked.</dd></dl>
    <dl><dt>Remarks:</dt><dd>Do not mix calls to rAlloc and malloc.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a9956968f7bf3e00c214fdc7efc1d6058"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> REvent
    REvent rAllocEvent
(<a href="#struct_r_fiber" class="ref">RFiber</a> *fiber, <a href="#group___r_event_1ga02fa8ee37c08629cb92622c0f8dc1135" class="ref">REventProc</a> proc, void *data, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> delay)
  </div>
  <div class="apiDetail">
<p>Allocate and schedule a new event to be run from the event loop.</p>
    <dl><dt><b>Description</b>:</dt><dd>Allocate an event to run a callback via the event loop. The safe runtime (R) is not thread-safe in general. A few APIs are thread-safe to enable data interchange between R and foreign threads. <br/><br/>
 This API is thread-safe and may be called by foreign threads. This routine is the only safe way to invoke R services from a foreign-thread.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">fiber</td><td>Fiber object.</td>
    <tr><td class="param">proc</td><td>Function to invoke when the event is run.</td>
    <tr><td class="param">data</td><td>Data to associate with the event and stored in event-&gt;data.</td>
    <tr><td class="param">delay</td><td>Time in milliseconds used by continuous events between firing of the event.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The event object. If called from a foreign thread, note that the event may have already run n return.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
  </div>
</div>
<a name="r_8h_1a62cfe3780073101ebb4305677889637d"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rAllocException
(int cause, <a href="#r_8h_1a1600235df88b3821764244933b5024f5" class="ref">size_t</a> size)
  </div>
  <div class="apiDetail">
<p>Signal a memory allocation exception.</p>
    <dl><dt><b>Description</b>:</dt><dd>R uses a global memory allocaction error handler. If doing direct malloc() allocations that fail, call this routine to signal the memory failure and run the allocation handler.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">cause</td><td>Set to R_MEM_WARNING, R_MEM_LIMIT, R_MEM_FAIL or R_MEM_TO_BIG.</td>
    <tr><td class="param">size</td><td>Size in bytes of the failing allocation.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a6221a2d6416bc9a0bb2a0b8e01800a31"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RFiber,*
    RFiber* rAllocFiber
(<a href="#r_8h_1acd4039811a4e67c7ef110876b509b8be" class="ref">RFiberProc</a> fn, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *data)
  </div>
  <div class="apiDetail">
<p>Allocate a fiber coroutine object.</p>
    <dl><dt><b>Description</b>:</dt><dd>This allocates a new fiber coroutine. Use rStartFiber to launch.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">fn</td><td>Fiber entry point.</td>
    <tr><td class="param">data</td><td>Entry point argument.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A fiber object.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
  </div>
</div>
<a name="r_8h_1a0c254e7a278ede4db77f88be56f05e27"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RLock,*
    RLock* rAllocLock
(void )
  </div>
  <div class="apiDetail">
<p>Allocate a lock object.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call creates a lock object that can be used in rLock rTryLock and rUnlock calls.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a8c46e261f1fe1a8dc841cfe7b980b1cf"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RSocket,*
    RSocket* rAllocSocket
(void )
  </div>
  <div class="apiDetail">
<p>Allocate a socket object.</p>
    <dl><dt>Returns:</dt><dd>A socket object instance.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a95d674cbdb1def04814b3915eddbdcc0"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rAllocType
(<a href="#r_8h_1a4d5d80eb50dbe31bd1c45a7607a222f6" class="ref">RType</a> type)
  </div>
  <div class="apiDetail">
<p>Allocate an object of a given type.</p>
    <dl><dt><b>Description</b>:</dt><dd>Allocates a zeroed block of memory large enough to hold an instance of the specified type.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">type</td><td>RType of the object to allocate.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns a pointer to the allocated block. If memory is not available the memory allocation handler will be invoked.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a1ee5682992282644ea9f86d2b6fd0ac0"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rBreakpoint
(void )
  </div>
  <div class="apiDetail">
<p>Trigger a breakpoint.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine is invoked for asserion errors from rAssert and errors from rError. It is useful in debuggers as breakpoint location for detecting errors.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a2840dcc80c3c9da4c051da6206dfb182"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rCloseSocket
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)
  </div>
  <div class="apiDetail">
<p>Close a socket.</p>
    <dl><dt><b>Description</b>:</dt><dd>Close a socket.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1adb1137a3aadc487a50c8715a179e874a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rConnectSocket
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *host, int port, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)
  </div>
  <div class="apiDetail">
<p>Connect a client socket.</p>
    <dl><dt><b>Description</b>:</dt><dd>Open a client connection. May be called from a fiber or from main.</dd></dl>
    <dl><dt></dt><dd>If using TLS, this must only be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned via rAllocSocket.</td>
    <tr><td class="param">host</td><td>Host or IP address to connect to.</td>
    <tr><td class="param">port</td><td>TCP/IP port number to connect to.</td>
    <tr><td class="param">deadline</td><td>Maximum system time for connect to wait until completion. Use rGetTicks() + elapsed to create a deadline.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a0c3a47b424de519ffd6cbd8025e04f1b"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rCreateThread
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, void *proc, void *data)
  </div>
  <div class="apiDetail">
<p>Create an O/S thread.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">name</td><td>Descriptive name for the thread.</td>
    <tr><td class="param">proc</td><td>Thread main function to invoke.</td>
    <tr><td class="param">data</td><td>Argument to proc.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a3cdb0dd3552f0cda8911ac028742bd36"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rFormatLocalTime
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *format, <a href="osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a> time)
  </div>
  <div class="apiDetail">
<p>Convert a time value to local time and format as a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>R replacement for ctime.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">format</td><td>Time format string. See rFormatUniversalTime for time formats.</td>
    <tr><td class="param">time</td><td>Time to format. Use rGetTime to retrieve the current time.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The formatting time string. Caller msut free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1ad1d54b741f20a8d2f3e4c1448be44b15"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rFormatUniversalTime
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *format, <a href="osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a> time)
  </div>
  <div class="apiDetail">
<p>Convert a time value to universal time and format as a string.</p>
    <dl><dt><b>Description</b>:</dt><dd>Format a time string. This uses strftime if available and so the supported formats vary from platform to platform. Strftime should supports some of these these formats described below.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">format</td><td>Time format string <br/>
 A ... full weekday name (Monday) <br/>
 a ... abbreviated weekday name (Mon) <br/>
 B ... full month name (January) <br/>
 b ... abbreviated month name (Jan) <br/>
 C ... century. Year / 100. (0-N) <br/>
 c ... standard date and time representation <br/>
 D ... date (m/d/y) <br/>
 d ... day-of-month (01-31) <br/>
 e ... day-of-month with a leading space if only one digit ( 1-31) <br/>
 F ... same as Y-m-d <br/>
 H ... hour (24 hour clock) (00-23) <br/>
 h ... same as b <br/>
 I ... hour (12 hour clock) (01-12) <br/>
 j ... day-of-year (001-366) <br/>
 k ... hour (24 hour clock) (0-23) <br/>
 l ... the hour (12-hour clock) as a decimal number (1-12); single digits are preceded by a blank. <br/>
 M ... minute (00-59) <br/>
 m ... month (01-12) <br/>
 n ... a newline <br/>
 P ... lower case am / pm <br/>
 p ... AM / PM <br/>
 R ... same as H:M <br/>
 r ... same as H:M:S p <br/>
 S ... second (00-59) <br/>
 s ... seconds since epoch <br/>
 T ... time (H:M:S) <br/>
 t ... a tab. <br/>
 U ... week-of-year, first day sunday (00-53) <br/>
 u ... the weekday (Monday as the first day of the week) as a decimal number (1-7). <br/>
 v ... is equivalent to `<lsquo/>e-b-Y<rsquo/>&apos;. <br/>
 W ... week-of-year, first day monday (00-53) <br/>
 w ... weekday (0-6, sunday is 0) <br/>
 X ... standard time representation <br/>
 x ... standard date representation <br/>
 Y ... year with century <br/>
 y ... year without century (00-99) <br/>
 Z ... timezone name <br/>
 z ... offset from UTC (-hhmm or +hhmm) <br/>
 %+ ... national representation of the date and time (the format is similar to that produced by date(1)). <br/>
 %% ... percent sign <br/><br/>
 Some platforms may also support the following format extensions: <br/>
 E* ... POSIX locale extensions. Where &quot;*&quot; is one of the characters: c, C, x, X, y, Y. <br/>
 G ... a year as a decimal number with century. This year is the one that contains the greater par of the week (Monday as the first day of the week). <br/>
 g ... the same year as in `<lsquo/>G<rsquo/>&apos;, but as a decimal number without century (00-99). <br/>
 O* ... POSIX locale extensions. Where &quot;*&quot; is one of the characters: d, e, H, I, m, M, S, u, U, V, w, W, y. Additionly OB implemented to represent alternative months names (used standalone, without day mentioned). <br/>
 V ... the week number of the year (Monday as the first day of the week) as a decimal number (01-53). If the week containing January 1 has four or more days in the new year, then it is week 1; otherwise it is the last week of the previous year, and the next week is week 1. <br/><br/>
 Useful formats: <br/>
 RFC822: &quot;%a, %d %b %Y %H:%M:%S %Z &quot;Fri, 07 Jan 2003 12:12:21 PDT" <br/>
 &quot;%T %F &quot;12:12:21 2007-01-03" <br/>
 &quot;%v &quot;07-Jul-2003" <br/>
 RFC3399: &quot;%FT%TZ&quot; &quot;1985-04-12T23:20:50.52Z&quot; which is April 12 1985, 23:20.50 and 52 msec <br/><br/></td>
    <tr><td class="param">time</td><td>Time to format. Use rGetTime to retrieve the current time.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The formatting time string. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a7a2d7caf461b23fdbc41b6a448018c6c"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rFree
(void *ptr)
  </div>
  <div class="apiDetail">
<p>Free a block of memory allocated via rAlloc.</p>
    <dl><dt><b>Description</b>:</dt><dd>This releases a block of memory allocated via rAllocMem.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ptr</td><td>Pointer to the block. If ptr is null, the call is skipped.</td>
    </table></dd></dl>
    <dl><dt>Remarks:</dt><dd>The rFree routine is a macro over rFreeMem. Do not mix calls to rFreeMem and free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1aedbf935e66750b9f6d963ed460150d99"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rFreeFiber
(<a href="#struct_r_fiber" class="ref">RFiber</a> *fiber)
  </div>
  <div class="apiDetail">
<p>Free a fiber coroutine.</p>
    <dl><dt><b>Description</b>:</dt><dd>The fiber must have already completed before invoking this routine. This routine is typically only called internally by the fiber module.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">fiber</td><td>Fiber to free.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
  </div>
</div>
<a name="r_8h_1a1ded1ae622f1d4a0f629891fc66b76e1"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rFreeLock
(<a href="#struct_r_lock" class="ref">RLock</a> *mutex)
  </div>
  <div class="apiDetail">
<p>Free a dynamically allocated lock object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mutex</td><td>Reference to an <a class="ref" href="#struct_r_lock">RLock</a> structure to initialize.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a5974bf340241888ac8e6a62623574cf2"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rFreeSocket
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)
  </div>
  <div class="apiDetail">
<p>Free a socket object.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a7cc294120ab4d36a0443ff664a1b3783"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar,*
    cchar* rGetAppName
(void )
  </div>
  <div class="apiDetail">
<p>Get the application name defined via rSetAppName.</p>
    <dl><dt>Returns:</dt><dd>The one-word lower case application name defined via rSetAppName.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a4ead22e4e498bd3c3dcce1efb3558886"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RThread
    RThread rGetCurrentThread
(void )
  </div>
  <div class="apiDetail">
<p>Get the current Thread.</p>
    <dl><dt>Returns:</dt><dd>The currently executing thread.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1ace5dc0804f699de76ac4b0ce52d667f9"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rGetDate
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *format)
  </div>
  <div class="apiDetail">
<p>Get a string representation of the current date/time.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get the current date/time as a string according to the given format.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">format</td><td>Date formatting string. See strftime for acceptable date format specifiers. If null, then this routine uses the R_DEFAULT_DATE format.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A date string. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a21aa129982dcedfa8de399059f9d39c7"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Ticks
    Ticks rGetElapsedTicks
(<a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> mark)
  </div>
  <div class="apiDetail">
<p>Get the elapsed time since a ticks mark.</p>
Create the ticks mark with rGetTicks()
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mark</td><td>Staring time stamp.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The time elapsed since the mark was taken.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1aad2a1d28c40f060ad1cfc810338c9c9b"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar,*
    cchar* rGetError
(int error)
  </div>
  <div class="apiDetail">
<p>Return a string representation of an R error code.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">error</td><td>An R error code. These codes are always negative for errors and zero for R_OK.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A static string error representation.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a4245dba2ae6400bd683cfe659c952f2d"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RFiber,*
    RFiber* rGetFiber
(void )
  </div>
  <div class="apiDetail">
<p>Get the current fiber object.</p>
    <dl><dt>Returns:</dt><dd>Fiber Fiber object.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a166b5f27f5f01da78f1b7945464ede23"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rGetFiberStack
(void )
  </div>
  <div class="apiDetail">
<p>Get the base address of the fiber stack.</p>
    <dl><dt>Returns:</dt><dd>A pointer to the base of the fiber stack.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a0e3990fe1e1b665f0d78d1edf8ed1fa3"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1a151d6b4fc026bbbf0b057d78f2543f50" class="ref">uint64</a>
    rGetHiResTicks
(void )
  </div>
  <div class="apiDetail">
<p>Get the CPU tick count.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get the current CPU tick count. This is a system dependant high resolution timer. On some systems, this returns time in nanosecond resolution.</dd></dl>
    <dl><dt>Returns:</dt><dd>The CPU time in ticks. Will return the system time if CPU ticks are not available.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
  </div>
</div>
<a name="r_8h_1a7eb682d940ee0ec2326ba835b4ee5d50"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rGetIsoDate
(<a href="osdep.html#group___osdep_1gade1c8a9958f9e5394c2e78269e654872" class="ref">Time</a> time)
  </div>
  <div class="apiDetail">
<p>Get an ISO Date string representation of the given date/time.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get the date/time as an ISO string.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">time</td><td>Given time to convert.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A date string. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a6c976fbb9c1038e02d41c618593c21b6"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rGetOsError
(void )
  </div>
  <div class="apiDetail">
<p>Return the native O/S error code.</p>
    <dl><dt><b>Description</b>:</dt><dd>Returns an O/S error code from the most recent system call. This returns errno on Unix systems or GetLastError() on Windows.</dd></dl>
    <dl><dt>Returns:</dt><dd>The O/S error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a5dc330a4d9c78f414c3289dfc6be6341"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Ticks
    Ticks rGetRemainingTicks
(<a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> mark, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> timeout)
  </div>
  <div class="apiDetail">
<p>Return the time remaining until a timeout has elapsed.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mark</td><td>Staring time stamp.</td>
    <tr><td class="param">timeout</td><td>Time in milliseconds.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Time in milliseconds until the timeout elapses.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a49a635c02ea8f5992a3fc1117996653d"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> cchar,*
    cchar* rGetServerName
(void )
  </div>
  <div class="apiDetail">
<p>Get the application server name string.</p>
    <dl><dt>Returns:</dt><dd>A string containing the application server name string.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a34ab66c09cf9644da85ef1257f63e6e1"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rGetSocketAddr
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, char *ipbuf, int ipbufLen, int *port)
  </div>
  <div class="apiDetail">
<p>Get the locally bound socket IP address and port for the socket.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get the file descriptor associated with a socket.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    <tr><td class="param">ipbuf</td><td>Buffer to receive the IP address.</td>
    <tr><td class="param">ipbufLen</td><td>Size of the ipbuf.</td>
    <tr><td class="param">port</td><td>Address of an integer to receive the port unumber.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1ab4b12fff7f437c19e7ccc0837c8de773"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Socket
    Socket rGetSocketHandle
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)
  </div>
  <div class="apiDetail">
<p>Get the socket file descriptor.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get the file descriptor associated with a socket.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The Socket file descriptor used by the O/S for the socket.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a4bba5d382cad512b94fb175f3795acab"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rGetState
(void )
  </div>
  <div class="apiDetail">
<p>Get the current R state.</p>
    <dl><dt>Returns:</dt><dd>Returns R_RUNNING, R_STOPPING or R_STOPPED.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1adf7e774e1366b9578853ff33619141f2"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Ticks
    Ticks rGetTicks
(void )
  </div>
  <div class="apiDetail">
<p>Get the system time.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get the system time in milliseconds. This is a monotonically increasing time counter. It does not represent wall-clock time.</dd></dl>
    <dl><dt>Returns:</dt><dd>The system time in milliseconds.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1adeff51c6169701ca88855c628e541213"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Time
    Time rGetTime
(void )
  </div>
  <div class="apiDetail">
<p>Get the time.</p>
    <dl><dt><b>Description</b>:</dt><dd>Get the date/time in milliseconds since Jan 1 1970.</dd></dl>
    <dl><dt>Returns:</dt><dd>The time in milliseconds since Jan 1 1970.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1ac13f8cbe3da625b2be5d9bfd514763b4"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rGetTimeouts
(void )
  </div>
  <div class="apiDetail">
<p>Return true if timeouts are enabled.</p>
    <dl><dt>Returns:</dt><dd>True if timeouts are enabled.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a027be31ceca9425f9027e861af344db0"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rGetWaitFd
(void )
  </div>
  <div class="apiDetail">
<p>Get the global wait descriptor.</p>
    <dl><dt>Returns:</dt><dd>The wait file descriptor used by epoll and kqueue.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a69c34c0d21ba3e687fd427ec7e8c76e0"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rGlobalLock
(void )
  </div>
  <div class="apiDetail">
<p>Globally lock the application.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call asserts the application global lock so that other threads calling rGlobalLock will block until the current thread calls rGlobalUnlock. WARNING: Use this API very sparingly.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a5730b725b8f64ebdaf60610e2505473d"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rGlobalUnlock
(void )
  </div>
  <div class="apiDetail">
<p>Unlock the global mutex.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call unlocks the global mutex previously locked via rGlobalLock.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1aaefdc50bc76e3432ab3e17828131d865"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rGracefulStop
(void )
  </div>
  <div class="apiDetail">
<p>Gracefully stop the app.</p>
    <dl><dt><b>Description</b>:</dt><dd>Queued events will be serviced.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1af8cabeb2b1a911a9158521980d56e9ec"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rGrowList
(<a href="#group___r_list" class="ref">RList</a> *list, int size)
  </div>
  <div class="apiDetail">
<p>Grow the list to be at least the requested size in elements.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">list</td><td>List pointer returned from rAllocList.</td>
    <tr><td class="param">size</td><td>Required minimum size for the list.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a4d3daaf25495154da965f2a6f02a6377"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> char,*
    char* rHashToJson
(<a href="#group___r_hash" class="ref">RHash</a> *hash, int pretty)
  </div>
  <div class="apiDetail">
<p>Convert a hash into JSON.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Hash table to use for the result.</td>
    <tr><td class="param">pretty</td><td>Set to true to have a prettier JSON representation.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A JSON string. Caller must free.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a3745469c82bb38b8552e4e388cf55914"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RBuf,*
    RBuf* rHashToJsonBuf
(<a href="#group___r_hash" class="ref">RHash</a> *hash, <a href="#group___r_buf" class="ref">RBuf</a> *buf, int pretty)
  </div>
  <div class="apiDetail">
<p>Convert a hash into JSON in the given buffer.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">hash</td><td>Hash table to use for the result.</td>
    <tr><td class="param">buf</td><td>RBuf instance to store the json text.</td>
    <tr><td class="param">pretty</td><td>Set to true to have a prettier JSON representation.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The given buffer.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a035204f021dd1ab1a47355c57ac68850"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rInit
(<a href="#r_8h_1acd4039811a4e67c7ef110876b509b8be" class="ref">RFiberProc</a> fn, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *arg, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> stackSize)
  </div>
  <div class="apiDetail">
<p>Initialize the runtime.</p>
    <dl><dt><b>Description</b>:</dt><dd>This routine should be called at startup from main().</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">fn</td><td>Fiber function to start.</td>
    <tr><td class="param">arg</td><td>Argument to the fiber function.</td>
    <tr><td class="param">stackSize</td><td>Size of the fiber coroutine stacks.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a10264d35b573aaa8df2ab522082cfba1"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rInitFibers
(<a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> stackSize)
  </div>
  <div class="apiDetail">
<p>Initialize the fiber coroutine module.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">stackSize</td><td>Default size of fiber stacks in bytes.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1ad6370a569f893788ec5a45dae4042929"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> RLock,*
    RLock* rInitLock
(<a href="#struct_r_lock" class="ref">RLock</a> *mutex)
  </div>
  <div class="apiDetail">
<p>Initialize a statically allocated lock object.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call initialized a lock object without allocation. The object can then be used used in rLock rTryLock and rUnlock calls.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mutex</td><td>Reference to an <a class="ref" href="#struct_r_lock">RLock</a> structure to initialize.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A reference to the supplied mutex. Returns null on errors.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a39a3b12767224595ac001b4a5030ba6c"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rInitOs
(void )
  </div>
  <div class="apiDetail">
<p>Create and initialze the O/S dependent subsystem.</p>
    <dl><dt><b>Description</b>:</dt><dd>Called internally by the RT. Should not be called by users.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
  </div>
</div>
<a name="r_8h_1a8a750bb33290f0089f447865e08bb9be"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rIsMain
(void )
  </div>
  <div class="apiDetail">
<p>Test if a fiber is the main fiber.</p>
    <dl><dt>Returns:</dt><dd>True if the fiber is the main fiber.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a89de99c5d48a75a6b85bd41a08b7b61e"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rIsSocketClosed
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)
  </div>
  <div class="apiDetail">
<p>Test if the socket has been closed.</p>
    <dl><dt><b>Description</b>:</dt><dd>Determine if rCloseSocket has been called.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the socket is at end-of-file.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a3ac7acebcbef32b9da5dde0f42ebfbb5"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rIsSocketConnected
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)
  </div>
  <div class="apiDetail">
<p>Determine if the socket has connected to a remote pper.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the socket is connected.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1ad1ba813892c1fefc9c2c4cfb209a181c"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rIsSocketEof
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)
  </div>
  <div class="apiDetail">
<p>Test if the other end of the socket has been closed.</p>
    <dl><dt><b>Description</b>:</dt><dd>Determine if the other end of the socket has been closed and the socket is at end-of-file.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the socket is at end-of-file.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1ac57d5c9c5051641bc023ad20751e58ef"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rIsSocketHandshaking
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)
  </div>
  <div class="apiDetail">
<p>Determine if the socket is partway through a TLS handshake.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the socket is handshaking.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a1d7bb7eb0e4b3bcd2d64770fe5eb131a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rIsSocketSecure
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)
  </div>
  <div class="apiDetail">
<p>Determine if the socket is secure.</p>
    <dl><dt><b>Description</b>:</dt><dd>Determine if the socket is using SSL to provide enhanced security.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>True if the socket is using SSL, otherwise zero.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a8a536877ebfc576456b1493a8cd373a5"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rListenSocket
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *host, int port, <a href="#r_8h_1af324bdc33c3c712ac5c73c295cd6b79c" class="ref">RSocketProc</a> handler, void *arg)
  </div>
  <div class="apiDetail">
<p>Listen on a server socket for incoming connections.</p>
    <dl><dt><b>Description</b>:</dt><dd>Open a server socket and listen for client connections. If host is null, then this will listen on both IPv6 and IPv4.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned via rAllocSocket.</td>
    <tr><td class="param">host</td><td>Host name or IP address to bind to. Set to 0.0.0.0 to bind to all possible addresses on a given port.</td>
    <tr><td class="param">port</td><td>TCP/IP port number to connect to.</td>
    <tr><td class="param">handler</td><td>Function callback to invoke for incoming connections. The function is invoked on a new fiber coroutine.</td>
    <tr><td class="param">arg</td><td>Argument to handler.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a5a59bb8b3265904510668e13d02e48ae"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rMemdup
(<a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *ptr, <a href="#r_8h_1a1600235df88b3821764244933b5024f5" class="ref">size_t</a> size)
  </div>
  <div class="apiDetail">
<p>Duplicate a block of memory.</p>
    <dl><dt><b>Description</b>:</dt><dd>Copy a block of memory into a newly allocated block.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ptr</td><td>Pointer to the block to duplicate.</td>
    <tr><td class="param">size</td><td>Size of the block to copy.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Returns an allocated block.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1aef8dcc86e5a69f95e2d9abc166449a67"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> Time
    Time rParseIsoDate
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *when)
  </div>
  <div class="apiDetail">
<p>Parse an ISO date string.</p>
    <dl><dt>Returns:</dt><dd>The time in milliseconds since Jan 1, 1970.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a5e68016e4b9381eb07d94855361e4a6d"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rReadSocket
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)
  </div>
  <div class="apiDetail">
<p>Read from a socket.</p>
    <dl><dt><b>Description</b>:</dt><dd>Read data from a socket. The read will return with whatever bytes are available. If none is available, this call will yield the current fiber and resume the main fiber. When data is available, the fiber will resume.</dd></dl>
    <dl><dt></dt><dd>Must be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    <tr><td class="param">buf</td><td>Pointer to a buffer to hold the read data.</td>
    <tr><td class="param">bufsize</td><td>Size of the buffer.</td>
    <tr><td class="param">deadline</td><td>Maximum system time for connect to wait until completion. Use rGetTicks() + elapsed to create a deadline.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A count of bytes actually read. Return a negative R error code on errors.</dd></dl>
    <dl><dt>Returns:</dt><dd>Return -1 for EOF and errors. On success, return the number of bytes read. Use rIsSocketEof to distinguision between EOF and errors.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1aa75ed2c407f881549fadace8ec56a3bc"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rReadSocketSync
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, char *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize)
  </div>
  <div class="apiDetail">
<p>Read from a socket.</p>
    <dl><dt><b>Description</b>:</dt><dd>Read data from a socket. The read will return with whatever bytes are available. If none and the socket is in blocking mode, it will block until there is some data available or the socket is disconnected. Use rSetSocketBlocking to change the socket blocking mode. It is preferable to use rReadSocket which can wait without blocking via fiber coroutines.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    <tr><td class="param">buf</td><td>Pointer to a buffer to hold the read data.</td>
    <tr><td class="param">bufsize</td><td>Size of the buffer.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A count of bytes actually read. Return a negative R error code on errors.</dd></dl>
    <dl><dt>Returns:</dt><dd>Return -1 for EOF and errors. On success, return the number of bytes read. Use rIsSocketEof to distinguision between EOF and errors.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a8eb347a434bd998d213ec23e19230a6d"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rResetSocket
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp)
  </div>
  <div class="apiDetail">
<p>Reset a socket.</p>
    <dl><dt><b>Description</b>:</dt><dd>Reset a socket by closing the underlying socket file descriptor. The Socket instance can be reused by rConnectSocket.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a059333256cfab39b5037149625e1133b"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rResumeFiber
(<a href="#struct_r_fiber" class="ref">RFiber</a> *fiber, void *result)
  </div>
  <div class="apiDetail">
<p>Resume a fiber.</p>
    <dl><dt><b>Description</b>:</dt><dd>Resume a fiber. Generally only called from the main fiber. If called from a non-main fiber the target fiber is resumed via an event to the main fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">fiber</td><td>Fiber object.</td>
    <tr><td class="param">result</td><td>Result to pass to the fiber and will be the value returned from rYieldFiber.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1ac43d285ac3c0df87711d0cea9fd50172"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rSetAppName
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *name, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *title, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *version)
  </div>
  <div class="apiDetail">
<p>Set the application name, title and version.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">name</td><td>One word, lower case name for the app.</td>
    <tr><td class="param">title</td><td>Pascal case multi-word descriptive name.</td>
    <tr><td class="param">version</td><td>Version of the app. Major-Minor-Patch. E.g. 1.2.3.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful. Otherwise a negative RT error code.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a30e2a4ad9a03e6de3925c1583489d19f"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetDefaultSocketCa
(<a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *ca)
  </div>
  <div class="apiDetail">
<p>Set the default CA root certificate bundle.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ca</td><td>File containing the root certificates.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1aa934a700a08bd3e0450d8846f4fb23c7"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetFiberStack
(<a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size)
  </div>
  <div class="apiDetail">
<p>Set the default fiber stack size.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">size</td><td>Size of fiber stack in bytes.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
  </div>
</div>
<a name="r_8h_1a8c789489ea07a942b46dcb1c6a0d18c5"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetMemHandler
(<a href="#r_8h_1a3e2bc18aa2db34222ff8e68c993bb1d4" class="ref">RMemProc</a> handler)
  </div>
  <div class="apiDetail">
<p>Define a global memory exhaustion handler.</p>
    <dl><dt><b>Description</b>:</dt><dd>The memory handler will be invoked for memory allocation errors.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">handler</td><td>Callback function invoked with the signature: void fn(int cause, size_t size).</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1af84ad013fcfa0dc3867dc6df1e4e7581"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetOsError
(int error)
  </div>
  <div class="apiDetail">
<p>Set the O/S error code.</p>
    <dl><dt><b>Description</b>:</dt><dd>Set errno or equivalent.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a817d093be54881d3fc2b3a72e07271be"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetSocketBlocking
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1gad5c9d4ba3dc37783a528b0925dc981a0" class="ref">bool</a> on)
  </div>
  <div class="apiDetail">
<p>Set a socket into blocking I/O mode.</p>
from a socket
    <dl><dt><b>Description</b>:</dt><dd>Sockets are opened in non-blocking mode by default.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    <tr><td class="param">on</td><td>Set to true to enable blocking mode.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a55542c59fff2734e3993dc2bc7049b80"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetSocketCerts
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *key, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *cert, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *ca, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *revoke)
  </div>
  <div class="apiDetail">
<p>Configure the socket TLS certificates.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call is a wrapper over rSetTLSCerts.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    <tr><td class="param">key</td><td>Private key for the certificate.</td>
    <tr><td class="param">cert</td><td>Certificate to use for TLS.</td>
    <tr><td class="param">ca</td><td>Certificate authority to use when verifying peer connections.</td>
    <tr><td class="param">revoke</td><td>List of revoked certificates.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a9c25522e398b3719fec8e5028ff10c37"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetSocketCiphers
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *ciphers)
  </div>
  <div class="apiDetail">
<p>Set the ciphers to use for communications.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    <tr><td class="param">ciphers</td><td>String of suitable ciphers.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a962e82f4240c024e7117402fd15c3b38"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetSocketVerify
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, int verifyPeer, int verifyIssuer)
  </div>
  <div class="apiDetail">
<p>Set the socket TLS verification parameters.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call is a wrapper over rSetTlsCerts.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    <tr><td class="param">verifyPeer</td><td>Set to true to verify peer certificates.</td>
    <tr><td class="param">verifyIssuer</td><td>Set to true to verify the issuer of the peer certificate.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1abb141da0e571ac51d9422fd89445c830"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetSocketWaitMask
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#osdep_8h_1a168afaa12b2c08e4ae1d11ea4c296e64" class="ref">int64</a> mask, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)
  </div>
  <div class="apiDetail">
<p>Update the wait mask for a socket.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    <tr><td class="param">mask</td><td>Set to R_READABLE or R_WRITABLE or both.</td>
    <tr><td class="param">deadline</td><td>System time in ticks to wait until.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a5f33a3343c0937ad589d48beaeac5b8f"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSetState
(int state)
  </div>
  <div class="apiDetail">
<p>Set the R state.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">state</td><td>Set to R_RUNNING, R_STOPPING or R_STOPPED.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a35b19891b3c32f496ee52b157cae938a"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rSleep
(<a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> ticks)
  </div>
  <div class="apiDetail">
<p>Sleep a fiber for the requested number of milliseconds.</p>
    <dl><dt></dt><dd>Must be called from a fiber.</dd></dl>
    <dl><dt><b>Description</b>:</dt><dd>Pause a fiber for the requested duration and then resume via the main fiber. Other fibers continue to run.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">ticks</td><td>Time period in milliseconds to sleep.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a116c72a151fb75665eaef53222bcae37"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> int
    int rSpawnFiber
(<a href="#r_8h_1acd4039811a4e67c7ef110876b509b8be" class="ref">RFiberProc</a> fn, void *arg)
  </div>
  <div class="apiDetail">
<p>Spawn a fiber coroutine.</p>
    <dl><dt><b>Description</b>:</dt><dd>This allocates a new fiber and resumes it.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">fn</td><td>Fiber entry point.</td>
    <tr><td class="param">arg</td><td>Entry point argument.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a19f0ff099cd1403e8498f5f73bdba421"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rSpawnThread
(<a href="#r_8h_1ab0f2523ffe3b986a0f334c049881b687" class="ref">RThreadProc</a> fn, void *arg)
  </div>
  <div class="apiDetail">
<p>Spawn an O/S thread.</p>
    <dl><dt><b>Description</b>:</dt><dd>This creates a new thread and runs the given function.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">fn</td><td>Thread main function entry point.</td>
    <tr><td class="param">arg</td><td>Argument provided to the thread.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Value returned from fn().</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1af095d5a60dd353712a4c24bd5a489d23"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rStartFiber
(<a href="#struct_r_fiber" class="ref">RFiber</a> *fiber, void *data)
  </div>
  <div class="apiDetail">
<p>Start a fiber coroutine.</p>
    <dl><dt><b>Description</b>:</dt><dd>This creates an event so that the main fiber can start the fiber. This routine is typically only called internally by the fiber module.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">fiber</td><td>The fiber object.</td>
    <tr><td class="param">data</td><td>Value to pass to the fiber entry point.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
  </div>
</div>
<a name="r_8h_1a979b9dbe371c8ee5a00022747757e3ef"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rStop
(void )
  </div>
  <div class="apiDetail">
<p>Immediately stop the app.</p>
    <dl><dt><b>Description</b>:</dt><dd>Queued events will not be serviced.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a0a54d92e2877d58e7d2593f25e5cd5d2"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rTermFibers
(void )
  </div>
  <div class="apiDetail">
<p>Terminate the fiber coroutine module.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a2e0e2e889ef1f3b7d9663258d30ec304"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rTermLock
(<a href="#struct_r_lock" class="ref">RLock</a> *mutex)
  </div>
  <div class="apiDetail">
<p>Terminate a statically allocated lock object.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mutex</td><td>Reference to an <a class="ref" href="#struct_r_lock">RLock</a> structure to initialize.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a85f79a92f163bafc1b0123face97996c"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void
    void rTermOs
(void )
  </div>
  <div class="apiDetail">
<p>Stop the O/S dependent subsystem.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
  </div>
</div>
<a name="r_8h_1a3b692979faceb23c232599374f7f7d71"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> bool
    bool rTryLock
(<a href="#struct_r_lock" class="ref">RLock</a> *lock)
  </div>
  <div class="apiDetail">
<p>Attempt to lock access.</p>
    <dl><dt><b>Description</b>:</dt><dd>This call attempts to assert a lock on the given lock mutex so that other threads calling rLock or rTryLock will block until the current thread calls rUnlock.</dd></dl>
    <dl><dt>Returns:</dt><dd>Returns zero if the successful in locking the mutex. Returns a negative error code if unsuccessful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a59d42a597c69a42387f41d62f0e8c5b2"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rWriteSocket
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> bufsize, <a href="osdep.html#group___osdep_1ga06650984137cfde185bac06dd2a4f355" class="ref">Ticks</a> deadline)
  </div>
  <div class="apiDetail">
<p>Write to a socket.</p>
    <dl><dt><b>Description</b>:</dt><dd>Write a block of data to a socket. If the socket is in non-blocking mode (the default), the write may return having written less than the required bytes. If no data can be written, this call will yield the current fiber and resume the main fiber. When data is available, the fiber will resume.</dd></dl>
    <dl><dt></dt><dd>Must be called from a fiber.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    <tr><td class="param">buf</td><td>Reference to a block to write to the socket.</td>
    <tr><td class="param">bufsize</td><td>Length of data to write. This may be less than the requested write length if the socket is in non-blocking mode. Will return a negative error code on errors.</td>
    <tr><td class="param">deadline</td><td>System time in ticks to wait until.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A count of bytes actually written. Return a negative error code on errors and if the socket cannot absorb any more data. If the transport is saturated, will return a negative error and rGetError() returns EAGAIN or EWOULDBLOCK.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a4a9bc1513a3f0a6f9ef8cd02a91a7041"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> ssize
    ssize rWriteSocketSync
(<a href="#struct_r_socket" class="ref">RSocket</a> *sp, <a href="osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *buf, <a href="osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> len)
  </div>
  <div class="apiDetail">
<p>Write to a socket.</p>
    <dl><dt><b>Description</b>:</dt><dd>Write a block of data to a socket. If the socket is in non-blocking mode (the default), the write may return having written less than the required bytes. It is preferable to use rWriteSocket which can wait without blocking via fiber coroutines.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sp</td><td>Socket object returned from rAllocSocket.</td>
    <tr><td class="param">buf</td><td>Reference to a block to write to the socket.</td>
    <tr><td class="param">len</td><td>Length of data to write. This may be less than the requested write length if the socket is in non-blocking mode. Will return a negative error code on errors.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>A count of bytes actually written. Return a negative error code on errors and if the socket cannot absorb any more data. If the transport is saturated, will return a negative error and rGetError() returns EAGAIN or EWOULDBLOCK.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a531c892493b60bb2088705d7f4e447cb"></a>
<div class="api">
  <div class="prototype">
    <a href="osdep.html#osdep_8h_1ad17d551e31d1828c68acf40684849b7e" class="ref">PUBLIC</a> void,*
    void* rYieldFiber
(void *value)
  </div>
  <div class="apiDetail">
<p>Yield a fiber back to the main fiber.</p>
    <dl><dt><b>Description</b>:</dt><dd>Pause a fiber until resumed by the main fiber. the target fiber is resumed via an event to the main fiber. This routine is thread safe when invoked from a non-main thread.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">value</td><td>Value to provide as a result to the main fiber that called rResumeFiber.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>

## Typedefs

<a name="r_8h_1a1622ca8d14e7e932db8328d19e89d0cf"></a>
<div class="api">
  <div class="prototype">
    typedef libucontext_ucontext_t RFiberContext.
  </div>
  <div class="apiDetail">
<p>Fiber coroutine stack context.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1acd4039811a4e67c7ef110876b509b8be"></a>
<div class="api">
  <div class="prototype">
    typedef void(* RFiberProc) (void *data).
  </div>
  <div class="apiDetail">
<p>Fiber entry point function.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">data</td><td>Custom function argument.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a6e07786e9b309fd95506934538563f92"></a>
<div class="api">
  <div class="prototype">
    typedef uint(* RHashProc) (cvoid *name, ssize len).
  </div>
  <div class="apiDetail">
<p>Hashing function to use for the table.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">name</td><td>Name to hash.</td>
    <tr><td class="param">len</td><td>Length of the name to hash.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>An integer hash index.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
  </div>
</div>
<a name="r_8h_1a3e2bc18aa2db34222ff8e68c993bb1d4"></a>
<div class="api">
  <div class="prototype">
    typedef void(* RMemProc) (int cause, size_t size).
  </div>
  <div class="apiDetail">
<p>Memory exhaustion callback procedure.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">cause</td><td>The cause of the memory failure.</td>
    <tr><td class="param">size</td><td>The size of the failing block allocation.</td>
    </table></dd></dl>
  </div>
</div>
<a name="r_8h_1ab0f2523ffe3b986a0f334c049881b687"></a>
<div class="api">
  <div class="prototype">
    typedef void*(* RThreadProc) (void *data).
  </div>
  <div class="apiDetail">
<p>Thread entry point function.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">data</td><td>Custom function argument.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Value to pass back from rSpawnThread.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="r_8h_1a1600235df88b3821764244933b5024f5"></a>
<div class="api">
  <div class="prototype">
    typedef long size_t.
  </div>
  <div class="apiDetail">
<p>Unsigned integral type.</p>
Equivalent in size to void*
  </div>
</div>
<a name="r_8h_1af9381320a2640ea84038579d8f143c01"></a>
<div class="api">
  <div class="prototype">
    typedef int Socket.
  </div>
  <div class="apiDetail">
<p>Argument for sockets.</p>
  </div>
</div>
<a name="r_8h_1aec517130c026730881898750d76e596f"></a>
<div class="api">
  <div class="prototype">
    typedef unsigned long time_t.
  </div>
  <div class="apiDetail">
<p>Unsigned time type.</p>
Time in seconds since Jan 1, 1970
  </div>
</div>
<a name="group___r_event_1ga02fa8ee37c08629cb92622c0f8dc1135"></a>
<div class="api">
  <div class="prototype">
    typedef void(* REventProc) (void *data).
  </div>
  <div class="apiDetail">
<p>Callback function for events.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">data</td><td>Opaque data argument.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_event_1ga20f2b4a832a556bf6f00c51b9e19179c"></a>
<div class="api">
  <div class="prototype">
    typedef void(* RWatchProc) (cvoid *data, cvoid *arg).
  </div>
  <div class="apiDetail">
<p>Callback function for watched events.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">data</td><td>Opaque data argument supplied via rWatchEvent.</td>
    <tr><td class="param">arg</td><td>Watched event arg.</td>
    <tr><td class="param">id</td><td>Event ID.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___r_file_1ga3d6ff45f976d1c59d5c261e3b4e8d456"></a>
<div class="api">
  <div class="prototype">
    typedef int(* RWalkDirProc) (void *arg, cchar *path, int flags).
  </div>
  <div class="apiDetail">
<p>Callback function for <a class="ref" href="#group___r_file_1ga10200903fefbee39bb31e455f5c9225a">rWalkDir</a></p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">arg</td><td>Argument supplied to rWalkDir.</td>
    <tr><td class="param">path</td><td>Current filename path to walk.</td>
    <tr><td class="param">flags</td><td>Flags supplied to rWalkDir.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_file" class="ref">RFile</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9"></a>
<div class="api">
  <div class="prototype">
    typedef int(* RListCompareProc) (cvoid *arg1, cvoid *arg2).
  </div>
  <div class="apiDetail">
<p>List comparison procedure for soring.</p>
    <dl><dt><b>Description</b>:</dt><dd>Callback function signature used by <a class="ref" href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb">rSortList</a></dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">arg1</td><td>First list item to compare.</td>
    <tr><td class="param">arg2</td><td>Second list item to compare.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Return zero if the items are equal. Return -1 if the first arg is less than the second. Otherwise return 1.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_list_1gae9d91521f1622b618ba1bb4cffc9090b"></a>
<div class="api">
  <div class="prototype">
    typedef int(* RSortProc) (cvoid *p1, cvoid *p2, void *ctx).
  </div>
  <div class="apiDetail">
<p>Quicksort callback function.</p>
    <dl><dt><b>Description</b>:</dt><dd>This is a quicksor callback with a context argument.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">p1</td><td>Pointer to first element.</td>
    <tr><td class="param">p2</td><td>Pointer to second element.</td>
    <tr><td class="param">ctx</td><td>Context argument to provide to comparison function.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>-1, 0, or 1, depending on if the elements are p1 &lt; p2, p1 == p2 or p1 &gt; p2.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_list" class="ref">RList</a>, <a href="#group___r_list_1ga8b28a90a6c636ba1fe6925a235a00bb9" class="ref">RListCompareProc</a>, <a href="#group___r_list_1ga333de0826e3c4f26c454076e7ef38a12" class="ref">rAddItem</a>, <a href="#group___r_list_1ga748ef57cdd454e01c9fdc854acd9e0f7" class="ref">rAddNullItem</a>, <a href="#group___r_list_1gaf7b5c96643c4b576f472f262e9168b30" class="ref">rAllocList</a>, <a href="#group___r_list_1ga92d2a03c4940156e19deff9fe1d87c36" class="ref">rClearList</a>, <a href="#group___r_list_1ga9a8667654ee86577cbe4731d69e37ba7" class="ref">rGetItem</a>, <a href="#group___r_list_1gaa4c5e822abfa1671a1d50429588ea2a6" class="ref">rGetListLength</a>, <a href="#group___r_list_1gab3d0dcae66832e6373c31ae3218aab30" class="ref">rGetNextItem</a>, <a href="#group___r_list_1gabb1a9a1df29be030215d47724e9df675" class="ref">rInsertItemAt</a>, <a href="#group___r_list_1gafb9277243f642fc347fce34bf3514794" class="ref">rLookupItem</a>, <a href="#group___r_list_1ga32a7ab607f692ade75774d05b5d18582" class="ref">rLookupStringItem</a>, <a href="#group___r_list_1gaf5df56f23b3d91ed294465414bd882c3" class="ref">rRemoveItem</a>, <a href="#group___r_list_1ga700c3096904249bfa90f859914c4b814" class="ref">rRemoveItemAt</a>, <a href="#group___r_list_1ga3a641c82c965133d75d0925249459b52" class="ref">rRemoveStringItem</a>, <a href="#group___r_list_1ga13639491f067138b5bb907998e6f3de4" class="ref">rSetItem</a>, <a href="#group___r_list_1ga568eac23f096f02c6c2e973b6e6eadfb" class="ref">rSortList</a></dd></dl>
  </div>
</div>
<a name="group___r_log_1ga7cc135cd20ba4178a32ab34cedb3e957"></a>
<div class="api">
  <div class="prototype">
    typedef void(* RLogHandler) (cchar *type, cchar *source, cchar *msg).
  </div>
  <div class="apiDetail">
<p>Log handler callback type.</p>
    <dl><dt><b>Description</b>:</dt><dd>Callback prototype for the log handler. Used by rSetLogHandler to define a message logging handler to process log and error messages. See rLog for more details.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">type</td><td>The message type: &apos;code&apos;, &apos;error&apos;, &apos;info&apos;, &apos;log&apos;.</td>
    <tr><td class="param">source</td><td>The message source.</td>
    <tr><td class="param">msg</td><td>Log message.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    <a href="#group___r_log_1gafeb16563395b736ce2e5cde05fb06e25" class="ref">rError</a>, <a href="#group___r_log_1ga9e0380f242fcda84916d53133365e51a" class="ref">rGetLogFile</a>, <a href="#group___r_log_1gab4f7cc70043180daf079abec1e86266c" class="ref">rGetLogHandler</a>, <a href="#group___r_log_1gac40b7591689649bc8c8e15b2de855bb2" class="ref">rLog</a>, <a href="#group___r_log_1gabc76a37c649540d829bb4dad50e0592d" class="ref">rSetLog</a></dd></dl>
  </div>
</div>
<a name="group___r_wait_1ga489c3016ecc64ff8fffdd663a6249fbe"></a>
<div class="api">
  <div class="prototype">
    typedef void(* RWaitProc) (cvoid *data, int mask).
  </div>
  <div class="apiDetail">
<p>Callback function for IO wait events.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">data</td><td>Opaque data argument.</td>
    <tr><td class="param">id</td><td>IO event selection mask.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___rb_tree_1gad22beb71648c702810f53925002ce5d0"></a>
<div class="api">
  <div class="prototype">
    typedef int(* RbCompare) (cvoid *n1, cvoid *n2, cvoid *ctx).
  </div>
  <div class="apiDetail">
<p>Callback to compare a data nodes.</p>
    <dl><dt><b>Description</b>:</dt><dd>The comparison function may perform a simple &quot;strcmp&quot; style comparison function or it may perform a modified comparison using the supplied context information. For example: a comparison could perform a &quot;startsWith&quot; style comparison. The context argument can control the type of comparison that is performed.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">n1</td><td>Reference to first item.</td>
    <tr><td class="param">n2</td><td>Reference to item to compare.</td>
    <tr><td class="param">ctx</td><td>Context provided to rbLookup.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Return -1 if n1 is lexically less than n2. Zero if equal and 1 if n1 is greater than n2.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___rb_tree_1ga43a3ce1da1157ab6fb9c663d13fc6edc"></a>
<div class="api">
  <div class="prototype">
    typedef void(* RbFree) (void *data).
  </div>
  <div class="apiDetail">
<p>Callback to free a nodes associated data.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">data</td><td>Reference to the associated data for a node.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="struct_r_fiber"></a>
<div class="api">
  <div class="prototype">RFiber</div>
  <div class="apiDetail">
<p>Fiber state.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    </table></dd></dl>
  </div>
</div>
<a name="struct_r_lock"></a>
<div class="api">
  <div class="prototype">RLock</div>
  <div class="apiDetail">
<p>Multithreading lock control structure.</p>
    <dl><dt><b>Description</b>:</dt><dd><a class="ref" href="#struct_r_lock">RLock</a> is used for multithread locking in multithreaded applications.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
  </div>
</div>
<a name="struct_r_name"></a>
<div class="api">
  <div class="prototype">RName</div>
  <div class="apiDetail">
<p>Per item structure.</p>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>custom</td><td>
Custom data bits.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/r/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>flags</td><td>
Name was allocated.
</td>
    <tr><td class="param">char *</td><td><td>name</td><td>
Hash name.
</td>
    <tr><td class="param">int</td><td><td>next</td><td>
Next name in hash chain or next free if on free list.
</td>
    <tr><td class="param">void *</td><td><td>value</td><td>
Pointer to data.
</td>
    </table></dd></dl>
  </div>
</div>

