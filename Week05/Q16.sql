SELECT CONCAT(street_address, '_', city) AS Address FROM locations
WHERE city NOT IN ('CA', 'CN', 'CH');