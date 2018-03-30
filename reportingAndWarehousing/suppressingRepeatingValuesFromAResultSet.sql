-- These queries are making me crazy.
-- Amazing problem and great solution.

SELECT
  CASE
  WHEN empno = min_empno
    THEN deptno
  ELSE NULL
  END deptno,
  ename
FROM (
       SELECT
         deptno,
         min(empno)
         OVER (
           PARTITION BY deptno ) min_empno,
         empno,
         ename
       FROM emp) x;