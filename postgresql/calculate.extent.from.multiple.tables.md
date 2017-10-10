# Calculate extent from multiple tables

```
select st_extent(g) from (
  select st_extent(geom) as g from table1
  union all
  select st_extent(geom) as g from table2
  ...
) as my_extent;
```
