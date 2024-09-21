select firstName, lastName, count(salesRepEmployeeNumber) `Number of customers`
from employees
join customers 
on salesRepEmployeeNumber = employeeNumber
where country not in (
  select country
  from employees
  join offices
  using (officeCode)
)
group by salesRepEmployeeNumber
having count(salesRepEmployeeNumber) > 1;