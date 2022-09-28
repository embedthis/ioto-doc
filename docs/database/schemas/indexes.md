# Database Indexes

Schema indexes are defined using the **schema.indexes** property.

The **indexes** property can contain one or more indexes and must contain the **primary** key. Additional indexes will be treated as secondary Indexes.

!!!Note
    Ioto currently only supports the primary index.

```javascript
const MySchema = {
    indexes: {
        primary: {
            hash: 'pk',         //  Schema property name of the hash key
            sort: 'sk',         //  Schema property name of the sort key
        },
        //  Zero or more global secondary or local secondary indexes
        gs1: {
            hash: 'gs1pk',
            sort: 'gs1sk',
        }
    }
}
```
