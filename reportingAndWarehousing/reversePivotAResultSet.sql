-- First Prepare the pivoted data, and then we will use this query to unpivot the data.

-- Use cartesian product with dept as we need the dimension table join (cartesian) to display which dimension have how
-- much count.

SELECT
  deptno,
  CASE deptno
  WHEN 10
    THEN data.dept_no_10
  WHEN 20
    THEN data.dept_no_20
  WHEN 30
    THEN data.dept_no_30
  END AS count
FROM
  (SELECT
     sum(CASE
         WHEN deptno = 10
           THEN 1
         ELSE 0 END) AS dept_no_10,
     sum(CASE
         WHEN deptno = 20
           THEN 1
         ELSE 0 END) AS dept_no_20,
     sum(CASE
         WHEN deptno = 30
           THEN 1
         ELSE 0 END) AS dept_no_30
   FROM emp) data, dept;


