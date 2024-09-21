select customerName, sum(quantityOrdered) `Quantity Ordered`
from orders
join customers
using (customerNumber)
join orderdetails
using (orderNumber)
group by customerName
order by customerName asc;