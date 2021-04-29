select floor(st_area(st_transform(st_transform(geom, 900913), 32719))), 'test1' from datasources.test_1_32
    -- 550674
    union all
    select floor(st_area(st_transform(st_transform(geom, 900913), 32719))), 'test2' from datasources.test_2_33
    -- 351527
    union all
select floor(st_area(st_transform(st_transform(geom, 900913), 32719))), 'test3' from datasources.test_3_34
    -- 2417047
    union all
    select floor(st_area(st_transform(st_transform(geom, 900913), 32719))), 'test4' from datasources.test_4_36
    -- 180108911
