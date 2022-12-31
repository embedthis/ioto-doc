# JSON

The Ioto JSON parser is a high performance JSON parser, serializer and query engine.

It parses JSON text into an in-memory tree for efficient examination, storage and export.

## Json Features

* JSON and JSON5 parser
* Stores parsed JSON as an in-memory tree
* Fast, flexible query engine mange and navigate the JSON tree
* Simple get/set API to retrieve and update JSON values.
* APIs to walk, iterate and navigate a parsed tree
* Overlay and blend JSON trees
* Supports JSON/5 with extensions
* Serialize in strict or JSON/5 formats
* Persist to flash/disk.

## API Quick Tour

To parse a JSON string, call the *jsonParse* API:

```c
Json *json = jsonParse("{Weather: 'Sunny'}", 0);
```

This parses the given JSON text and returns a Json instance which represents the in-memory parsed JSON tree.

!!!Note
    You can provide data to parse as either JSON or JSON/5 format strings. JSON/5 which permits a more relaxed JSON format where property keys may omit quotes and single quotes can be used on values. Also, values can be multi-line strings and may use back-ticks instead of quotes to delimit the strings. Finally, the last item in an object map may be terminated with a trailing comma.

### Getting Values

To query a value from the JSON tree, use *jsonGet*:

```c
cchar *value = jsonGet(json, 0, "weather", NULL);
```

This will retrieve the weather value (Sunny) as a static string that does not need freeing.

When calling jsonGet, you can provide keys with dots:

```c
cchar *value = jsonGet(json, 0, "address.city", NULL);
```

and you can provide a default value to be returned as the last parameter if the property is not defined in the JSON tree.

```c
cchar *value = jsonGet(json, 0, "weather", "rainy");
```

The second argument (0) in these calls defines the starting point from which to search. This is a numeric node ID. Don't worry about it for now, but you'll appreciate it later when searching deeper in a JSON tree.

You can use the *jsonGetInt* and *jsonGetBool* APIs to return data as an integer or boolean data type.

### Setting Values

To update or set a value, use the *jsonSet* API:

```c
jsonSet(json, 0, "weather", "sunny", 0);
```

This will update the value of the given property in-memory. Again, you can use dotted key properties of any depth.


### Data Types

The last parameter to **jsonSet** can be used to specify a data type for the value. In general, the Ioto JSON API can sleuth the data type for you. But as data values are supplied as strings, you may need to specify a type if you want the value to be stored as a number.

The valid types are: JSON_OBJECT, JSON_ARRAY, JSON_STRING and JSON_PRIMITIVE. The primitives are false, true, null, undefined and numbers.

To remove a property, use *jsonRemove*:

```c
jsonRemove(json, 0, "weather");
```

When you are finished with a JSON tree, remember to free it with *jsonFree* to prevent memory leaks.

```c
jsonFree(json)
```

This will release allocated memory.

## Serialization

To save your in-memory tree as a string, use *jsonToString*:

```c
char *string = jsonToString(json, 0, 0, 0);
```

This will save the in-memory tree as JSON/5.

To save in strict JSON, use:

```c
char *string = jsonToString(json, 0, 0, JSON_STRICT);
```

To save a sub-set of the tree, specify the root node to export:

```c
char *string = jsonToString(json, 0, "address", JSON_STRICT);
```

This will save all properties under the "address" (including address) property.


## Working with Files

You can parse a JSON file with the *jsonParseFile* API:

```c
Json *json = jsonParseFile("./file.json", NULL, 0);
```

and you can save the in-memory JSON tree using *jsonSave*:

```c
jsonSave(json, 0, "data.json", 0644, 0);
```

## Navigating and Iterating

Properties in the JSON tree are stored as nodes. These nodes can be identified by a numeric ID or by node reference. Nodes and node IDs are used to very efficiently traverse and enumerate property values.

To get a node ID, use *jsonGetId*:

```c
int id = jsonGetId(json, 0, "address");
```

You can retrieve a node using another node as a starting point:

```c
int addressId = jsonGetId(json, 0, "address");
int cityId = jsonGetId(json, addressId, "city");
```

In fact, most APIs such as *jsonGet* and *jsonSet* take a node ID as a parameter that specifies a root of the tree to base the operation. For example, these are equivalent:

```c
int addressId = jsonGetId(json, 0, "address");
int cityId = jsonSet(json, addressId, "city", "Seattle", 0);

// and

jsonGetSet(json, 0, "address.city", "Brisbane", 0);
```

Similarly, you can retreive a node reference:

```c
JsonNode *node = jsonGetNode(json, "address", "city");
```

You can iterate over nodes using the ITERATE_JSON macro:

```c
JsonNode *child;
int id;
for (ITERATE_JSON(json, 0, child, id)) {
    printf("Property %s has value %s\n", child->name, child->value);
}
```

## Debugging

Use the *jsonPrint* API to print a JSON tree to the console:

```c
jsonPrint(json);
```

## JSON/5

JSON/5 an extension of JSON that makes it easier to create, read and maintain configuration files in JSON.

JSON/5 adds the following JavaScript features to JSON.

* Object keys may be JavaScript identifiers without quotes
* Objects or arrays may have a trailing comma
* Strings may be single quoted
* Strings may span multiple lines (single, double or back-tick quotes)
* Numbers may have a leading or trailing decimal point, be hexadecimal, may begin with a +.
* Values may be regular expressions
* Undefined is a valid value
* Single and multiline comments are allowed and preserved

```javascript
{
    // single-comment
    /*
        Multi-line comment
    */
    unquotedKey: 42,
    singleQuoteString: 'The "lazy brown fox" jumped...',
    multiLine: "Line one
        line two
    ",
    hex: 0x42,
    trailingComma: {
        one: 1,
        two: 2,
    },
}
```

## Memory References

The JSON engine returns values as static pointers into the in-memory tree. Values are returned as const char* (cchar)) values and this saves having to duplicate strings. This reduces memory footprint and is much more efficient.

It is important not to cast returned values to (char*) or to modify the referenced strings using "dirty" programming to break the const typing protection.

## Optimizations

When JSON parses text, it tokenizes the original text and uses it for individual property keys and values. This means the Ioto JSON parser does not need to re-allocate the JSON text and greatly reduces the memory footprint.

JSON nodes are allocated in a single block which may need to grow if you insert new properties into a JSON tree. For this reason, JSON node references should not be persistently stored. JSON node IDs will be stable despite growing the node storage, but node reference will be re-based. If you need to store JSON node references, you should save IDs rather than node references. 

## References

[JSON5 Spec](https://json5.org/)
