select DEPARTMENT_ID, FIRST_NAME, LAST_NAME, JOB_ID
from employees
where department_id = (
  select department_id
  from departments
  where department_name = "Executive"
);