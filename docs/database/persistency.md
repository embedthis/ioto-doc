# Database Persistency

The Ioto database operates in-memory with a lazy save to persistent storage.

When changes are made to database items, a save to storage will be performed after a configurable delay as specified in the **database.saveDelay** property in the **config.json5** file. This is set to 1 second by default.

You can force a database save at any time via the *dbSave* API:

```c
dbSave(db, NULL);
```

This will persist data changes to the database file specified via *dbOpen*. You can supply a filename as the second argument to save to a different (backup) database file.
