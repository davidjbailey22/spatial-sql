SELECT a.*, b.*
FROM schema.table1 a, schema.table2 b
where ST_Within(ST_Transform(ST_SetSRID(a.point, 4269), 2774),
ST_Buffer(ST_Transform(ST_SetSRID(b.linestring, 4269), 2774), 500)) and b.name = 'Value'

/*
select a.*, b.*
from project.wells a, project.highways b
where ST_Within(ST_Transform(ST_SetSRID(a.point, 4269), 2774),
ST_Buffer(ST_Transform(ST_SetSRID(b.linestring, 4269), 2774), 500)) and b.fullname = 'State Hwy 318'
*/
