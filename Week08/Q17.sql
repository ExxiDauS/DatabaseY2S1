select ifnull(state, 'No Data') `state`, sum(creditLimit) / count(ifnull(state, 1)) `Average Credit`
from customers
group by state;