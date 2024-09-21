SELECT country_id, country_name
FROM locations
JOIN departments
USING (location_id)
RIGHT OUTER JOIN countries
USING (country_id)
WHERE department_id IS NULL 
ORDER BY country_name DESC;