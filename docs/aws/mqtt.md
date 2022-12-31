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


## MQTT Configuration

The Ioto MQTT connection is opened automatically based on the **config/config.json5** configuration settings:

```javascript
mqtt: {
    cert: 'certs/mqtt.crt',
    key: 'certs/mqtt.key',
    ca: 'certs/root.crt',
    client: 'my-device-client-id',
    endpoint: 'https://',
    port: 1883
}
```

These properties describe the MQTT endpoint, port, certificates and keys to use to establish communications with an MQTT broker.

If using AWS Iot as your broker, Ioto can automatically configure the MQTT connected based on the properties below:

```javascript
mqtt: {
    cert: 'auto',
    key: 'auto',
    client: 'auto',
    endpoint: 'auto',
    port: 443,
    alpn: 'x-amzn-mqtt-ca',
    ca: 'certs/aws.crt',
}
```

See [MQTT Configuration Properties](../../user/properties/#mqtt) for more details.

## References

[MQTT 3.1.1 spec](https://docs.oasis-open.org/mqtt/mqtt/v3.1.1/os/mqtt-v3.1.1-os.html)
