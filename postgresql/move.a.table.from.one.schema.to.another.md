# Move a table from one schema to another

For moving the table between the schemas is a very simple, you should just update the entry in pg_class and pg_type table.
Something like update the table schema name from old to the new basis on given table name.

Please check the below solution, try it your self:

```
UPDATE pg_catalog.pg_class
  SET relnamespace = (
    SELECT oid FROM pg_catalog.pg_namespace
    WHERE nspname = 'destination_schema'
    )
  WHERE relnamespace = (
    SELECT oid FROM pg_catalog.pg_namespace
    WHERE nspname = 'source_schema'
    )
  AND relname = 'table_name';
```

```
UPDATE pg_catalog.pg_type
  SET typnamespace = (
    SELECT oid FROM pg_catalog.pg_namespace
    WHERE nspname = 'destination_schema'
    )
  WHERE typnamespace = (
    SELECT oid FROM pg_catalog.pg_namespace
    WHERE nspname = 'source_schema'
    )
  AND typname = 'table_name';
```
