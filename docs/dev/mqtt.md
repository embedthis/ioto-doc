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
agent->mqtt
```

You can also connect to any MQTT endpoint at any time via *mqttConnect*.

```c
Mqtt *mq = mqttAlloc(sock, "my-client-id", NULL);

mqttConnect(Mqtt *mq, cchar *username, cchar *password, int flags, MqttWaitFlags waitFlags);
```

In this case, you create and connect the Socket "sock" using the Safe runtime socket APIs before connecting with MQTT.

## Publishing Messages

Publishing messages is done via the *mqttPublish* API:

```c
mqttPublish(agent->mqtt, "Initialized", 0, MQTT_QOS_1, MQTT_WAIT_NONE, "myDevice/init");
```

This will publish an "initialized" message with quality of service (1) which means send at most once. The message will be published on the "myDevice/init" topic and will not wait for sending or acknowledgement of the message.

## Subscribing for Messages

You can subscribe to receive incoming messages on a topic via the *mqttSubscribe* API:

```c
mqttSubscribe(agent->mqtt, incoming, MQTT_QOS_1, MQTT_WAIT_NONE, "myDevice/change");
```

When messages are received on the "myDevice/change" topic, the function `incoming` will be invoked with the message.

The incoming callback will be passed the message packet.

```c
static void incoming(MqttResp *rp)
{
    rtrace("shadow", "Received from topic %s: %s", rp->topic, rp->data);
}
```

## Unsubscribing

To unsubscribe from a topic, use the *mqttUnsubscribe* API:

```c
mqttUnsubscribe(agent->mqtt, "myDevice/unsub", MQTT_WAIT_NONE);
```

## Waiting for Completion

The MQTT APIs can take a MQTT_WAIT argument that indicates if the API should wait or not for completion. The MQTT_WAIT_NONE value will not wait. The MQTT_WAIT_SENT flag will cause the API to wait until the message has been fully sent from the client. The MQTT_WAIT_ACK will cause the API to wait until an acknowledgement message has been received from the peer.

!!!Note
    Don't confuse this with MQTT quality of service levels which define whether a message is reliably delivered or not. Whereas, the WAIT flag determines how the API itself should block and wait.

## Parallelism

The MQTT API uses the Ioto underlying Fiber Coroutine support to implement parallelism. When an MQTT call needs to wait for an acknowledgement or for network I/O, it will resume other fibers in the application transparently. Ioto is single threaded, but can run any number of fibers simultaneously without needing any locks. See [Fiber Coroutines](./../fiber/) for more details.

## References

[MQTT 3.1.1 spec](https://docs.oasis-open.org/mqtt/mqtt/v3.1.1/os/mqtt-v3.1.1-os.html)
