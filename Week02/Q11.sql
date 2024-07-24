ALTER TABLE employees
DROP FOREIGN KEY employees_jobs_job_id;
ALTER TABLE job_history
DROP FOREIGN KEY job_history_jobs_job_id;
DROP TABLE jobs;