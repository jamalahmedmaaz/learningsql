SELECT

  CASE deptno
  WHEN 10
    THEN ename END AS d10,

  CASE deptno
  WHEN 20
    THEN ename END AS d20,

  CASE deptno
  WHEN 30
    THEN ename END AS d30,

  CASE WHEN job = 'CLERK'
    THEN ename
  END              AS clerks,

  CASE WHEN job = 'MANAGER'
    THEN ename
  END              AS mgr,

  CASE WHEN job = 'PRESIDENT'
    THEN ename
  END              AS prez,

  CASE WHEN job = 'ANALYST'
    THEN ename
  END              AS anals,

  CASE WHEN job = 'SALESMAN'
    THEN ename
  END              AS sales

FROM emp;