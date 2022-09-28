# Database Overview

The Ioto agent database (DB) is an ultra high performance NoSQL database for embedded applications. It supports fast, in-memory, local data access and optional transparent synchronization of data to and from the cloud. It is modeled after [AWS DynamoDB](https://aws.amazon.com/dynamodb/) and the [OneTable](https://doc.onetable.io/) access library.

The Ioto database stores items as JSON documents of arbitrary complexity. Data items are organized into entity tables via an entity schema that specifies data fields, types, attributes and validations.

DB uses Red/black binary search indexes and has controllable local persistency to disk and to the cloud on a per-table basis.

## Database Features

* High performance NoSQL management document database.
* JSON document items with flexible query API.
* Efficient import and export of database items.
* Red/black binary search indexes.
* Simple, non-waiting API.
* Controllable persistency with change triggers.
* Transparent bi-directional data synchronization with the cloud.
* Unified data schema between device and cloud databases.
* Based on AWS DynamoDB and DynamoDB OneTable.


### Default Database

The Ioto agent will open a default database for general purpose use. This database is loaded from the file "state.db" using the schema file "schema.json5". The filename and schema file can be modified via the **config.json5** properties under the **database** key. Most users would typically use this database and would not need to open another database instance.

The database instance reference is stored in the global **agent** object in the **db** property.

```c
agent->db
```

## JSON documents

The database stores items as JSON documents that are a nested collection of properties to arbitrary depth. As JSON is one of the most prevalent data exchange formats, storing data in JSON greatly reduces exchange costs.

Ioto includes a powerful JSON query engine that you can use to query and manipulate JSON documents.

## Data Types

All data types are stored internally as strings to optimize data transfer. Return values from database APIs typically return static strings that you do not need to free (const char*). To convert numbers, use the safe runtime conversion routines: stoi() and stoiradix().


## API Quick Tour

If you do choose to open another datatabase rather than use the default database, use *dbOpen*:

```c
Db *db = dbOpen("./data.db", "./schema.json5");
```

The dbOpen API will open the named database and entity schema.  Data is loaded from the database file and stored in-memory. The schema file describes the application entities, data fields and indexes. Read more about [Schemas](../schemas/).


### Creating an Item

To create an item in an opened database, use *dbCreate*:

```c
DbItem *item = dbCreate(agent->db, "Fault", DB_PROPS(
    "timestamp", rGetTime(),
    "source", "bluetooth",
    "severity", "warn",
    "subject", "Failed to sync",
), NULL);
```

This creates an item in the database and returns the item. The field name/value pairs are provided using the DB_PROPS macro.

Database items are documents that store item properties in JSON format using JSON types (Objects, arrays, strings, numbers, booleans and dates). Properties can be nested to arbitrary depth.

Ioto includes a powerful JSON query engine that you can use to query and manipulate JSON documents.

### Retrieving Fields

To retrieve a field from an item, use *dbGetField*:

```c
const char *id = dbGetField(item, "id");
```

This will retrieve the "id" field from the previously read item.

You can also read nested properties from within the item's JSON document.

```c
cchar *errors = dbGetField(item, "interfaces.bluetooth.if1.errors");
```

### Reading Items

To read an item from the database, supply the required key and call *dbGet*. The key can be the actual item key or it can be a set of fields that are used by the schema to create the key. See [Value Templates](../schemas/#value-templates) for details.

```c
DbItem *item = dbGet(db, "Fault", DB_PROPS("id", id), NULL);
```

When debugging, you can use the utility routine *dbPrintItem* to print the contents of an item:

```c
dbPrintItem(item);
```

### Finding Items

To retrieve a set of matching items, use *dbFind*:

```c
DbGrid *items = dbFind(db, "Fault", DB_PROPS("severity", "critcal"), 0);
```

You can provide one or more properties to be used as a filter. Items will be returned that match all supplied properties.

To iterate over the item list, use *ITERATE_ITEMS*:

```c
DbItem *item;
int    n;
for (ITERATE_ITEMS(items, item, n)) {
    dbPrintItem(item);
}
dbFreeGrid(items);
```

You can also use DB_JSON instead of DB_PROPS to provide query parameters as json:

```c
items = dbFind(db, "FAULT", DB_JSON("{severity:'critical'}"), 0);
```

The JSON can be provided as [JSON/5](../user/configuration/) which allows single quotes around string values.

### Getting and Setting Fields

To get a single field from an item, use *dbGet*:

```c
cchar *severity = dbGet(db, "Fault", "severity", DB_PROPS("id", id), NULL);
```

To set a single value in an item, use *dbSet*:

```c
DbItem *item = dbSet(db, "Fault", "severity", "info", DB_PROPS("id", id), NULL);
```

### Updating Items

To update multiple fields in an item, use *dbUpdate*:

```c
item = dbUpdate(db, "Fault", DB_PROPS("id", id, "severity", "info", "subject": "Fault resolved"), NULL);
```

### Removing Items

To remove an item, use *dbRemove*:

```c
dbRemove(db, "Fault", DB_PROPS("id", id), NULL);
```

### Debugging

Ioto provides a few routines that help with debugging DB API usage.

* dbPrint
* dbPrintItem
* dbPrintProperties
* jsonToString


## API Reference

The full API is specified here:

[DB API](../../ref/api/db/)
