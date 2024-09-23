select first_name, last_name, salary, hire_date, department_id
from employees
where hire_date > all(
  select hire_date
  from employees
  where department_id = 30
) and department_id <> 30
order by hire_date asc;