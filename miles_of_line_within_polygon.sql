-- number of miles for each line within a specific polygon

select sum(distinct x.miles) as total_miles
from(select a.field1, a.geom, b.field1, b.geom,
ST_LENGTH(ST_Transform(ST_SetSRID(a.geom, input srid), output srid))/5280 as miles
from schema.table a, schema.table b
where ST_Within(a.field1, b.geom) and b.field1 = 'value')
as x;

/*
select sum(distinct x.miles) as total_miles
from(select a.fullname, a.linestring, b.name, b.polygon,
ST_LENGTH(ST_Transform(ST_SetSRID(a.linestring, 4269), 6428))/5280 as miles
from project.highways a, project.counties b
where ST_Within(a.linestring, b.polygon) and b.name = 'Park')
as x;
*/
