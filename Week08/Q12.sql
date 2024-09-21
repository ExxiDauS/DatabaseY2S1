select avg(creditLimit)
from customers
group by salesRepEmployeeNumber
having count(salesRepEmployeeNumber) > 1;