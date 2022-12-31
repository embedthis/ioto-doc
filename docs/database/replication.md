# Database Replication

The Ioto agent database (DB) supports optional transparent synchronization of data to and from the cloud.

The Ioto database is designed to be compatible with AWS DynamoDB so that it can easily replicate structured device data to the cloud. It is modeled after [AWS DynamoDB](https://aws.amazon.com/dynamodb/) and the [OneTable](https://doc.onetable.io/) access library.

## Database Replication Features

* Transparent replication.
* Bi-directional synchronization to and from the cloud.
* Per-table synchronization control.
* Resilient catch-up should the device or cloud go offline.
* Database triggers for notification when changes arrive.

## Replication Control

Ioto can synchronize changes to the cloud on a per table basis. The schema **Control** property defines how to synchronize each model. You can "enable" a model to be stored in the cloud, in the device or in both places. You can also control the replication direction flow of changes.

For each Model in the schema, a property under **control** specifies where the model resides and how it should be synchronized.

For example:

```c
{
    control: {
        Status:  { enable: 'cloud' },
        Fault:   { sync: 'up' },
    },  
}
```

In this example: The **Status** model is only enabled (exists) in the cloud. The **Fault** model exists in both the cloud and on the device and synchronization occurs only from the device "up" to the cloud.

A model's **enable** property can be set to "cloud", "device" or "both" to define where the model can exist. The default is "both".

A model's **sync** property can be set to "up", "down", "both" or "none" to define the directional flow of replication updates. A value of "up" means replicate changes from the device "up" to the cloud. A value of "down" means replicate changes only from the cloud "down" to the device. The default is "none".

## Replication Best Practices

Synchronization of model items is done on a per-item basis and not field by field. This means that a change of one field by the cloud can overwrite a change of another field on the device. For this reason, it is best to have the **sync** direction be either "up" or "down".

You should only select "both" as your **sync** direction for models that can be updated by both cloud and device at the same time without loss of data or conflict.

## Optimizations

To optimize network traffic, database changes will be sent up to the cloud in batches. These are controlled by the **database.syncDelay** and the **database.syncLimit** properties. The **syncDelay** is a delay before sending change batches to the cloud. The **syncLimit** is a size limit of the change set before sending a change batch. These are set to 5 seconds and 10K by default.

You can force a sync save at any point by calling **ioSync**.


## References

[OneTable Schema Spec](https://github.com/sensedeep/dynamodb-onetable/blob/main/doc/schema-1.1.0.md).
