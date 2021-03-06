SELECT
  ename,
  sal,
  comm
FROM emp;


SELECT
  ename,
  sal,
  comm
FROM (SELECT
        ename,
        sal,
        comm,
        (CASE WHEN comm IS NULL
          THEN 0
         ELSE 1 END) AS is_null
      FROM emp) x
ORDER BY is_null DESC, comm;

-- order by is_null     , comm
-- order by is_null     , comm desc;
-- order by is_null desc, comm desc;


-- Check the below query to find what is happening.
SELECT
  ename,
  sal,
  comm,
  (CASE WHEN comm IS NULL
    THEN 0
   ELSE 1 END) AS is_null
FROM emp;

----End


SELECT
  ename,
  sal,
  comm
FROM emp
ORDER BY comm NULLS LAST;

SELECT
  ename,
  sal,
  comm
FROM emp
ORDER BY comm NULLS FIRST;


SELECT
  ename,
  sal,
  comm
FROM emp
ORDER BY comm DESC NULLS FIRST;

SELECT
  ename,
  sal,
  comm
FROM emp
ORDER BY comm ASC NULLS FIRST;
