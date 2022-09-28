The following attribute properties are supported:

| Property | Type | Description |
| -------- | :--: | ----------- |
| default | `string` | Default value to use when creating model items or when reading items without a value.|
| generate | `string|boolean` | Set to 'ulid' or 'uuid' to automatically create a new ID value for the attribute when creating new items.|
| isoDates | `boolean` | Set to true to store dates as Javascript ISO strings vs epoch numerics. If unset, the field will use the table default value for isoDates. Default to the schema params value. |
| nulls | `boolean` | Set to true to store null values or false to remove attributes set to null. Default false. |
| required | `boolean` | Set to true if the attribute is required. |
| schema | `object` | Nested schema. |
| type | `Type or string` | Field data type. |
| value | `string` | Template to derive the value of the attribute. These attributes are "hidden" by default. |


If the **default** property defines the default value for an attribute. If no value is provided for the attribute when creating a new item, the **default** value will be used.

If the **isoDates** property is defined and not-null, it will override the table isoDates value. Set to true to store the field date value as an ISO date string. Set to false to store the date as a Unix epoch date number.

The **schema** property permits nested field definitions. The parent property must be an Object as the type of items in arrays are defined using the **items** property.

The **type** properties defines the attribute data type. Valid types include: String, Number, Boolean, Date, Object, Null, Array, Buffer (or Binary) and Set. The object type is mapped to a **map**, the array type is mapped to a **list**. Dates are stored as Unix numeric epoch date stamps unless the **isoDates** parameter is true, in which case the dates are store as ISO date strings. Binary data is supplied via **buffer** types and is stored as base64 strings in DynamoDB.

The **value** property defines a literal string template that is used to compute the attribute value. This is useful for computing key values from other properties, creating compound (composite) sort keys or for packing fields into a single DynamoDB attribute when using GSIs.

String templates are similar to JavaScript string templates. The template string may contain **${name}** references to other fields defined in the entity model. If any of the variable references are undefined when an API is called, the computed field value will be undefined and the attribute will be omitted from the operation.

If you call **find** or any query API and do not provide all the properties needed to resolve the complete value template. i.e. some of the ${var} references are unresolved, OneTable will take the resolved leading portion and create a **begins with** key condition for that portion of the value template.
