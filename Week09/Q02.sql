select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
from employees
where salary > (
  select avg(salary)
  from employees
)
order by salary desc;