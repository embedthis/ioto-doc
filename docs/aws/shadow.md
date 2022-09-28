# Shadow State

The AWS IoT Device Shadow service stores device state in objects called "shadows".

Shadows are capable of handling intermittently connected devices. When a device is not connected, updates to the shadow state in the cloud are stored until the device is next connected. Then, once connected, the changes are sent to the device for action.

Ioto makes it easy to use shadow state by automatically connecting to the AWS IoT Shadow service and by providing an easy get/set API.

## Features

* Local copy of AWS Iot Device Shadow in JSON tree
* Convenience API to get / set shadow state properties
* Controllable state synchronization with AWS IoT Shadows
* Local persistency of shadow state.

## Overview

The Ioto agent automatically initializes an AWS Shadow state connection and subscribes to the required MQTT topics for data synchronization.

When shadows updates are received from the cloud, the agent saves these in a local shadow state file called "shadow.json5". When the agent reboots, the local shadow state is read to be immediately available while the AWS cloud shadows are consulted for any updates.

## API Quick Tour

To get the value of a property from the device shadow state, call *ioGetShadow*.

```c
data = ioGetShadow("temperature", 0);
data = ioGetShadow("temperature", "101");
```

The last argument can be a default value to return if the property is not found

To set the value of a property and pass that update to AWS IoT Shadows, call *ioSetShadow*.

```c
ioSetShadow("temperature", "99", 0);
```

This will update the value and perform a lazy save to persistent store and publish to the cloud.

To force an immediate save and publish, set the last argument to 1.

```c
ioSetShadow("temperature", "99", 1);
```

Alternatively, call *ioSaveShadow*:

```c
ioSaveShadow();
```
