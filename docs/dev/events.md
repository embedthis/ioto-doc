# Ioto Events

Ioto will signal important events and conditions using the Ioto runtime signal mechanism.

You can watch for certain conditions to happen and be notified when they do. For example, it can be useful to be notified when the network connects or disconnects to the cloud.

You can also use the signal mechanism to create your own conditions on which to watch and signal.

To watch for a condition:

```c
rWatch("mqtt:connect", fn, data);
```


This will invoke fn() when the condition occurs and will provide the watch data and the signal argument.

```c
void fn(void *data, void *arg) {
    //  Do something
}
```

## Event List

The list of triggered events:

Name|Description|Arguments
-|-|-
app:ready | When the Ioto app is fully initialized. | None 
cloud:ready | When cloud services are initialized. | None
db:change | When a database table value has changed. | A SyncChange structure with model, item, params and command that caused the change.
db:sync | When the database changes due to receiving a cloud sync update | The update message received from the cloud with the update.
device:keys | Triggered when AWS access credentials are rotated locally | None
device:provisioned | When the device is claimed by a device cloud and provisioned for management | None
mqtt:connect | When the MQTT connection to the cloud is established | None
mqtt:disconnect | When the MQTT connection to the cloud is lost | None


To manually signal a condition, call:

```c
rSignal("mqtt:connect", arg);
```

To disable watching, call:

```c
rWatchOff("mqtt:connect", fn, data);
```

This will disable the watch registered with exactly the same arguments.
