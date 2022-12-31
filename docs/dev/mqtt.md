# MQTT

MQTT is a messaging protocol for (IoT). It is designed as a lightweight publish/subscribe messaging transport that is ideal for connecting remote devices with a small code footprint and minimal network bandwidth.

The Ioto MQTT support is an efficient MQTT client that is ideal for connecting to the cloud.

## MQTT Features

* MQTT 3.1.1 support
* Connect, publish, subscribe, ping and disconnect messages.
* TLS encryption with ALPN over port 443 to get through firewalls.
* Message quality of service for reliable delivery.
* Retained messages.
* High message throughput with exceptionally low overhead.
* Wait for delivery or acknowledgement options.
* Resilient reconnect on network interruptions.
* Automatic configuration after cloud provisioning.
* Parallelism via fiber coroutines. No ugly callbacks or complex threads.
* Tiny footprint of 8K code.


## API Quick Tour

Ioto will typically connect to the cloud automatically and make available the connection endpoint via:

```c
ioto->mqtt
```

This means you do not have to explicitly connect to the AWS IoT Core MQTT broker.

However, you can connect to any MQTT endpoint at any time via *mqttConnect* if you wish.

```c
Mqtt *mq = mqttAlloc(sock, "my-client-id", onEvents);

mqttConnect(Mqtt *mq, cchar *username, cchar *password, int flags, MqttWaitFlags waitFlags);
```

In this case, you create and connect the Socket "sock" using the Safe runtime socket APIs before connecting with MQTT.

## Publishing Messages

Publishing messages is done via the *mqttPublish* API:

```c
mqttPublish(ioto->mqtt, "Initialized", 0, MQTT_QOS_1, MQTT_WAIT_NONE, "myDevice/init");
```

This will publish an "initialized" message with quality of service (1) which means "send at least once". The message will be published on the "myDevice/init" topic and this API call will not block for sending or acknowledgement of the message. The sending will happen in the background with any required re-transmissions.

## Subscribing for Messages

You can subscribe to receive incoming messages on a topic via the *mqttSubscribe* API:

```c
mqttSubscribe(ioto->mqtt, incoming, MQTT_QOS_1, MQTT_WAIT_NONE, "myDevice/change");
```

When messages are received on the "myDevice/change" topic, the function `incoming` will be invoked with the message.

The incoming callback will be passed the message response packet.

```c
static void incoming(MqttResp *rp)
{
    printf(stdout, "Received from topic %s: %s", rp->topic, rp->data);
}
```

The message topic will be a null terminated string in **rp->topic**.

The message data will be passed in **rp->data** and the size of the data will be defined in **rp->dataSize**. The data will always be null terminated which is useful when passing message strings.

## Unsubscribing

To unsubscribe from a topic, use the *mqttUnsubscribe* API:

```c
mqttUnsubscribe(ioto->mqtt, "myDevice/unsub", MQTT_WAIT_NONE);
```

## Waiting for Completion

The MQTT APIs can take a MQTT_WAIT argument that indicates if the API call should wait or not for completion.

With the MQTT_WAIT_NONE flag value, the API call will not wait and transmission will happen in the background. The MQTT_WAIT_SENT flag will cause the API to wait until the message has been fully sent from the client, i.e. it has been fully transmitted over the network. The MQTT_WAIT_ACK will cause the API to wait until an acknowledgement message has been received from the peer.

!!!Note
    Don't confuse this with MQTT quality of service levels which define whether a message is reliably delivered or not. In contrast, the WAIT flag determines how the API itself should block and wait.

## Parallelism

The MQTT API uses the Ioto underlying Fiber Coroutine support to implement parallelism. When an MQTT call needs to wait for an acknowledgement or for network I/O, it will resume other fibers in the application transparently. Ioto is single threaded, but can run any number of fibers simultaneously without needing any locks. See [Fiber Coroutines](./../fiber/) for more details.

## Responding to Events

When Ioto connects to AWS IoT core, it will issue a "mqtt:connect" event and when disconnected it will issue a "mqtt:disconnect" event.

These events can be monitored by calling the **rWatch** API. For example:

```c
static void disconnected(cvoid *data, cvoid *arg)
{
    printf("MQTT disconnected\n");
}

rWatch("mqtt:disconnect", disconnected, NULL);
```

The `data` argument is the value provided as the last parameter to rWatch. The `arg` argument is the argument provided when rSignal was called by Ioto, which in this case will be set to NUL.

## Other Useful Routines

Use **mqttIsConnected** to test if the MQTT handle is currently connected to the MQTT broker.
## References

[MQTT 3.1.1 spec](https://docs.oasis-open.org/mqtt/mqtt/v3.1.1/os/mqtt-v3.1.1-os.html)
