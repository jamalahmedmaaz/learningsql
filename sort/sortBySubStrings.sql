SELECT
  job,
  substr(job, length(job) - 2)
FROM emp;


SELECT
  ename,
  job
FROM emp
ORDER BY substr(job, (length(job) :: INT - 1));