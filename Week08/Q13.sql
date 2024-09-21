select customerNumber, sum(amount)
from customers
join payments
using (customerNumber)
where checkNumber like "N%" and paymentDate > "2004-01-01"
group by customerNumber
having min(amount) > 35000;
