SELECT
  sum(sal),
  job
FROM emp
GROUP BY job;

SELECT sum(sal)
FROM emp;


SELECT
  job,
  sum(sal)
FROM emp
GROUP BY job
UNION ALL
SELECT
  'TOTAL',
  sum(sal)
FROM emp;


SELECT emp.empno
FROM emp
GROUP BY ROLLUP (job);