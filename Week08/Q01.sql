select orderNumber, count(distinct productCode)
from products
join orderdetails
using (productCode)
where productLine = "Planes" 
group by orderNumber
having min(quantityOrdered > 28);