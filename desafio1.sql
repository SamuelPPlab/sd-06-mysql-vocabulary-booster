SELECT country_name AS 'País',
IF (region_id = 1, 'incluído', 'não icluído') AS 'Status Inclusão'
FROM hr.countries
ORDER BY country_name;
