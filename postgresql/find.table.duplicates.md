# Find table duplicates

To find duplicates on a table use:

```
select * from public.acuiferos_protegidos_fix_by_rodrigo a
  where (select count(*) from public.acuiferos_protegidos_fix_by_rodrigo b
  where a.<some_field> = b.<another_field>) > 1
```

