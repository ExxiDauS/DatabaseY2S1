select c.country, p.productCode, od.quantityOrdered, p.buyprice
	, od.quantityOrdered * p.buyPrice `Net Sales`
from orders o
join orderdetails od
on o.orderNumber = od.orderNumber
join customers c
on o.customerNumber = c.customerNumber
join products p
on od.productCode = p.productCode;