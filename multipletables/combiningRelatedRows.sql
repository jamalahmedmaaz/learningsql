--- Equi-join (flavour of inner join), does cartesian product (bad) and then apply where condition if provided.


SELECT
  e.ename,
  d.loc
FROM emp e, dept d;

--EXPLAIN
SELECT
  e.ename,
  d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno;

-- Better
-- EXPLAIN
SELECT
  e.ename,
  d.loc
FROM emp e
  INNER JOIN dept d ON d.deptno = e.deptno;

-- I have applied Explain on both the queries it shows same plan, need to do some research on which is better,
-- or actually both does a cartesian join and then apply filtering.