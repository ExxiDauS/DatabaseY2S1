select firstName, lastName, city
from employees
join offices
using(officeCode)
where country in (
  select country
  from customers 
  group by country
  having count(customerName) > 1
)
order by city asc;