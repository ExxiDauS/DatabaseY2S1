select month(paymentDate) Month, sum(amount) `Total amount`
from payments
group by Month
having sum(amount) > 50000;