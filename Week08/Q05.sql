select productName, count(orderNumber), sum(quantityOrdered)
from products
join orderdetails
using (productCode)
where productName like "%America%" or productVendor like "%Diecast%"
group by productName
having sum(quantityOrdered) < 50;