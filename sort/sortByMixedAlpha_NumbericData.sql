--Create a view to test this scenario.

CREATE OR REPLACE VIEW V
  AS
    SELECT ename || ' ' || deptno AS data
    FROM emp;

--Check the data is correct.

SELECT *
FROM V;

-- Sort by DeptNo

SELECT data
FROM V
ORDER BY
  (replace(data, replace(translate(data, '0123456789', '##########'), '#', ''), ''));

-- Understand what is happening by checking the below select query

SELECT
  data,
  translate(data, '0123456789', '##########')                                      AS translated,
  replace(translate(data, '0123456789', '##########'), '#', '')                    AS replace1,
  replace(data, replace(translate(data, '0123456789', '##########'), '#', ''), '') AS replace2
FROM V;

-- Sort by Employee Name

SELECT data
FROM V
ORDER BY
  (replace(translate(data, '0123456789', '##########'), '#', ''));

-- Understand what is happening by checking the below select query

SELECT
  data,
  translate(data, '0123456789', '##########'),
  replace(translate(data, '0123456789', '##########'), ' # ', '')
FROM V;