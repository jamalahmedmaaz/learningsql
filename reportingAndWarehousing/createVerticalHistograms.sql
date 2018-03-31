-- D10   D20   D30
--              *
--        *     *
--        *     *
--   *    *     *
--   *    *     *
--   *    *     *


SELECT (SELECT count(*)
        FROM emp d
        WHERE e.deptno = d.deptno AND e.empno < d.empno)
FROM emp e;


SELECT
  CASE WHEN e.deptno = 10
    THEN '*'
  ELSE NULL END                                        deptno_10,
  CASE WHEN e.deptno = 20
    THEN '*'
  ELSE NULL END                                        deptno_20,
  CASE WHEN e.deptno = 30
    THEN '*'
  ELSE NULL END                                        deptno_30,
  (SELECT COUNT(*)
   FROM emp D
   WHERE e.deptno = D.deptno AND e.empno < D.empno) AS rnk
FROM emp e


SELECT
  max(deptno_10) AS d10,
  max(deptno_20) AS d20,
  max(deptno_30) AS d30
FROM (

       SELECT
         CASE WHEN e.deptno = 10
           THEN '*'
         ELSE NULL END                                        deptno_10,
         CASE WHEN e.deptno = 20
           THEN '*'
         ELSE NULL END                                        deptno_20,
         CASE WHEN e.deptno = 30
           THEN '*'
         ELSE NULL END                                        deptno_30,
         (SELECT COUNT(*)
          FROM emp D
          WHERE e.deptno = D.deptno AND e.empno < D.empno) AS rnk
       FROM emp e) x;


SELECT
  max(deptno_10) AS d10,
  max(deptno_20) AS d20,
  max(deptno_30) AS d30
FROM (

       SELECT
         CASE WHEN e.deptno = 10
           THEN '*'
         ELSE NULL END                                        deptno_10,
         CASE WHEN e.deptno = 20
           THEN '*'
         ELSE NULL END                                        deptno_20,
         CASE WHEN e.deptno = 30
           THEN '*'
         ELSE NULL END                                        deptno_30,
         (SELECT COUNT(*)
          FROM emp D
          WHERE e.deptno = D.deptno AND e.empno < D.empno) AS rnk
       FROM emp e) x
GROUP BY rnk
ORDER BY d10 DESC, d20 DESC, d30 DESC
