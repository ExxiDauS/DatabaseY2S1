SELECT location_id, street_address, state_province FROM locations
WHERE country_id  != 'CN' AND state_province IS NOT NULL;