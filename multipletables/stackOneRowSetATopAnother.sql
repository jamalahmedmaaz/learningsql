SELECT
  ename AS ename_deptname,
  deptno
FROM emp

UNION ALL

SELECT
  '------',
  NULL
FROM T1

UNION ALL
SELECT
  dname,
  deptno
FROM dept;

--- Check this query, you will be fascinated by its result, because UNION does sort on the complete data set.

SELECT
  ename AS ename_deptname,
  deptno
FROM emp

UNION

SELECT
  '------',
  NULL
FROM T1

UNION
SELECT
  dname,
  deptno
FROM dept;
