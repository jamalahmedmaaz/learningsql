CREATE OR REPLACE VIEW v2
  AS
    SELECT *
    FROM emp
    WHERE emp.deptno != 10

    UNION ALL -- Duplicate Data

    SELECT *
    FROM emp
    WHERE ename = 'WARD';


SELECT *
FROM v2;

-- This is one of the most awesome problem and solution. never thought about this.
-- Problem : You want to know if two tables or views have the same data (cardinality and values)

(SELECT
   empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno,
   count(*) AS cnt
 FROM v2
 GROUP BY empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno

 EXCEPT

 SELECT
   empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno,
   count(*) AS cnt
 FROM emp
 GROUP BY empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno
)

UNION ALL
(SELECT
   empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno,
   count(*) AS cnt
 FROM emp
 GROUP BY empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno

 EXCEPT

 SELECT
   empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno,
   count(*) AS cnt
 FROM v2
 GROUP BY empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno
);

--- This is the query which will return duplicate row with its count.

(SELECT
   empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno,
   COUNT(*) AS cnt
 FROM v2
 GROUP BY
   empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno


 EXCEPT


 SELECT
   empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno,
   COUNT(*) AS cnt
 FROM emp
 GROUP BY
   empno,
   ename,
   job,
   mgr,
   hiredate,
   sal,
   comm,
   deptno
)