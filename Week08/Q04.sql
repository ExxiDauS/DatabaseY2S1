select c.customerName, od.productCode, sum(od.quantityOrdered) Quantity
from orders o
join orderdetails od
on o.orderNumber = od.orderNumber
join customers c
on o.customerNumber = c.customerNumber
group by c.customerName, od.productCode
order by Quantity desc;