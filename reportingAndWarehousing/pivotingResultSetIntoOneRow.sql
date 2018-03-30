SELECT deptno
FROM emp;


SELECT
  (CASE
   WHEN deptno = 10
     THEN 1
   ELSE 0 END) AS dept_no_10,
  (CASE
   WHEN deptno = 20
     THEN 1
   ELSE 0 END) AS dept_no_20,
  (CASE
   WHEN deptno = 30
     THEN 1
   ELSE 0 END) AS dept_no_30
FROM emp;


SELECT
  deptno,
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
FROM emp
GROUP BY deptno;


SELECT
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
FROM emp;

--- Approach two

SELECT
  max(CASE
      WHEN deptno = 10
        THEN empcount
      ELSE NULL END) AS dept_no_10,
  max(CASE
      WHEN deptno = 20
        THEN empcount
      ELSE NULL END) AS dept_no_20,
  max(CASE
      WHEN deptno = 30
        THEN empcount
      ELSE NULL END) AS dept_no_30
FROM (SELECT
        deptno,
        count(deptno) AS empcount
      FROM emp
      GROUP BY deptno) x;
