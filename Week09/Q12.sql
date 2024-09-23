select job_id, max(salary)
from employees
group by job_id
having max(salary) < (
  select max(salary)
  from employees
  where job_id = "HR_REP"
);