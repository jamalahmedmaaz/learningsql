SELECT
  e.ename,
  e.job,
  e.sal,
  row_number()
  OVER (
    PARTITION BY e.empno
    ORDER BY empno ) rn
FROM emp e;


SELECT CASE rn
       WHEN 1
         THEN ename
       WHEN 2
         THEN job
       WHEN 3
         THEN cast(sal AS CHAR(4))
       END emps
FROM (
       SELECT
         e.ename,
         e.job,
         e.sal,
         row_number()
         OVER (
           PARTITION BY e.empno
           ORDER BY e.empno ) rn
       FROM emp e, (SELECT *
                    FROM emp
                    WHERE job = 'CLERK') four_rows
       WHERE e.deptno = 10) x