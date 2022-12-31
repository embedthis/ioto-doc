# Database Synchronization

Ioto takes the pain out of exporting device data into the cloud by automatically and transparently synchronizing data between your devices and a cloud device database.

Ioto will synchronize data from the device cloud DynamoDB database in your AWS account and the embedded database in your devices. This is similar to AWS Global Tables, but instead of between AWS regions, it is between an AWS region and a device.

The database synchronization is full-duplex in that data can be modified in the device or in the cloud and it will be replicated to the other side. The synchronization is controllable on a per-table basis.

## Databases

The Ioto service creates a DynamoDB table called *ioto* in each device cloud. A device cloud is created by the Embedthis Builder for your account to host your device data in an AWS account and region of your choosing. The *ioto* database table contains the device data for all connected devices in that cloud.

The Ioto device agent creates a local database to hold structured data for the device.

These two databases are then connected and changes are replicated between device and cloud to keep them in sync.

## Why Synchronization

The Ioto Database Synchronization service dramatically eases the task of centralizing the data management of a pool of devices. Each device can store data locally and it will be transparently, efficiently and automatically replicated to the cloud. Once in the cloud, it can be easily interrogated and queried for analytics, operational control and intelligence.


## How It Works

To replicate cloud-side data, the Ioto service uses DynamoDB streams to capture modifications made to the table data. The stream is connected to an Ioto service Lambda which posts MQTT messages to a special topic that is only known to the device.

The Ioto device agent subscribes to this topic and receives MQTT messages containing the changed data. The agent then applies those changes to the local database.

In reverse, the Ioto agent registers a database trigger that is called whenever local changes are made to the device's database. When the trigger is invoked, the agent sends an MQTT message with the changes to the Ioto service that updates the cloud database.

When the device is rebooted, it sends a "sync" message to the Ioto service to retrieve all changes made to the cloud database since the last change notification was received from the cloud. In this way, changes made while the device is offline are not lost.


## Controlling Replication

The Ioto DynamoDB table (ioto) and the Ioto agent database both use a [OneTable](https://doc.onetable.io/) schema that defines how items are stored, what indexes are used and the application models (entities). For example:

The *control* property of the schema defines which tables are replicated and in which direction.

For each model (entity) in the schema, you can create an entry in the *control* property that specifies if items of that model should exist and how they should be replicated.

The *enable* property can be set to 'cloud' if the items of that type should exist in the cloud database, set to 'device' if the items should exist in the device and 'both' if they should exist in both databases. The default is 'both'.

The *sync* property defines the synchronization direction. Set to 'up' to indicate the device data should be synchronized from the device up to the cloud. Set to 'down' to indicate the cloud data should be replicated down to the device and set to both to replicate in both directions.


```javascript
const DeviceSchema = {
    control: {
        /*
            Where the model is enabled (cloud, device, both. Default is both)
            Synchronization direction. Up to the cloud, down or both. Default is none.
        */
        Status:  { enable: 'cloud' },
        Fault:   { sync: 'up' },
    },    
    models: { },
}
```

To design for effective synchronization, it is best to have the "sync" direction be either "up" or "down". You should only select "both" for models that are not transactionally critical as changes from the cloud or device may overwrite changes coming from the other directions.

Synchronization is done on a per-item basis and not field by field.
