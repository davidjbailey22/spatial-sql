SELECT a.*, b.*
FROM schema.table1 a, schema.table2 b
WHERE ST_WITHIN (a.point, b.polygon) and b.name = "Value";

/*
SELECT a.*, b.*
FROM project.wells a, basemap.counties b
WHERE ST_WITHIN (a.point, b.polygon) and b.name = "Jefferson";
*/
