select productName, min(priceEach), avg(priceEach), max(priceEach)
from orderdetails
join products
using (productCode)
group by productName
having max(priceEach) - min(priceEach) < 50;