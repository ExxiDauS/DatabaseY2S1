select orderNumber, sum(quantityOrdered)
from orders
join orderdetails
using (orderNumber)
where status like "Ship%"
group by orderNumber
having min(quantityOrdered) >= 24; 