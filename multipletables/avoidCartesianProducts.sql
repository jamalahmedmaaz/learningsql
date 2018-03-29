-- Problem : You want to return the name of each employee in department 10 along with the location of the department.

-- Incorrect query

SELECT
  e.ename,
  d.loc
FROM emp e, dept d
WHERE e.deptno = 10;

-- Correct Query
SELECT
  e.ename,
  d.loc
FROM emp e, dept d
WHERE e.deptno = 10
      AND e.deptno = d.deptno;

-- Cartesian product can be very useful in usecases like
-- Transposing.
-- Pivoting.
-- unpivoting.
-- generating sequence of values.
-- mimicking a loop.