# Export table to SHP or KML file

## SHP

```
pgsql2shp -f <name.your.file.kml> -u <postgresUser> <database> <table>
```

## KML

```
ogr2ogr -f "KML" <name.your.file.kml> PG:"host=localhost user=<postgresUser> dbname=<database> password=" -sql "select * from <table>"
```
