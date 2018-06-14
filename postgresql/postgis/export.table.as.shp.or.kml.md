# Export table to SHP or KML file

## SHP

```
pgsql2shp -f <name.your.file.shp> -u <postgresUser> <database> <table>
```

## KML

```
ogr2ogr -f 'KML' <output.kml> PG:"host=localhost port=5432 dbname=<database> user=postgres password=" <schema.table>
```

Also you can use a query instead of a table name:

```
ogr2ogr -f "KML" <output.kml> PG:"host=localhost port=5432 dbname=<database> user=<postgresUser> password=" -sql "select * from <table>"
```

`ogr2ogr` can also do Esri SHP files, just change `-f "KML"` by `-f "ESRI Shapefile"`.
