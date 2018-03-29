SELECT *
FROM emp_bonus;

SELECT
  e.ename,
  d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno;

--- Just joining will not give result, you need Left Outer Join.

SELECT
  e.ename,
  d.loc,
  eb.recieved
FROM emp e, dept d, emp_bonus eb
WHERE e.deptno = d.deptno AND e.empno = eb.empno;

-- This works.
SELECT
  e.ename,
  d.loc,
  eb.recieved
FROM emp e
  LEFT JOIN dept d
    ON d.deptno = e.deptno
  LEFT JOIN emp_bonus eb
    ON e.empno = eb.empno;

--- So what we have learned with correlated queries is that is kind of left outer join based on how you use them.


SELECT
  e.ename,
  d.loc,
  (SELECT recieved
   FROM emp_bonus eb
   WHERE eb.empno = e.empno) recieved2
FROM emp e, dept d
WHERE e.deptno = d.deptno
ORDER BY recieved2 DESC;




