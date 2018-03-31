-- Find employees who earn the highest and lowest salaries in each department, aswell as the employees
-- who earn the highest and lowest salaries in each job.

-- These kind of query will not work. Because if we add the required columns in select the group by will screw up.
SELECT
  ename,
  max(sal)
FROM emp
GROUP BY ename;

SELECT
  e.deptno,
  e.ename,
  e.job,
  e.sal,
  (SELECT max(sal)
   FROM emp d
   WHERE e.deptno = d.deptno) AS max_by_dept,
  (SELECT max(sal)
   FROM emp d
   WHERE e.job = d.job)       AS max_by_job,
  (SELECT min(sal)
   FROM emp d
   WHERE e.deptno = d.deptno) AS min_by_dept,
  (SELECT min(sal)
   FROM emp d
   WHERE e.job = d.job)       AS min_by_job
FROM emp e;


SELECT
  deptno,
  ename,
  job,
  sal,
  CASE
  WHEN sal = max_by_dept
    THEN 'TOP SAL IN DEPT'
  WHEN sal = min_by_dept
    THEN 'LOW SAL IN DEPT'
  END AS dept_status,
  CASE WHEN sal = max_by_job
    THEN 'TOP SAL IN JOB'
  WHEN sal = min_by_job
    THEN 'LOW SAL IN JOB'
  END AS job_status
FROM (SELECT
        e.deptno,
        e.ename,
        e.job,
        e.sal,
        (SELECT max(sal)
         FROM emp d
         WHERE e.deptno = d.deptno) AS max_by_dept,
        (SELECT max(sal)
         FROM emp d
         WHERE e.job = d.job)       AS max_by_job,
        (SELECT min(sal)
         FROM emp d
         WHERE e.deptno = d.deptno) AS min_by_dept,
        (SELECT min(sal)
         FROM emp d
         WHERE e.job = d.job)       AS min_by_job
      FROM emp e) x
WHERE sal IN (max_by_job, max_by_dept, min_by_job, min_by_dept)



-- 20	SMITH	CLERK	800	LOW SAL IN DEPT	LOW SAL IN JOB
-- 30	ALLEN	SALESMAN	1600		TOP SAL IN JOB
-- 30	WARD	SALESMAN	1250		LOW SAL IN JOB
-- 20	JONES	MANAGER	2975		TOP SAL IN JOB
-- 30	MARTIN	SALESMAN	1250		LOW SAL IN JOB
-- 30	BLAKE	MANAGER	2850	TOP SAL IN DEPT
-- 10	CLARK	MANAGER	2450		LOW SAL IN JOB
-- 20	SCOTT	ANALYST	3000	TOP SAL IN DEPT	TOP SAL IN JOB
-- 10	KING	PRESIDENT	5000	TOP SAL IN DEPT	TOP SAL IN JOB
-- 30	JAMES	CLERK	950	LOW SAL IN DEPT
-- 20	FORD	ANALYST	3000	TOP SAL IN DEPT	TOP SAL IN JOB
-- 10	MILLER	CLERK	1300	LOW SAL IN DEPT	TOP SAL IN JOB






