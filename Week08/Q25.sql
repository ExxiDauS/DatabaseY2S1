select city, COUNT(employeeNumber)
from offices
join employees
using (officeCode)
group by city
having COUNT(employeeNumber) > 2;