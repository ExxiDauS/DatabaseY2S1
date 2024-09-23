select *
from employees
where salary > all(
  select salary
  from employees
  where job_id = "IT_PROG"
) and job_id <> "IT_PROG";