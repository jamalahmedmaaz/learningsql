-- Find the sum of all salaries by deptno and by job, for every job/deptno combination.
-- Also need a grand total for all salaries in table emp.

-- Extensions added to group by makes this fairly easy problem to solve. If our db doesnt support such extensions.
-- then we need to compute them manually using self joins or scalar queries.

SELECT
  deptno,
  job,
  'TOTAL BY DEPT AND JOB' AS categor,
  sum(sal)                AS sal
FROM emp
GROUP BY deptno, job;


SELECT
  NULL,
  job,
  'TOTAL BY JOB',
  sum(sal) AS sal
FROM emp
GROUP BY job;


SELECT
  deptno,
  NULL,
  'TOTAL BY DEPT',
  sum(sal) AS sal
FROM emp
GROUP BY deptno;

SELECT
  NULL,
  NULL,
  'GRAND TOTAL FOR TABLE',
  sum(sal)
FROM emp;

---------- Use UNION ALL TO bring the data together.


SELECT
  deptno,
  job,
  'TOTAL BY DEPT AND JOB' AS categor,
  sum(sal)                AS sal
FROM emp
GROUP BY deptno, job

UNION ALL

SELECT
  NULL,
  job,
  'TOTAL BY JOB',
  sum(sal) AS sal
FROM emp
GROUP BY job

UNION ALL


SELECT
  deptno,
  NULL,
  'TOTAL BY DEPT',
  sum(sal) AS sal
FROM emp
GROUP BY deptno

UNION ALL

SELECT
  NULL,
  NULL,
  'GRAND TOTAL FOR TABLE',
  sum(sal)
FROM emp;

