select employee_id, first_name, last_name, manager_id
from employees
where employee_id <> all(
  select manager_id
  from employees
  where manager_id is not null
);