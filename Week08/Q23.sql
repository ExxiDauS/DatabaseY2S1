select e.employeeNumber `Employee Number`, concat(e.firstName," ",e.lastName) `Employee Name`
		, o.country, e.reportsTo, concat(r.firstName," ",r.lastName) `Report Name`
		, ifnull(count(salesRepEmployeeNumber), 0) `Total customer`
from employees e
left outer join employees r
on e.reportsTo = r.employeeNumber
join offices o
on e.officeCode = o.officeCode
left join customers c
on e.employeeNumber = c.salesRepEmployeeNumber
where e.employeeNumber is not null
group by e.employeeNumber;