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

## Rename database

According to [this post](https://jira.mongodb.org/browse/SERVER-701) updated on 2024-04-12, there's no easy way to rename a database in Mongo, so probably they never gonna implement that.

The recommended way is to use the provided tools for dumping/restoring, to make a backup copy an re-load it with a new name.
