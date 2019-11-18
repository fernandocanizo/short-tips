# Check row count

First let's create some data to test the query:

```
create schema if not exists data;

create table if not exists data.test1 (nothing int);
create table if not exists data.test2 (nothing int);

insert into data.test1 (nothing)
  (select random() from generate_series(1, 28));

insert into data.test2 (nothing)
  (select random() from generate_series(1, 55));

create table if not exists public.expected_row_count (
  table_schema varchar not null default '',
  table_name varchar not null default '',
  row_count bigint not null default 0
);

insert into public.expected_row_count (table_schema, table_name, row_count) values
  ('data', 'test1', (select count(*) from data.test1)),
  ('data', 'test2', (select count(*) from data.test2))
  ;
```

Now the query to check the data:

```
select * from (
  select
    table_schema,
    table_name,
    (xpath('/row/cnt/text()', xml_count))[1]::text::int as row_count
  from (
    select
      table_schema,
      table_name,
      query_to_xml(format('select count(*) as cnt from %I.%I', table_schema, table_name), false, true, '') as xml_count
    from information_schema.tables
    where table_schema = 'data' --<< change here for the schema you want
  ) infs ) as r

inner join expected_row_count erc
  on r.table_schema = erc.table_schema
  and r.table_name = erc.table_name
  and r.row_count != erc.row_count
 ;
```

Previous query should give an empty results if all counts are ok, and the
tables with missing data if not. To check it, update the count for some
table on `expected_row_count` and re-run the query.
