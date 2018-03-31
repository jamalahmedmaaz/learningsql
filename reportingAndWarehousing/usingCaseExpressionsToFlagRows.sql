SELECT
  ename,
  job,
  CASE WHEN job = 'CLERK'
    THEN 1
  ELSE 0 END AS is_clerk,
  CASE WHEN job = 'SALESMAN'
    THEN 1
  ELSE 0 END AS is_salesman,
  CASE WHEN job = 'MANAGER'
    THEN 1
  ELSE 0 END AS is_manager,
  CASE WHEN job = 'ANALYST'
    THEN 1
  ELSE 0 END AS is_analyst,
  CASE WHEN job = 'PRESIDENT'
    THEN 1
  ELSE 0 END AS is_president
FROM emp
ORDER BY is_clerk, is_salesman, is_manager, is_analyst, is_president;