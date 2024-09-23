select first_name, last_name, department_id
from employees
where salary = (
  select max(salary)
  from employees
  where department_id = 50
) and department_id <> 50
order by first_name asc;