# Fix invalid geometries

The simplest is:

```
update schema.table
  set geom = ST_MakeValid(geom)
  where not ST_IsValid(geom);
```

But if it's a Multipolygon it may say:
```
ERROR: Geometry type (GeometryCollection) does not match column type (MultiPolygon)
```
Fixable with:

```
update schema.table
  set geom = ST_Multi(ST_CollectionExtract(ST_MakeValid(geom), 3))
  where not ST_IsValid(geom);
```

If the previous gives an error like:

```
ERROR:  Column has M dimension but geometry does not
```

Then check the dimensions with:

```
select count(gid), ST_Dimension(geom) as dim, ST_NDims(geom) as ndim
  from schema.table
  group by dim, ndim;
```

And if you get `ndim` 3 or 4, you'll have to force the fix:

```
update schema.table
  set geom = ST_Force4D(ST_MakeValid(geom))
  where not ST_IsValid(geom);
```

