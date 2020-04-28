# Fix geometry

```
update ${tableName} set geom = st_makevalid(geom) where not st_isvalid(geom);
```

