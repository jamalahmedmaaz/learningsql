SELECT
  sal,
  ename,
  job,
  comm
FROM emp
ORDER BY (CASE WHEN job = 'SALESMAN'
  THEN comm
          ELSE sal END);


SELECT
  sal,
  ename,
  job,
  comm,
  (CASE WHEN job = 'SALESMAN'
    THEN comm
   ELSE sal END) AS ORDER_BY
FROM emp;



