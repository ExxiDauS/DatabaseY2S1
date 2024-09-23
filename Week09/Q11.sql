select department_id, count(employee_id) `number of employees`
from employees
group by department_id
having count(employee_id) > (
  select count(employee_id)
  from employees
  where department_id = 60
);