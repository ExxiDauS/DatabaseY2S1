select salesRepEmployeeNumber `Employee Number`, firstName, lastName LastName, sum(creditLimit)
from customers c
join employees e
on c.salesRepEmployeeNumber = e.employeeNumber 
group by employeeNumber;