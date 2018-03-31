-- You want to aggregate over different dimensions at the same time.
-- You want to return result set that lists each employee's name, his dep,
-- the number of employees in his department (himself included), the number of employees that have the same job
-- as he does (himself included in the count aswell), and the total number of employees in the emp table.


SELECT
  ename,
  deptno,
  count(*)
  OVER (
    PARTITION BY deptno ) AS deptno_cnt,
  job,
  COUNT(*)
  OVER (
    PARTITION BY job )    AS job_cnt,
  COUNT(*)
  OVER ()                    total
FROM emp;

-- Scalar query approach.
SELECT
  e.ename,
  e.deptno,

  (SELECT count(*)
   FROM emp d
   WHERE e.deptno = d.deptno) AS deptno_cnt,

  job,

  (SELECT count(*)
   FROM emp d
   WHERE e.job = d.job)       AS job_cnt,

  (SELECT count(*)
   FROM emp)                  AS total

FROM emp e;

---- Checking the query result is true for both approach using the except keyword.


SELECT
  ename,
  deptno,
  count(*)
  OVER (
    PARTITION BY deptno ) AS deptno_cnt,
  job,
  COUNT(*)
  OVER (
    PARTITION BY job )    AS job_cnt,
  COUNT(*)
  OVER ()                    total
FROM emp

EXCEPT

SELECT
  e.ename,
  e.deptno,

  (SELECT count(*)
   FROM emp d
   WHERE e.deptno = d.deptno) AS deptno_cnt,

  job,

  (SELECT count(*)
   FROM emp d
   WHERE e.job = d.job)       AS job_cnt,

  (SELECT count(*)
   FROM emp)                  AS total

FROM emp e;
