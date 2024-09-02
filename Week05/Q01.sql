SELECT first_name, last_name, salary * 12 AS `Annual Salary`
FROM employees
WHERE salary * 12 > 30000;