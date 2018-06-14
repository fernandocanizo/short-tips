# Export to KML

```
ogr2ogr -f 'KML' <output.kml> PG:"host=localhost port=5432 dbname=<database> user=postgres password=" <schema.table>
```
