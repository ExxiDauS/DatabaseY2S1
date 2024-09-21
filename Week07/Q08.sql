SELECT firstName, lastName
FROM customers
RIGHT OUTER JOIN employees
ON (employeeNumber = salesRepEmployeeNumber)
WHERE customerNumber IS NULL;