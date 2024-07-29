SELECT CONCAT(first_name, ' ', last_name) AS `Employee name`, salary * commission_pct AS `Net Commission` FROM employees
ORDER BY `Net Commission` DESC;