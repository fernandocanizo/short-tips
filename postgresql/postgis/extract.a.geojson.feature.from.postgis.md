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
