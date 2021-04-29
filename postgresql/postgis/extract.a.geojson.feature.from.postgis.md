# Extract a GeoJson feature from PostGIS

```sql
select jsonb_build_object(
  'type', 'Feature',
  'id', ogc_fid,
  'geometry', st_asgeojson(geom)::jsonb,
  'properties', to_jsonb(row) - 'ogc_fid' - 'geom'
) from (select * from input_table limit 1) row;
```

If you want several:

```sql
select jsonb_build_object(
  'type', 'FeatureCollection',
  'features', jsonb_agg(feature)
) from (
  select jsonb_build_object(
    'type', 'Feature',
    'id', ogc_fid,
    'geometry', st_asgeojson(geom)::jsonb,
    'properties', to_jsonb(row) - 'ogc_fid' - 'geom'
) as feature
  from (select * from input_table) row) features;
```

Parece que hay varias maneras de hacer esto, investigar cuáles son las ventajas de hacerlo de una manera o de otra
(encontré una manera de hacer benchmarking en github)
https://gist.github.com/dmofot/a382ea40b798cd18ea4b45eb62ecf97f

Lo tengo forkeado para robarme la función de benchmarking y probar distintas variantes


```
select json_build_object(
  'type', 'FeatureCollection',
  'features', array_agg(jsonb_build_object(
    'type', 'Feature',
    'geometry', st_asgeojson(geom)::json,
    'properties', json_build_object('id', gid)
  ))
)
from datasources.monumentos_historicos;
```
