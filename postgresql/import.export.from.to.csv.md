# Import/export from/to CSV

## Export table to CSV

```
\copy <table> to '/path/to/your/file.csv' with (format csv, header)
```

It's important to use `copy` with the backslash and in lowercase.


## Import table from CSV

```
\copy <table> from '/path/to/your/file.csv' with (format csv)
```
