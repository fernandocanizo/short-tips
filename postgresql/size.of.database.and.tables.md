# Size of database and tables


```
select pg_size_pretty( pg_database_size('dbname') );
```

```
select pg_size_pretty( pg_total_relation_size('tablename') );
```

Size of schemas:
```
select
  schema_name,
  pg_size_pretty(sum(table_size)::bigint) as schema_size,
  round((sum(table_size) / pg_database_size(current_database())) * 100, 2) as percentage
from (
  select
    pg_catalog.pg_namespace.nspname as schema_name,
    pg_relation_size(pg_catalog.pg_class.oid) as table_size
  from pg_catalog.pg_class
  join pg_catalog.pg_namespace
    on relnamespace = pg_catalog.pg_namespace.oid
) t
group by schema_name
order by percentage desc
;
```
