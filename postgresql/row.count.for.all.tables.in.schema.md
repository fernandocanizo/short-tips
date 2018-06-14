# Row count for all tables in schema

Taken from https://stackoverflow.com/questions/2596670/how-do-you-find-the-row-count-for-all-your-tables-in-postgres/28709658#28709658

To get exact counts, the other answers so far are plagued with some issues, some of them serious (see below). Here's a version that's hopefully better:

```
CREATE FUNCTION rowcount_all(schema_name text default 'public')
  RETURNS table(table_name text, cnt bigint) as
$$
declare
 table_name text;
begin
  for table_name in SELECT c.relname FROM pg_class c
    JOIN pg_namespace s ON (c.relnamespace=s.oid)
    WHERE c.relkind = 'r' AND s.nspname=schema_name
  LOOP
    RETURN QUERY EXECUTE format('select cast(%L as text),count(*) from %I.%I',
       table_name, schema_name, table_name);
  END LOOP;
end
$$ language plpgsql;
```

It takes a schema name as parameter, or `public` if no parameter is given.

To work with a specific list of schemas or a list coming from a query without modifying the function, it can be called from within a query like this:

```
WITH rc(schema_name,tbl) AS (
  select s.n,rowcount_all(s.n) from (values ('schema1'),('schema2')) as s(n)
)
SELECT schema_name,(tbl).* FROM rc;
```

This produces a 3-columns output with the schema, the table and the rows count.

Now here are some issues in the other answers that this function avoids:

 - Table and schema names shouldn't be injected into executable SQL without being quoted, either with `quote_ident` or with the more modern `format()` function with its `%I` format string. Otherwise some malicious person may name their table `tablename;DROP TABLE other_table` which is perfectly valid as a table name.

 - Even without the SQL injection and funny characters problems, table name may exist in variants differing by case. If a table is named `ABCD` and another one `abcd`, the `SELECT count(*) FROM...` must use a quoted name otherwise it will skip `ABCD` and count `abcd` twice. The `%I` of format does this automatically.

 - `information_schema.tables` lists custom composite types in addition to tables, even when table_type is `'BASE TABLE'` (!). As a consequence, we can't iterate on`information_schema.tables`, otherwise we risk having `select count(*) from name_of_composite_type` and that would fail. OTOH `pg_class where relkind='r'` should always work fine.

 - The type of COUNT() is `bigint`, not `int`. Tables with more than 2.15 billion rows may exist (running a count(*) on them is a bad idea, though).

 - A permanent type need not to be created for a function to return a resultset with several columns. `RETURNS TABLE(definition...)` is a better alternative.
