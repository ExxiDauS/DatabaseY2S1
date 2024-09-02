SELECT * FROM employees
WHERE job_id LIKE "SA&_%" ESCAPE "&" OR job_id LIKE "IT&_%" ESCAPE "&"; 