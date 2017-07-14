# Size of database and tables


```
select pg_size_pretty( pg_database_size('dbname') );
```

```
select pg_size_pretty( pg_total_relation_size('tablename') );
```
