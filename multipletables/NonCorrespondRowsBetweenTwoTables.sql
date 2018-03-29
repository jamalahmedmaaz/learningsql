-- Return all rows from one table along with rows from another that may or may not have a match on the common column.

-- This way of joining is called antijoin.
SELECT d.*
FROM dept d
  LEFT OUTER JOIN emp e
    ON
      d.deptno = e.deptno
WHERE e.deptno IS NULL;


SELECT
  d.*,
  e.ename,
  e.deptno AS emp_deptno
FROM dept d
  LEFT OUTER JOIN emp e ON e.deptno = d.deptno;