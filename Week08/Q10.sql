select country, jobTitle, count(employeeNumber) `Number of employees`
from employees
join offices
using (officeCode)
where territory = "EMEA"
group by country, jobTitle
having count(employeeNumber) = 1;