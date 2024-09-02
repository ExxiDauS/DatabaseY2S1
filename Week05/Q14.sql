SELECT employee_id, first_name, last_name, commission_pct + 0.5 AS `New Commission` 
FROM employees
WHERE commission_pct + 0.5 > 0.7
ORDER BY commission_pct DESC;