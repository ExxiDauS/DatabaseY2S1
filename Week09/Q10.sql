select employee_id, first_name, last_name, salary
from employees
where salary < any(
  select min(salary)
  from employees
  where job_id = "FI_ACCOUNT"
) and job_id <> "FI_ACCOUNT";