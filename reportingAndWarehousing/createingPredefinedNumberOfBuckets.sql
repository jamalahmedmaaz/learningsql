-- You want to organize your data into a fixed number of buckets.

-- You want to organize the employees in table emp into four buckets

SELECT
  row_number()
  OVER (
    ORDER BY empno ),
  empno,
  ename
FROM emp;


SELECT
  mod(row_number()
      OVER (
        ORDER BY empno ), 4) grp,
  empno,
  ename
FROM emp
ORDER BY grp;


SELECT
  mod(row_number()
      OVER (
        ORDER BY empno ), 4) + 1 grp,
  empno,
  ename
FROM emp
ORDER BY grp;
