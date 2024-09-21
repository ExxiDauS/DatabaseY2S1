select country, count(customerNumber), avg(creditLimit)
from customers
left outer join orders
using (customerNumber)
where orderNumber is NULL
group by country
having avg(creditLimit) > 0;