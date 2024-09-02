SELECT first_name, last_name, salary FROM employees
WHERE job_id NOT IN ('IT_PROG', 'AD_VP', 'AD_PRES')
ORDER BY job_id DESC;