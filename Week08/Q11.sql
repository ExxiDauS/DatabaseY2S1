select customerName, sum(quantityOrdered * priceEach) Expense
from orders o
join orderdetails od
on o.orderNumber = od.orderNumber
join customers c
on o.customerNumber = c.customerNumber
group by customerName
having Expense > 15000;