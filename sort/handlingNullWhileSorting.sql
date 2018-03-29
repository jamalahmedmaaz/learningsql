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