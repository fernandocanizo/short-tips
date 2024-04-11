# MongoDb Cheatsheet

## Dump and restore data

Dump:
```
mongodump -v --db=<dbName> --archive=<filename>
```

`mongodump` will connect to localhost on default port, if you have them changed, then you need to provide those parameters or use an URI.

`mongodump` will dump all databases it finds, so provide a database name to filter what you want.

There's another way that exports to `*.bson` files, but I found this one more straightforward, the other one gives me issues when restoring.

Restore:
```
mongorestore -v --archive=<dumpFile>
```

Restore changing the name of the database:

```
mongorestore -v --archive=<dumpFile> --nsFrom="oldName.*" --nsTo="newName.*"
```

