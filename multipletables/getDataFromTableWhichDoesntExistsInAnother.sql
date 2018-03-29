--No Duplicates
SELECT deptno
FROM dept

EXCEPT

SELECT deptno
FROM emp;

-- Duplicates

SELECT deptno
FROM dept
WHERE deptno NOT IN (SELECT emp.deptno
                     FROM emp
);

-- Solving issue with null values

SELECT deptno
FROM dept
WHERE NOT exists(SELECT NULL
                 FROM emp
                 WHERE emp.deptno = dept.deptno);

