# Update Postgis on database

When a new Postgis update gets installed into the system you have to update your previously created database which use the extension. A possible error you would see if Postgis is updated on the system but not in database could look like this:

```
ERROR 1: ERROR:  could not access file "$libdir/postgis-2.4": No such file or directory
```

The solution is to run this on database:

```
alter extension postgis update to "2.5.0";
```

Of course, use the proper version.
