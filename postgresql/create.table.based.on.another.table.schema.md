# Create a table based on another table schema

```
create table new_table as select * from existing_table;
```

Another without data:

```
create table <tablename>_copy (like <tablename> including all)
```
