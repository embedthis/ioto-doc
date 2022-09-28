# Database Schemas

Ioto database schemas define how items will be stored in the database and in the cloud. A schema specifies the application models (entities), entity fields, indexes and other data access and replication parameters.

Schemas look like this:

```javascript
const DeviceSchema = {
    format: 'onetable:1.1.0',
    version: '0.0.1',
    indexes: {
        primary: { hash: 'pk', sort: 'sk' },
    },
    control: {
        /*
            Where the model is enabled (cloud, device, both. Default is both)
            Synchronization direction. Up to the cloud, down or both. Default is none.
        */
        Status:  { enable: 'cloud' },
        Fault:   { sync: 'up' },
    },    
    models: {
        Status: {
            pk:             { type: 'string', value: 'status#' },
            sk:             { type: 'string', value: 'status#' },
            parameters:     { type: 'object' },
            version:        { type: 'string' },
            updated:        { type: 'date' },
        },
        Fault: {
            pk:             { type: 'string', value: 'device#${deviceId}' },
            sk:             { type: 'string', value: 'fault#${id}' },
            deviceId:       { type: 'string', required: true },
            id:             { type: 'string', generate: 'ulid' },
            timestamp:      { type: 'date', required: true },
            source:         { type: 'string', required: true },
            severity:       { type: 'string', required: true, enum: ['info', 'warn', 'error', 'critical', 'fatal'] },
            subject:        { type: 'string', required: true },
            message:        { type: 'string', required: true },
        },

    },
    params: {
        'isoDates': true,
        'timestamps': true,
    },
}
```


## Schema Properties

The valid properties of the **schema** object are:

| Property | Type | Description |
| -------- | :--: | ----------- |
| format | `string` | Reserved. Must be set to 'onetable:1.1.0' |
| indexes | `object` | Hash of indexes used by the table. |
| control | `object` | Hash of model entities describing where the model should be and how it should be replicated. |
| models | `object` | Hash of model entities describing the model keys, indexes and attributes. |
| params | `object` | Hash of properties controlling how data is stored in the table. |
| version | `string` | A SemVer compatible version string. |

The **format** property specifies the schema format version and must be set to **onetable:1.1.0**.

The **indexes** property specifies the key structure for the primary, local and secondary indexes.

The **models** property contains one or more models with attribute field descriptions. The models collections define the attribute names, types, mappings, validations and other properties.

The **params** property defines additional parameters for table data formats.

The **version** property defines a version for your DynamoDB model design. It must be a [SemVer](https://semver.org/) compatible version string. The version string is used by tools and consumers of the schema to understand compatibility constraints for the schema and stored data.


## Schema Models

The schema defines a model for each application entity. For example, consider a music example:

```javascript
{
    album: {
        pk:     { type: 'string', value: '${_type}:${name}' },
        sk:     { type: 'string', value: '${_type}:' },
        name:   { type: 'string', required: true },
        songs:  { type: 'number' },
    },
    artist: {
        pk:     { type: 'string', value: '${_type}:${name}' },
        sk:     { type: 'string', value: '${_type}:' },
        name:   { type: 'string', required: true },
        address: {
            type: Object, schema: {
                street: { type: 'string' },
                city: { type: 'string' },
                zip: { type: 'string' },
            },
        },
    }
}
```

For each model, all the entity fields are defined by specifying the field type, validations and other operational characteristics (uniqueness, IDs and templates).

The valid types are: 'array', 'binary', 'boolean', 'date', 'number', 'object', and 'string'.

Ioto will ensure that values are of the correct type before they are written to the database. Where possible, values will be cast to their correct types. For example: 'false' will be cast to false for Boolean types and 1000 will be cast to '1000' for String types.

The database will automatically add a model type via the **_type** attribute to each model. This is set to the name of the model. You can modify this via the **params.typeField** setting.


## Value Templates

The value of a field can be computed based on the value of other fields and a formatting "value template". This is useful for decoupling your key structure from your entity fields.

The value template is like a Javascript string literal where the value of fields are expressed in a "${field}" format. At runtime, the field references are expanded with the item's value for the named field.

In the example above, the primary key "pk" is calculated from the entity type **_type** and the **name** field by using the value template: **${_type}:${name}**.


## Nested Schemas

For object attributes, you can define a nested schema for the object properties, as in the example above (repeated below).

A nested schema uses the **schema** property to define a nested map of attributes. Schemas can be nested to an arbitrary depth.

```javascript
address: {
    type: Object, schema: {
        street: { type: 'string' },
        city: { type: 'string' },
        zip: { type: 'string' }
    }
}
```


## Indexes

DB uses red-black balanced binary trees for indexes to provided ordered, rapid indexing of data. Currently, the database only supports a single primary index, but in the future, multiple indexes will be supported.


## References

[OneTable Schema Spec](https://github.com/sensedeep/dynamodb-onetable/blob/main/doc/schema-1.1.0.md).
