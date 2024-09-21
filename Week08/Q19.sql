select max(amount) - min(amount) `Range`, avg(amount) Average
from payments
order by customerNumber;