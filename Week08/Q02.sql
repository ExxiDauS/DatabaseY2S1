select p.productLine `Product line`, sum(od.Quantity + quantityInStock) Quantity
from products p
join (
  select sum(quantityOrdered) Quantity, productCode
  from orderdetails
  group by productCode
  having sum(quantityOrdered) > 50
) od
on p.productCode = od.productCode
group by p.productLine;