select max(x.miles) as most_miles
from(select a.field1, a.geom, b.field1, b.geom,
ST_Length(ST_Transform(ST_SetSRID(a.gwom, 4269), 6428))/5280 as miles
from schema.table a, schema.table b
where ST_Within(a.geom, b.geom)) as x;

/*
select max(x.miles) as most_miles
from(select a.fullname, a.linestring, b.name, b.polygon,
ST_Length(ST_Transform(ST_SetSRID(a.linestring, 4269), 6428))/5280 as miles
from project.highway a, project.counties b
where ST_Within(a.linestring, b.polygon)) as x;
*/
