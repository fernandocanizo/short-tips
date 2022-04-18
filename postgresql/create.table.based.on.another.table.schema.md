# Create a table based on another table schema

```
create table new_table as select * from existing_table;
```

This one creates a new table filled with data from original table but without copying constraints. So no foreign keys, no defaults, no incremental ids, no nothing in the `modifiers` column.

Another without data:

```
create table <tablename>_copy (like <tablename> including all)
```

This one creates an empty table which schema is a verbatim copy of original table. So it has defaults and incremental ids, **but it doesn't copy foreign keys**.
