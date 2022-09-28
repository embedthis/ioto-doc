# MQTT API

This Library is a high-performance [MQTT] library for IoT publish/subscribe communications.

The library supports [MQTT version 3.1.1](https://docs.oasis-open.org/mqtt/mqtt/v3.1.1/os/mqtt-v3.1.1-os.html) and has the following features:

* Supports connect, publish, subscribe, ping and disconnect messages.
* Message quality of service for reliable delivery.
* Retained messages.
* TLS encryption with ALPN over port 443.
* High message throughput with exceptionally low overhead.
* Wait for delivery or acknowledgement options.
* Auto reconnect on network failures.
* Parallelism via fiber coroutines.



<a name="Extensions"></a>
## Extensions

  <table class="apiIndex" title="Extensions">
<tr class="apiDef">
<td class="apiName"><a href="#group___mqtt" class="nameRef">Mqtt</a></td>
<td class="apiBrief">MQTT Protocol.</td></tr>
</table>
<a name="Functions"></a>
## Functions

  <table class="apiIndex" title="Functions">
<tr class="apiDef"><td class="apiType"><a href="#group___mqtt" class="ref">Mqtt*</a></td><td><a href="#group___mqtt_1gaa04c4a1b79a027e7b2fd396a2a60288d" class="nameRef">mqttAlloc</a>(<a href="r.html#struct_r_socket" class="ref">RSocket</a> *sock, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *clientId, <a href="#group___mqtt_1ga146b43e36b77eebee066929179391014" class="ref">MqttEventProc</a> proc)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Allocate an MQTT object.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___mqtt_1ga9b6e014b729eaefce2ff1b0633d0fb43" class="nameRef">mqttConnect</a>(<a href="#group___mqtt" class="ref">Mqtt</a> *mq, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *username, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *password, int flags, <a href="#group___mqtt_1ga6ebde7995602c324124f0c113db1ac9f" class="ref">MqttWaitFlags</a> waitFlags)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Establish a session with the MQTT broker.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#mqtt_8h_1a33611971f4c2de4c3969186d1c17c5c6" class="nameRef">mqttFree</a>(<a href="#group___mqtt" class="ref">Mqtt</a> *mq)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Free an <a class="ref" href="#struct_mqtt">Mqtt</a> instance.</td></tr>
<tr class="apiDef"><td class="apiType"><a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar*</a></td><td><a href="#group___mqtt_1gad6c3c32d833ac9ea804c82f305c849cd" class="nameRef">mqttGetError</a>(struct Mqtt *mq)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Returns an error message for error code, error.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___mqtt_1ga5ba53016e61198e1e5d8a277bf0fe915" class="nameRef">mqttMsgsInQueue</a>(<a href="#group___mqtt" class="ref">Mqtt</a> *mq)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the number of messages to send in the send queue.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___mqtt_1ga8a2d03432b642595445655cbcf1f331f" class="nameRef">mqttMsgsToSend</a>(<a href="#group___mqtt" class="ref">Mqtt</a> *mq)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Get the number of messages in the queue.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___mqtt_1ga562b37074ee9fc3d2af85ae301b4d343" class="nameRef">mqttPing</a>(<a href="#group___mqtt" class="ref">Mqtt</a> *mq)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Ping the broker.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___mqtt_1ga355a87763b04ce0c01c12a7af4e0447e" class="nameRef">mqttPublish</a>(<a href="#group___mqtt" class="ref">Mqtt</a> *mq, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *msg, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, int qos, <a href="#group___mqtt_1ga6ebde7995602c324124f0c113db1ac9f" class="ref">MqttWaitFlags</a> waitFlags, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *topic, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Publish an application message to the MQTT broker.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___mqtt_1ga1a6331be244b3afc65f1c39d4b853814" class="nameRef">mqttPublishRetained</a>(<a href="#group___mqtt" class="ref">Mqtt</a> *mq, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *msg, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, int qos, <a href="#group___mqtt_1ga6ebde7995602c324124f0c113db1ac9f" class="ref">MqttWaitFlags</a> waitFlags, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *topic, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Publish a retained message to the MQTT broker.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___mqtt_1ga5cc5ff6f68ef7b85bbd53e115b3137da" class="nameRef">mqttSetMessageSize</a>(<a href="#group___mqtt" class="ref">Mqtt</a> *mq, int size)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the maximum message size.</td></tr>
<tr class="apiDef"><td class="apiType">void</td><td><a href="#group___mqtt_1gad8a4213fffbad465d5bd908c27291aa3" class="nameRef">mqttSetWill</a>(<a href="#group___mqtt" class="ref">Mqtt</a> *mq, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *topic, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *msg, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Set the will and testament message.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___mqtt_1gafe7f248d11137df9cd7235c030dc584b" class="nameRef">mqttSubscribe</a>(<a href="#group___mqtt" class="ref">Mqtt</a> *mq, <a href="#group___mqtt_1ga2e0e79a879b68600c48e3ecf522c7a4a" class="ref">MqttCallback</a> callback, int maxQos, <a href="#group___mqtt_1ga6ebde7995602c324124f0c113db1ac9f" class="ref">MqttWaitFlags</a> waitFlags, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *topic, ...)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Subscribe to a topic.</td></tr>
<tr class="apiDef"><td class="apiType">int</td><td><a href="#group___mqtt_1gac7003ac2fc6d66c544eafd14814e8b2a" class="nameRef">mqttUnsubscribe</a>(<a href="#group___mqtt" class="ref">Mqtt</a> *mq, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *topic, <a href="#group___mqtt_1ga6ebde7995602c324124f0c113db1ac9f" class="ref">MqttWaitFlags</a> wait)</td></tr><tr class="apiBrief"><td>&nbsp;</td><td>Unsubscribe from a topic.</td></tr>
</table>
<a name="Typedefs"></a>
## Typedefs

<table class="apiIndex" title="typedefs">
<tr class="apiDef"><td class="apiName"><a href="#struct_mqtt" class="nameRef">Mqtt</a></td><td class="apiBrief">MQTT instance.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___mqtt_1ga2e0e79a879b68600c48e3ecf522c7a4a" class="nameRef">MqttCallback</a></td><td class="apiBrief">Message receipt callback.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#group___mqtt_1ga146b43e36b77eebee066929179391014" class="nameRef">MqttEventProc</a></td><td class="apiBrief">MQTt event callback.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#struct_mqtt_hdr" class="nameRef">MqttHdr</a></td><td class="apiBrief">Fixed header of a packet.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#struct_mqtt_msg" class="nameRef">MqttMsg</a></td><td class="apiBrief"><a class="ref" href="#struct_mqtt">Mqtt</a> message.</td></tr>
<tr class="apiDef"><td class="apiName"><a href="#struct_mqtt_recv" class="nameRef">MqttRecv</a></td><td class="apiBrief">A struct used to deserialize/interpret an incoming packet from the broker.</td></tr>
</table>
<a name="Defines"></a>
## Defines

<table class="apiIndex" title="Defines">
<tr class="apiDef">
<td>#define</td><td><a href="#mqtt_8h_1a28bb764847ded15bd5736b2e334d50db" class="nameRef">MQTT_BUF_SIZE</a>&nbsp;&nbsp;&nbsp;4096</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Receive buffer size.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#mqtt_8h_1ac692e1d5134ec3ea602ce6be7e99f95b" class="nameRef">MQTT_EVENT_CONNECT</a>&nbsp;&nbsp;&nbsp;1</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>A new connection was established.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#mqtt_8h_1ae3e8c999ecb51d867f8468d90338105b" class="nameRef">MQTT_EVENT_DISCONNECT</a>&nbsp;&nbsp;&nbsp;2</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The connection was terminated.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#mqtt_8h_1aa33df1ece1f3a2d04d9f891892352706" class="nameRef">MQTT_EVENT_STOPPING</a>&nbsp;&nbsp;&nbsp;3</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>The application is stopping.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#mqtt_8h_1ae156cd73790de10dc3d6fee6bacddef7" class="nameRef">MQTT_INLINE_BUF_SIZE</a>&nbsp;&nbsp;&nbsp;128</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Size of inline buffer.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#mqtt_8h_1a5ef0eedf46c53686e51afb2c3c83c500" class="nameRef">MQTT_KEEP_ALIVE</a>&nbsp;&nbsp;&nbsp;(20 * 60)</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Default connection keep alive time in seconds.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#mqtt_8h_1a90061bee708f0ee61f68a25c90d4981c" class="nameRef">MQTT_MAX_MESSAGE_SIZE</a>&nbsp;&nbsp;&nbsp;256 * 1024 * 1024</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Max message size.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#mqtt_8h_1a43a89d5c77d70fb92ce6cbf34210b652" class="nameRef">MQTT_MSG_TIMEOUT</a>&nbsp;&nbsp;&nbsp;30</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Default message timeout in seconds.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#group___mqtt_1ga50781ed232e8fd19a071d07566579974" class="nameRef">MQTT_PROTOCOL_LEVEL</a>&nbsp;&nbsp;&nbsp;0x04</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Protocol version 3.1.1.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#mqtt_8h_1a7b47b82597fda9f0a7f25759c00fdb8c" class="nameRef">MQTT_TOPIC_SIZE</a>&nbsp;&nbsp;&nbsp;128</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Max topic size.</td></tr>
<tr class="apiDef">
<td>#define</td><td><a href="#group___mqtt_1ga50781ed232e8fd19a071d07566579974" class="nameRef">MQTT_PROTOCOL_LEVEL</a>&nbsp;&nbsp;&nbsp;0x04</td>
</tr>
<tr class="apiBrief"><td>&nbsp;</td><td>Protocol version 3.1.1.</td></tr>
  </table>

## Mqtt

<a name="struct_mqtt"></a>
<div class="api">
  <div class="prototype">Mqtt</div>
  <div class="apiDetail">
<p>MQTT Protocol.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">RBuf *</td><td><td>buf</td><td>
I/O read buffer.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>connected</td><td>
<a class="ref" href="#struct_mqtt">Mqtt</a> is currently connected flag.
</td>
    <tr><td class="param">int</td><td><td>error</td><td>
<a class="ref" href="#struct_mqtt">Mqtt</a> error flag.
</td>
    <tr><td class="param">char *</td><td><td>errorMsg</td><td>
<a class="ref" href="#struct_mqtt">Mqtt</a> error message.
</td>
    <tr><td class="param"><a class="ref" href="#struct_mqtt_msg">MqttMsg</a></td><td><td>head</td><td>
Head of message queue.
</td>
    <tr><td class="param">char *</td><td><td>id</td><td>
Client ID.
</td>
    <tr><td class="param">int</td><td><td>keepAlive</td><td>
Keep alive duration in seconds.
</td>
    <tr><td class="param">time_t</td><td><td>lastSend</td><td>
Time of last send in seconds.
</td>
    <tr><td class="param">int</td><td><td>mask</td><td>
R library wait event mask.
</td>
    <tr><td class="param">int</td><td><td>maxMessage</td><td>
Maximum message size.
</td>
    <tr><td class="param">int</td><td><td>msgTimeout</td><td>
Message timeout for retransmit.
</td>
    <tr><td class="param">int</td><td><td>nextId</td><td>
Next message ID.
</td>
    <tr><td class="param"><a class="ref" href="#group___mqtt_1ga146b43e36b77eebee066929179391014">MqttEventProc</a></td><td><td>proc</td><td>
Notification event callback <br/>
</td>
    <tr><td class="param">RSocket *</td><td><td>sock</td><td>
Underlying socket transport.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>subscribedApi</td><td>
Reserved.
</td>
    <tr><td class="param">RList *</td><td><td>topics</td><td>
List of subscribed topics.
</td>
    <tr><td class="param">char *</td><td><td>willMsg</td><td>
Will and testament message.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>willMsgSize</td><td>
Size of will message.
</td>
    <tr><td class="param">char *</td><td><td>willTopic</td><td>
Will and testament topic.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="group___mqtt_1gaa04c4a1b79a027e7b2fd396a2a60288d"></a>
<div class="api">
  <div class="prototype">
    <a href="#struct_mqtt" class="ref">Mqtt</a> *
    mqttAlloc
(<a href="r.html#struct_r_socket" class="ref">RSocket</a> *sock, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *clientId, <a href="#group___mqtt_1ga146b43e36b77eebee066929179391014" class="ref">MqttEventProc</a> proc)
  </div>
  <div class="apiDetail">
<p>Allocate an MQTT object.</p>
    <dl><dt><b>Description</b>:</dt><dd>This layers an MQTT transport over an existing connected socket.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">sock</td><td>A connected socket object created via rAllocSocket and rConnectSocket.</td>
    <tr><td class="param">clientId</td><td>Unique client identifier string.</td>
    <tr><td class="param">proc</td><td>Event notification callback procedure.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1ga9b6e014b729eaefce2ff1b0633d0fb43"></a>
<div class="api">
  <div class="prototype">
    int
    mqttConnect
(<a href="#struct_mqtt" class="ref">Mqtt</a> *mq, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *username, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *password, int flags, <a href="#group___mqtt_1ga6ebde7995602c324124f0c113db1ac9f" class="ref">MqttWaitFlags</a> waitFlags)
  </div>
  <div class="apiDetail">
<p>Establish a session with the MQTT broker.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td>The <a class="ref" href="#struct_mqtt">Mqtt</a> object.</td>
    <tr><td class="param">username</td><td>The username to use when establishing the session with the MQTT broker. Set to NULL if a username is not required.</td>
    <tr><td class="param">password</td><td>The password to use when establishing the session with the MQTT broker. Set to NULL if a password is not required.</td>
    <tr><td class="param">flags</td><td>Additional MqttConnectFlags to use when establishing the connection. These flags are for forcing the session to start clean: MQTT_CONNECT_CLEAN_SESSION, the QOS level to publish the will and testament messages with, and whether or not the broker should retain the will_message, MQTT_CONNECT_WILL_RETAIN.</td>
    <tr><td class="param">waitFlags</td><td>Wait flags. Set to MQTT_WAIT_NONE, MQTT_WAIT_SENT or MQTT_WAIT_ACK.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1gad6c3c32d833ac9ea804c82f305c849cd"></a>
<div class="api">
  <div class="prototype">
    <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *
    mqttGetError
(struct Mqtt *mq)
  </div>
  <div class="apiDetail">
<p>Returns an error message for error code, error.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td><a class="ref" href="#struct_mqtt">Mqtt</a> object.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The associated error message.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1ga5ba53016e61198e1e5d8a277bf0fe915"></a>
<div class="api">
  <div class="prototype">
    int
    mqttMsgsInQueue
(<a href="#struct_mqtt" class="ref">Mqtt</a> *mq)
  </div>
  <div class="apiDetail">
<p>Get the number of messages to send in the send queue.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td>The MQTT mq.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of messages in the queue to send.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1ga8a2d03432b642595445655cbcf1f331f"></a>
<div class="api">
  <div class="prototype">
    int
    mqttMsgsToSend
(<a href="#struct_mqtt" class="ref">Mqtt</a> *mq)
  </div>
  <div class="apiDetail">
<p>Get the number of messages in the queue.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td>The MQTT mq.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>The number of messages in the queue.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1ga562b37074ee9fc3d2af85ae301b4d343"></a>
<div class="api">
  <div class="prototype">
    int
    mqttPing
(<a href="#struct_mqtt" class="ref">Mqtt</a> *mq)
  </div>
  <div class="apiDetail">
<p>Ping the broker.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td>The MQTT mq.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1ga355a87763b04ce0c01c12a7af4e0447e"></a>
<div class="api">
  <div class="prototype">
    int
    mqttPublish
(<a href="#struct_mqtt" class="ref">Mqtt</a> *mq, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *msg, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, int qos, <a href="#group___mqtt_1ga6ebde7995602c324124f0c113db1ac9f" class="ref">MqttWaitFlags</a> waitFlags, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *topic, ...)
  </div>
  <div class="apiDetail">
<p>Publish an application message to the MQTT broker.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td>The <a class="ref" href="#struct_mqtt">Mqtt</a> object.</td>
    <tr><td class="param">msg</td><td>The data to be published.</td>
    <tr><td class="param">size</td><td>The size of application_message in bytes.</td>
    <tr><td class="param">qos</td><td>Quality of service. 0, 1, or 2.</td>
    <tr><td class="param">waitFlags</td><td>Wait flags.</td>
    <tr><td class="param">topic</td><td>Printf style topic string.</td>
    <tr><td class="param">...</td><td>Topic args.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1ga1a6331be244b3afc65f1c39d4b853814"></a>
<div class="api">
  <div class="prototype">
    int
    mqttPublishRetained
(<a href="#struct_mqtt" class="ref">Mqtt</a> *mq, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *msg, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> size, int qos, <a href="#group___mqtt_1ga6ebde7995602c324124f0c113db1ac9f" class="ref">MqttWaitFlags</a> waitFlags, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *topic, ...)
  </div>
  <div class="apiDetail">
<p>Publish a retained message to the MQTT broker.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td>The <a class="ref" href="#struct_mqtt">Mqtt</a> object.</td>
    <tr><td class="param">msg</td><td>The data to be published.</td>
    <tr><td class="param">size</td><td>The size of application_message in bytes.</td>
    <tr><td class="param">qos</td><td>Quality of service. 0, 1, or 2.</td>
    <tr><td class="param">waitFlags</td><td>Wait flags.</td>
    <tr><td class="param">topic</td><td>Printf style topic string.</td>
    <tr><td class="param">...</td><td>Topic args.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1ga5cc5ff6f68ef7b85bbd53e115b3137da"></a>
<div class="api">
  <div class="prototype">
    void
    mqttSetMessageSize
(<a href="#struct_mqtt" class="ref">Mqtt</a> *mq, int size)
  </div>
  <div class="apiDetail">
<p>Set the maximum message size.</p>
    <dl><dt><b>Description</b>:</dt><dd>AWS supports a smaller maximum message size.</dd></dl>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td>The MQTT mq.</td>
    <tr><td class="param">size</td><td>The maximum message size.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1gad8a4213fffbad465d5bd908c27291aa3"></a>
<div class="api">
  <div class="prototype">
    void
    mqttSetWill
(<a href="#struct_mqtt" class="ref">Mqtt</a> *mq, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *topic, <a href="r.html#osdep.html#group___osdep_1ga6e883c0b6ff36e912dc38634137dd68a" class="ref">cvoid</a> *msg, <a href="r.html#osdep.html#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" class="ref">ssize</a> length)
  </div>
  <div class="apiDetail">
<p>Set the will and testament message.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td>The MQTT mq.</td>
    <tr><td class="param">topic</td><td>Will message topic.</td>
    <tr><td class="param">msg</td><td>Message to send.</td>
    <tr><td class="param">length</td><td>Message size.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1gafe7f248d11137df9cd7235c030dc584b"></a>
<div class="api">
  <div class="prototype">
    int
    mqttSubscribe
(<a href="#struct_mqtt" class="ref">Mqtt</a> *mq, <a href="#group___mqtt_1ga2e0e79a879b68600c48e3ecf522c7a4a" class="ref">MqttCallback</a> callback, int maxQos, <a href="#group___mqtt_1ga6ebde7995602c324124f0c113db1ac9f" class="ref">MqttWaitFlags</a> waitFlags, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *topic, ...)
  </div>
  <div class="apiDetail">
<p>Subscribe to a topic.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td><a class="ref" href="#struct_mqtt">Mqtt</a> object.</td>
    <tr><td class="param">callback</td><td>Function to invoke on receipt of messages.</td>
    <tr><td class="param">maxQos</td><td>Maximum quality of service message to receive.</td>
    <tr><td class="param">waitFlags</td><td>Wait flags.</td>
    <tr><td class="param">topic</td><td>Printf style topic string.</td>
    <tr><td class="param">...</td><td>Topic args.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1gac7003ac2fc6d66c544eafd14814e8b2a"></a>
<div class="api">
  <div class="prototype">
    int
    mqttUnsubscribe
(<a href="#struct_mqtt" class="ref">Mqtt</a> *mq, <a href="r.html#osdep.html#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" class="ref">cchar</a> *topic, <a href="#group___mqtt_1ga6ebde7995602c324124f0c113db1ac9f" class="ref">MqttWaitFlags</a> wait)
  </div>
  <div class="apiDetail">
<p>Unsubscribe from a topic.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td>The MQTT mq.</td>
    <tr><td class="param">topic</td><td>The name of the topic to unsubscribe from.</td>
    <tr><td class="param">wait</td><td>Wait flags.</td>
    </table></dd></dl>
    <dl><dt>Returns:</dt><dd>Zero if successful.</dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>

## Functions

<a name="mqtt_8h_1a33611971f4c2de4c3969186d1c17c5c6"></a>
<div class="api">
  <div class="prototype">
    void
    mqttFree
(<a href="#struct_mqtt" class="ref">Mqtt</a> *mq)
  </div>
  <div class="apiDetail">
<p>Free an <a class="ref" href="#struct_mqtt">Mqtt</a> instance.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td><a class="ref" href="#struct_mqtt">Mqtt</a> instance allocated via <a class="ref" href="#group___mqtt_1gaa04c4a1b79a027e7b2fd396a2a60288d">mqttAlloc</a></td>
    </table></dd></dl>
  </div>
</div>

## Typedefs

<a name="group___mqtt_1ga2e0e79a879b68600c48e3ecf522c7a4a"></a>
<div class="api">
  <div class="prototype">
    typedef void(* MqttCallback) (struct MqttRecv *resp).
  </div>
  <div class="apiDetail">
<p>Message receipt callback.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">resp</td><td>Message received structure.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="group___mqtt_1ga146b43e36b77eebee066929179391014"></a>
<div class="api">
  <div class="prototype">
    typedef void(* MqttEventProc) (struct Mqtt *mq, int event).
  </div>
  <div class="apiDetail">
<p>MQTt event callback.</p>
    <dl><dt>Parameters:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">mq</td><td><a class="ref" href="#struct_mqtt">Mqtt</a> object created via <a class="ref" href="#group___mqtt_1gaa04c4a1b79a027e7b2fd396a2a60288d">mqttAlloc</a></td>
    <tr><td class="param">event</td><td>Event type, set to MQTT_EVENT_CONNECT, MQTT_EVENT_DISCONNECT or MQTT_EVENT_STOPPING.</td>
    </table></dd></dl>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>See Also:</dt><dd>
    </dd></dl>
  </div>
</div>
<a name="struct_mqtt"></a>
<div class="api">
  <div class="prototype">Mqtt</div>
  <div class="apiDetail">
<p>MQTT instance.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">RBuf *</td><td><td>buf</td><td>
I/O read buffer.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>connected</td><td>
<a class="ref" href="#struct_mqtt">Mqtt</a> is currently connected flag.
</td>
    <tr><td class="param">int</td><td><td>error</td><td>
<a class="ref" href="#struct_mqtt">Mqtt</a> error flag.
</td>
    <tr><td class="param">char *</td><td><td>errorMsg</td><td>
<a class="ref" href="#struct_mqtt">Mqtt</a> error message.
</td>
    <tr><td class="param"><a class="ref" href="#struct_mqtt_msg">MqttMsg</a></td><td><td>head</td><td>
Head of message queue.
</td>
    <tr><td class="param">char *</td><td><td>id</td><td>
Client ID.
</td>
    <tr><td class="param">int</td><td><td>keepAlive</td><td>
Keep alive duration in seconds.
</td>
    <tr><td class="param">time_t</td><td><td>lastSend</td><td>
Time of last send in seconds.
</td>
    <tr><td class="param">int</td><td><td>mask</td><td>
R library wait event mask.
</td>
    <tr><td class="param">int</td><td><td>maxMessage</td><td>
Maximum message size.
</td>
    <tr><td class="param">int</td><td><td>msgTimeout</td><td>
Message timeout for retransmit.
</td>
    <tr><td class="param">int</td><td><td>nextId</td><td>
Next message ID.
</td>
    <tr><td class="param"><a class="ref" href="#group___mqtt_1ga146b43e36b77eebee066929179391014">MqttEventProc</a></td><td><td>proc</td><td>
Notification event callback <br/>
</td>
    <tr><td class="param">RSocket *</td><td><td>sock</td><td>
Underlying socket transport.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>subscribedApi</td><td>
Reserved.
</td>
    <tr><td class="param">RList *</td><td><td>topics</td><td>
List of subscribed topics.
</td>
    <tr><td class="param">char *</td><td><td>willMsg</td><td>
Will and testament message.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga7d08ccc1e981eb4d5a238641ac4ccfc1" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">ssize</a></td><td><td>willMsgSize</td><td>
Size of will message.
</td>
    <tr><td class="param">char *</td><td><td>willTopic</td><td>
Will and testament topic.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="struct_mqtt_hdr"></a>
<div class="api">
  <div class="prototype">MqttHdr</div>
  <div class="apiDetail">
<p>Fixed header of a packet.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param">int</td><td><td>flags</td><td>
Packet control flags.
</td>
    <tr><td class="param">int</td><td><td>length</td><td>
Size in of the variable portion after fixed header and packet length.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="struct_mqtt_msg"></a>
<div class="api">
  <div class="prototype">MqttMsg</div>
  <div class="apiDetail">
<p><a class="ref" href="#struct_mqtt">Mqtt</a> message.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Internal.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga65f85814a8290f9797005d3b28e7e5fc" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uchar</a> *</td><td><td>buf</td><td>
External message text buffer for large messages.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga65f85814a8290f9797005d3b28e7e5fc" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uchar</a> *</td><td><td>end</td><td>
End of message.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga65f85814a8290f9797005d3b28e7e5fc" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uchar</a> *</td><td><td>endbuf</td><td>
End of message buffer.
</td>
    <tr><td class="param">RFiber *</td><td><td>fiber</td><td>
Message fiber to process the message.
</td>
    <tr><td class="param">int</td><td><td>id</td><td>
Message sequence ID.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga65f85814a8290f9797005d3b28e7e5fc" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uchar</a></td><td><td>inlineBuf[MQTT_INLINE_BUF_SIZE]</td><td>
Inline message text buffer for small message efficiency.
</td>
    <tr><td class="param">struct <a class="ref" href="#struct_mqtt_msg">MqttMsg</a> *</td><td><td>next</td><td>
Next message in the queue.
</td>
    <tr><td class="param">struct <a class="ref" href="#struct_mqtt_msg">MqttMsg</a> *</td><td><td>prev</td><td>
Previous message in the queue.
</td>
    <tr><td class="param">int</td><td><td>qos</td><td>
Message quality of service.
</td>
    <tr><td class="param">time_t</td><td><td>sent</td><td>
Time in seconds the message was sent.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga65f85814a8290f9797005d3b28e7e5fc" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uchar</a> *</td><td><td>start</td><td>
Start of message.
</td>
    <tr><td class="param"><a class="ref" href="#group___mqtt_1ga88ee4d58ea95789b576c9ac5fe017b28">MqttMsgState</a></td><td><td>state</td><td>
Message send status.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>topic</td><td>
Message topic string.
</td>
    <tr><td class="param"><a class="ref" href="#group___mqtt_1gaf26b642b7ef813ac269f70aa245cc796">MqttPacketType</a></td><td><td>type</td><td>
Message packet type.
</td>
    <tr><td class="param"><a class="ref" href="#group___mqtt_1ga6ebde7995602c324124f0c113db1ac9f">MqttWaitFlags</a></td><td><td>wait</td><td>
Message wait for send flags.
</td>
    </table></dd></dl>
  </div>
</div>
<a name="struct_mqtt_recv"></a>
<div class="api">
  <div class="prototype">MqttRecv</div>
  <div class="apiDetail">
<p>A struct used to deserialize/interpret an incoming packet from the broker.</p>
    <dl><dt><b>API</b> Stability:</dt><dd>Evolving.</dd></dl>
    <dl><dt>Fields:</dt><dd>
    <table class="parameters" title="Parameters">
    <tr><td class="param"><a class="ref" href="#group___mqtt_1gab29d281836c45235b5ffb04bcc99890c">MqttConnCode</a></td><td><td>code</td><td>
Connection response code.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga666c2ef2306a723fab78ce6d9098c7fa" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">cuchar</a> *</td><td><td>codes</td><td>
Array of return codes for subscribed topics.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga4f52f6802d742ebd12c628e69a2bd162" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">cchar</a> *</td><td><td>data</td><td>
Published message.
</td>
    <tr><td class="param">int</td><td><td>dataSize</td><td>
Size of data.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga65f85814a8290f9797005d3b28e7e5fc" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uchar</a></td><td><td>dup</td><td>
Set to 0 on first attempt to send packet.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga91ad9478d81a7aaf2593e8d9c3d06a14" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uint</a></td><td><td>hasSession</td><td>
Connection using an existing session.
</td>
    <tr><td class="param">struct <a class="ref" href="#struct_mqtt_hdr">MqttHdr</a></td><td><td>hdr</td><td>
MQTT message fixed header.
</td>
    <tr><td class="param">int</td><td><td>id</td><td>
Message ID.
</td>
    <tr><td class="param">MqttTopic *</td><td><td>matched</td><td>
Matched topic.
</td>
    <tr><td class="param">struct <a class="ref" href="#struct_mqtt">Mqtt</a> *</td><td><td>mq</td><td>
Message queue.
</td>
    <tr><td class="param">int</td><td><td>numCodes</td><td>
Size of codes.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga65f85814a8290f9797005d3b28e7e5fc" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uchar</a></td><td><td>qos</td><td>
Quality of service.
</td>
    <tr><td class="param"><a class="ref" href="#group___osdep_1ga65f85814a8290f9797005d3b28e7e5fc" external="/Users/mob/dev/mqtt/paks/osdep/doc/api/osdep.dtags">uchar</a></td><td><td>retain</td><td>
Message is retained.
</td>
    <tr><td class="param">char *</td><td><td>topic</td><td>
Topic string.
</td>
    </table></dd></dl>
  </div>
</div>

