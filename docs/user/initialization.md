# Initialization

Ioto can be compiled to include or exclude support for various services.

The optional services are:

Name|Description|
-|-
cloud | All AWS Cloud integration
serialize | Serialization during manufacturer
logs | Log file capture to AWS CloudWatch
database | Local embedded Database
web | HTTP Web server
mqtt | MQTT protocol used for cloud communications
shadow | AWS IoT Shadow state support
sync | Database sync to the cloud
url | Url Http Client

If a component is compiled, you can also selectively enable or disable support at runtime via the  **services** property in the **config.json** file.

When Ioto starts, it will enable services that are compiled in and are enabled in the **services** property.

```javascript
{
    services: {
        cloud: {
            keys: true,
            logs: true,
            provision: true,
            serialize: 'auto',
            shadow: true,
            sync: true,
        },
        database: true,
        mqtt: true,
        url: true,
        web: true,
    }
}
```

## Cloud Services

The **services.cloud** property can individually enable or disable specific cloud services. It can also be set to **false** to disable all cloud services.

## Startup Order

When Ioto starts, it will configure services (if enabled) in a specific order. If services are not enabled during compilation or are disabled in the config.json file, the step will be skipped.

The order is:

1. Serialize the device.
2. Start the embedded web server.
3. Register with the build service (one time).
4. Provision with AWS IoT things and keys (one time).
5. Retrieve AWS IAM credentials.
6. Initialize MQTT communications with the cloud.
7. Start database synchronization and retrieve changes while powered off.
8. Connect with AWS IoT shadow state and retrieve state update if required.
9. Initialize log export to AWS CloudWatch Logs.

Please read the [Provisioning for the Cloud](../aws/provisioning/) for details about the device provisioning process.

## Serialization

For secure device operation it is essential that each device can be uniquely identified. Most devices are created with a serial number that may include the product code, manufacturing batch number and individual serial number. However, while this serial number may be unique, it can be easily guessed because serial numbers typically follow a predictable format. This can present a security vulnerability when claiming device by serial number.

Instead of using the existing serial number, Ioto uses a random, unique claim ID (UCI) that is a random, 80-bit number that is not guessable and does not follow a predictable pattern. When paired with the product ID, it is used as a unique claim ticket for users to claim devices for management. For example:

```bash
JT08FFQXWQ
```

The 10 letter UCI results in over 1 quadrillion possible numbers (32^10).

During manufacturer, each device should be given a UCI that identifies the device to the Ioto service and is used by the user to "claim" the device after purchase or installation.

The UCI should be printed on the device label and be clearly identified as the Claim ID. The Claim ID can also be represented as a QR code if you choose to develop a mobile app for users to claim devices. (See Claiming below).

The UCI should be saved in the **device.json** configuration file in the **claim** property.


```json
{
    "claim": "7423FFA8DT",
    "product": "01GAQD45HGSN90AAF5QFVEBVTS",
    "test": 0
}
```

## Device Registration

Before a device can be managed, it must be registered and then be "claimed" by a user once purchased.

Registration is a one-time step that happens only when the device is first powered on.

When the device boots during system test, the Ioto agent will connect to the Embedthis Builder service to register. The agent will send the contents of the device.json over an encrypted TLS connection to the Embedthis Builder service.

The **device.json** file contains the UCI device identifier and the product registration token. You can get the product device registration token from the Builder Product/Modify panel.

Once Ioto registers the device, the Ioto agent awaits for a user to claim the device.

## Device Claiming

When a user purchases or installs a device with the Ioto agent, they can "claim" the device to manage from the cloud. While waiting, cloud services are pending, but other Ioto services can run, including the embedded web server for local management (if enabled).

The user claims their device using the unique claim ID (UCI) printed on the device label. This claim request is sent to the Builder service that provisions the necessary X.509 certificates and AWS IoT resources required to support and manage the device. These are then returned to the Ioto Agent who saves them in the **provision.json5** config file.


## Device Connection

When the device is powered on, but unclaimed, the Ioto agent will regularly check with the Ioto service to see if it has been claimed. In this state, it is "unmanaged" by the cloud and awaiting orders.

The Ioto agent will check the Ioto service immediately on power-on, and then every 5 seconds with an exponentially increasing delay up to a defined limit. If the device is rebooted, the polling process recommences.

Once claimed, when the agent next polls the Ioto service, it will receive management instructions and be redirected to the relevant AWS device cloud for ongoing management and the provisioning process is complete.

## Firewall Ports

If the embedded web server is enabled, Ioto will listen on the interfaces and ports specified in the **listens** property in the **web.json5** config file.

If cloud services are enabled, Ioto will communicate out on port 443 using HTTPS to the Embedthis Builder cloud at **admin.embedthis.com**. It will also connect over port 443 to **amazonaws.com** using MQTT and HTTP protocols.
