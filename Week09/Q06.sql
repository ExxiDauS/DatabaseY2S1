select first_name, last_name, department_id
from employees
where salary < (
  select avg(salary)
  from employees
  where department_id = 60
)
order by department_id asc;