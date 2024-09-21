select concat("In 2004, Average payment is ", avg(amount)) `Average payment description`
from payments
where paymentDate like "2004%"
group by paymentDate like "2004%";