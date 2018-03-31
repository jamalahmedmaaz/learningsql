-- you wat to generate histograms that extend horizontally.

-- DeptNo   CNT
-- 10        *
-- 20        **
-- 30        ***


SELECT
  deptno,
  count(*)
FROM emp
GROUP BY deptno;


SELECT
  deptno,
  lpad('*', count(*) :: INTEGER, '*') AS cnt
FROM emp
GROUP BY deptno
ORDER BY cnt;

