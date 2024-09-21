SELECT e.first_name, e.last_name, e.employee_id AS Emp, 
m.first_name AS mgr_first_name, m.last_name AS mgr_last_name, m.employee_id AS Mgr
FROM employees e
LEFT OUTER JOIN employees m
ON (e.manager_id = m.employee_id);