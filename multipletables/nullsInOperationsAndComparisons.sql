-- Handling nulls with coalesce.
-- coalesce = Come together and form one mass or whole.


SELECT *
FROM emp
WHERE coalesce(comm, 0) < (SELECT comm
                           FROM emp
                           WHERE emp = 'WARD');


SELECT
  ename,
  comm,
  coalesce(comm, 0)
FROM emp
WHERE coalesce(comm, 0) < (SELECT comm
                           FROM emp
                           WHERE emp = 'WARD');


