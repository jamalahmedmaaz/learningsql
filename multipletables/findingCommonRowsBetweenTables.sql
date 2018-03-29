CREATE OR REPLACE VIEW V1
  AS
    SELECT
      ename,
      job,
      sal
    FROM emp
    WHERE job = 'CLERK';

SELECT *
FROM V1;

SELECT
  e.empno,
  e.ename,
  e.job,
  e.sal,
  e.deptno
FROM emp e, V1
WHERE e.ename = V1.ename
      AND e.job = V1.job
      AND e.sal = V1.sal;

SELECT
  e.empno,
  e.ename,
  e.job,
  e.sal,
  e.deptno
FROM emp e
  INNER JOIN
  V1
    ON
      (e.ename = V1.ename
       AND e.job = V1.job
       AND e.sal = V1.sal);


SELECT
  empno,
  ename,
  job,
  sal,
  deptno
FROM emp
WHERE (ename, job, sal)
      IN
      (SELECT
         ename,
         job,
         sal
       FROM emp
       INTERSECT
       SELECT
         ename,
         job,
         sal
       FROM V1
      )