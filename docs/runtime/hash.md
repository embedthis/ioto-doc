# Growable hash table

Simple hash table that can store arbitrary objects associated with string names.

## API Quick Tour

To create a hash table:

```c
RHash *table = rAllocHash(size, 0);
```

To free the table:

```c
rFreeHash(table);
```

To add a name and value to the hash:

```c
RName *name = rAddName(table, "some-name", value, flags);
```

To lookup a name, use:

```c
void *value = rLookupName(hash, "some-name");
```

To remove a name, use:
```c
rRemoveName(table, "some-name");
```

To iterate over hashed names:

```c
RName *item;
for (ITERATE_NAMES(table, item)) {
    printf("Item %s has value %s", item->name, item->value);
}
```
