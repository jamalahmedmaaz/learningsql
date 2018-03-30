-- This query will not giving missing data from emp table but not from dept table
-- for that we need full outer join - to bring data from all tables (which is there and also missing)
SELECT
  d.deptno,
  d.dname,
  e.ename
FROM dept d LEFT OUTER JOIN emp e ON d.deptno = e.deptno;

-- Add one record where emp doesnt have a department

SELECT
  d.deptno,
  d.dname,
  e.ename
FROM dept d FULL OUTER JOIN emp e ON d.deptno = e.deptno;
