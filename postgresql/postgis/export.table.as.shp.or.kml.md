# Export table to SHP or KML file

## SHP

```
pgsql2shp -f <name.your.file.shp> -u <postgresUser> <database> <table>
```

## KML

```
ogr2ogr -f "KML" <name.your.file.kml> PG:"host=localhost user=<postgresUser> dbname=<database> password=" -sql "select * from <table>"
```

`ogr2ogr` can also do Esri SHP files, just change `-f "KML"` by `-f "ESRI Shapefile"`.
