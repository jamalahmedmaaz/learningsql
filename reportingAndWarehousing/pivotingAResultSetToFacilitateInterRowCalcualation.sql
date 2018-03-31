-- you want to make cal involving data from multiple rows, to make your job
-- easier, you wish to pivot those rows into columns such that all values you need
-- are then in a single row.

-- From our example db deptno 20 is the department with the highest combined salary,
-- which you can confirm by executing

SELECT
  deptno,
  sum(sal) AS sal
FROM emp
GROUP BY deptno;

-- Now you want to cal the difference between the salaries of deptno 20 and deptno 10 and between depno 20 and 30

SELECT
  dep20_sal - dep10_sal AS d20_10,
  dep20_sal - dep30_sal AS d20_30
FROM
  (SELECT
     sum(CASE WHEN deptno = 10
       THEN sal END) AS dep10_sal,
     sum(CASE WHEN deptno = 20
       THEN sal END) AS dep20_sal,
     sum(CASE WHEN deptno = 30
       THEN sal END) AS dep30_sal
   FROM emp) total_by_dept