SELECT e.employee_id, e.job_id
FROM job_history j
RIGHT OUTER JOIN employees e
ON (e.employee_id = j.employee_id)
WHERE j.employee_id IS NULL;