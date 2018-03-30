--You want to return each employee and their position (job).

SELECT count(*)
FROM emp;

EXPLAIN ( ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON ) SELECT
                                                            e.job,
                                                            (SELECT count(*)
                                                             FROM emp d
                                                             WHERE d.job = e.job AND e.empno < d.empno) AS rnk,
                                                            e.ename
                                                          FROM emp e
                                                          ORDER BY job, rnk;

-- Example with clerk

SELECT
  empno,
  job,
  ename
FROM emp
WHERE job = 'CLERK';

-- Returned empno are 7369, 7876, 7900, 7934

SELECT count(*)
FROM emp
WHERE job = 'CLERK' AND 7369 < 7369;

SELECT count(*)
FROM emp
WHERE job = 'CLERK' AND 7369 < 7369;

SELECT count(*)
FROM emp
WHERE job = 'CLERK' AND 7369 < 7369;


SELECT
  max(
      CASE
      WHEN job = 'CLERK'
        THEN ename
      ELSE NULL END) AS clerk,
  max(
      CASE
      WHEN job = 'ANALYST'
        THEN ename
      ELSE NULL END) AS analysts,
  max(
      CASE
      WHEN job = 'MANAGER'
        THEN ename
      ELSE NULL END) AS mgrs,
  max(
      CASE
      WHEN job = 'PRESIDENT'
        THEN ename
      ELSE NULL END) AS prez,
  max(
      CASE
      WHEN job = 'SALESMAN'
        THEN ename
      ELSE NULL END) AS sales
FROM (
       SELECT
         e.job,
         e.ename,
         (SELECT count(*)
          FROM emp d
          WHERE d.job = e.job AND e.empno < d.empno) AS rnk
       FROM emp e) x
GROUP BY rnk;
