select employee_id, first_name, last_name, department_id
from employees
where department_id = (
  select department_id
  from departments
  join locations
  using (location_id)
  where city like "T%"
);