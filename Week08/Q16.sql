select od.productCode, p.productName,
sum(od.quantityOrdered * od.priceEach) `Sum Net Sales`,
avg(quantityOrdered * priceEach) `Average Net Sales`
from orderdetails od
join products p
on od.productCode = p.productCode
group by productCode
having avg(quantityOrdered * priceEach) > (
  select avg(quantityOrdered * priceEach)
  from orderdetails
);