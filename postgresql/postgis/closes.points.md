# Find closest points

Example to find the closest five geometries. Change de limit value to have more
or less. `some_layer` is a geolocalized table. `some_id` is a numeric id or
you can choose whatever other filtering option to identify a single row so this
geometry is matched against the rest of the geometries.

```
select *
from some_layer
order by some_layer.geom <-> (select geom from some_layer where gid = some_id)
limit 5;
```
