-- You want to organize data into evenly sized buckets, with a predetermined number of elements in each bucket.
-- The total number of buckets may be unknown, but you want to ensure that each bucket has five elements.

-- You want to organize the employees in the table EMP into groups of five based on the empno


SELECT
  ceil(
      row_number()
      OVER (
        ORDER BY empno ) / 5.0) grp,
  empno,
  ename
FROM emp;

--Everytime amazed.

-- solution two
-- So think this solution as you dont have window function, what you need to do to solve this.

SELECT
  ceil(rank / 5.0) AS grp,
  empno,
  ename
FROM (

       SELECT
         e.empno,
         e.ename,
         (SELECT count(*)
          FROM emp d
          WHERE d.empno > e.empno) + 1 rank
       FROM emp e) x
ORDER BY grp;