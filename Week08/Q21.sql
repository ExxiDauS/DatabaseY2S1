select country, count(officeCode) `number of offices`
from offices
group by country
order by count(officeCode) desc