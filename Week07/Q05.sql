SELECT l.location_id, city
FROM locations l
LEFT OUTER JOIN departments d
ON (l.location_id = d.location_id)
WHERE department_id IS NULL
ORDER BY city ASC;