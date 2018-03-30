-- While getting aggregated data with multiple tables, you dont want to distrub the result because of multiple joins.

-- You want to find the sum of the salaries for employees in department 10, along with the sum  of their bonuses.
-- Some employee have more than one bonus and the join between the table emp and emp_bonus will cause incorrect result.

CREATE TABLE IF NOT EXISTS public.emp_bonus1 (
  empno    INTEGER,
  recieved DATE,
  type     INTEGER
);

INSERT INTO public.emp_bonus1 (empno, recieved, type) VALUES (7934, '2005-03-17', 1);
INSERT INTO public.emp_bonus1 (empno, recieved, type) VALUES (7934, '2005-02-15', 2);
INSERT INTO public.emp_bonus1 (empno, recieved, type) VALUES (7839, '2005-02-15', 3);
INSERT INTO public.emp_bonus1 (empno, recieved, type) VALUES (7782, '2005-02-15', 1);


SELECT
  e.empno,
  e.ename,
  e.sal,
  e.deptno,
  e.sal *
  (CASE WHEN eb.type = 1
    THEN .1
   WHEN eb.type = 2
     THEN .2
   ELSE .3 END) AS bonus
FROM emp e, emp_bonus1 eb

WHERE e.empno = eb.empno
      AND e.deptno = 10;

---- basic join. and aggregation incorrect result.

SELECT
  deptno,
  sum(sal)   AS total_sal,
  sum(bonus) AS total_bonus
FROM (
       SELECT
         e.empno,
         e.ename,
         e.sal,
         e.deptno,
         e.sal *
         (CASE WHEN eb.type = 1
           THEN .1
          WHEN eb.type = 2
            THEN .2
          ELSE .3 END) AS bonus
       FROM emp e, emp_bonus1 eb

       WHERE e.empno = eb.empno
             AND e.deptno = 10
     ) inlintable
GROUP BY deptno;
-----

-- Aggregation as there are duplicate records use distinct for salary as we need to count only unique salary.
-- check query result from start to understand this.

SELECT
  deptno,
  sum(DISTINCT sal) AS total_sal,
  sum(bonus)        AS total_bonus
FROM (
       SELECT
         e.empno,
         e.ename,
         e.sal,
         e.deptno,
         e.sal *
         (CASE WHEN eb.type = 1
           THEN .1
          WHEN eb.type = 2
            THEN .2
          ELSE .3 END) AS bonus
       FROM emp e, emp_bonus1 eb

       WHERE e.empno = eb.empno
             AND e.deptno = 10
     ) inlintable
GROUP BY deptno;

-- When data changes  for example if the emp_bonus table looks like below.
-- not all employee in department 10 received bonus.


CREATE TABLE IF NOT EXISTS public.emp_bonus2 (
  empno    INTEGER,
  recieved DATE,
  type     INTEGER
);

INSERT INTO public.emp_bonus2 (empno, recieved, type) VALUES (7934, '2005-03-17', 1);
INSERT INTO public.emp_bonus2 (empno, recieved, type) VALUES (7934, '2005-02-15', 2);

-- same query using left outer will solve the incorrect data.

SELECT
  deptno,
  sum(DISTINCT sal) AS total_sal,
  sum(bonus)        AS total_bonus
FROM (
       SELECT
         e.empno,
         e.ename,
         e.sal,
         e.deptno,
         e.sal *
         (CASE WHEN eb.type = 1
           THEN .1
          WHEN eb.type = 2
            THEN .2
          ELSE .3 END) AS bonus
       FROM emp e, emp_bonus2 eb

       WHERE e.empno = eb.empno
             AND e.deptno = 10
     ) inlintable
GROUP BY deptno;

---- Correct query


SELECT
  deptno,
  sum(DISTINCT sal) AS total_sal,
  sum(bonus)        AS total_bonus
FROM (
       SELECT
         e.empno,
         e.ename,
         e.sal,
         e.deptno,
         e.sal *
         (CASE
          WHEN eb.type IS NULL
            THEN 0
          WHEN eb.type = 1
            THEN .1
          WHEN eb.type = 2
            THEN .2
          ELSE .3 END) AS bonus
       FROM emp e LEFT OUTER JOIN emp_bonus2 eb
           ON e.empno = eb.empno
       WHERE e.deptno = 10
     ) inlintable
GROUP BY deptno;


DROP TABLE emp_bonus1;
DROP TABLE emp_bonus2;