SELECT country_id, country_name, region_name
FROM countries
LEFT OUTER JOIN locations
USING (country_id)
RIGHT OUTER JOIN regions
USING (region_id)
WHERE location_id IS NULL
ORDER BY country_id ASC;