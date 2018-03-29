--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.12
-- Dumped by pg_dump version 9.5.12

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = ON;
SELECT pg_catalog.set_config('search_path', '', FALSE);
SET check_function_bodies = FALSE;
SET client_min_messages = WARNING;
SET row_security = OFF;

SET default_tablespace = '';

SET default_with_oids = FALSE;

--
-- Name: dept; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept (
  deptno INTEGER,
  dname  CHARACTER VARYING(14),
  loc    CHARACTER VARYING(13)
);


ALTER TABLE public.dept
  OWNER TO postgres;

--
-- Name: emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.emp (
  empno    INTEGER NOT NULL,
  ename    CHARACTER VARYING(10),
  job      CHARACTER VARYING(9),
  mgr      INTEGER,
  hiredate DATE,
  sal      INTEGER,
  comm     INTEGER,
  deptno   INTEGER
);


ALTER TABLE public.emp
  OWNER TO postgres;

--
-- Name: t1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t1 (
  id INTEGER
);


ALTER TABLE public.t1
  OWNER TO postgres;

--
-- Name: t10; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t10 (
  id INTEGER
);


ALTER TABLE public.t10
  OWNER TO postgres;

--
-- Name: t100; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t100 (
  id INTEGER
);


ALTER TABLE public.t100
  OWNER TO postgres;

--
-- Data for Name: dept; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dept (deptno, dname, loc) VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO public.dept (deptno, dname, loc) VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO public.dept (deptno, dname, loc) VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO public.dept (deptno, dname, loc) VALUES (40, 'OPERATIONS', 'BOSTON');

--
-- Data for Name: emp; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000, NULL, 20);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100, NULL, 20);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20);
INSERT INTO public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
VALUES (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);

--
-- Data for Name: t1; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.t1 (id) VALUES (1);

--
-- Data for Name: t10; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.t10 (id) VALUES (1);
INSERT INTO public.t10 (id) VALUES (2);
INSERT INTO public.t10 (id) VALUES (3);
INSERT INTO public.t10 (id) VALUES (4);
INSERT INTO public.t10 (id) VALUES (5);
INSERT INTO public.t10 (id) VALUES (6);
INSERT INTO public.t10 (id) VALUES (7);
INSERT INTO public.t10 (id) VALUES (8);
INSERT INTO public.t10 (id) VALUES (9);
INSERT INTO public.t10 (id) VALUES (10);

--
-- Data for Name: t100; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.t100 (id) VALUES (1);
INSERT INTO public.t100 (id) VALUES (2);
INSERT INTO public.t100 (id) VALUES (3);
INSERT INTO public.t100 (id) VALUES (4);
INSERT INTO public.t100 (id) VALUES (5);
INSERT INTO public.t100 (id) VALUES (6);
INSERT INTO public.t100 (id) VALUES (7);
INSERT INTO public.t100 (id) VALUES (8);
INSERT INTO public.t100 (id) VALUES (9);
INSERT INTO public.t100 (id) VALUES (10);
INSERT INTO public.t100 (id) VALUES (11);
INSERT INTO public.t100 (id) VALUES (12);
INSERT INTO public.t100 (id) VALUES (13);
INSERT INTO public.t100 (id) VALUES (14);
INSERT INTO public.t100 (id) VALUES (15);
INSERT INTO public.t100 (id) VALUES (16);
INSERT INTO public.t100 (id) VALUES (17);
INSERT INTO public.t100 (id) VALUES (18);
INSERT INTO public.t100 (id) VALUES (19);
INSERT INTO public.t100 (id) VALUES (20);
INSERT INTO public.t100 (id) VALUES (21);
INSERT INTO public.t100 (id) VALUES (22);
INSERT INTO public.t100 (id) VALUES (23);
INSERT INTO public.t100 (id) VALUES (24);
INSERT INTO public.t100 (id) VALUES (25);
INSERT INTO public.t100 (id) VALUES (26);
INSERT INTO public.t100 (id) VALUES (27);
INSERT INTO public.t100 (id) VALUES (28);
INSERT INTO public.t100 (id) VALUES (29);
INSERT INTO public.t100 (id) VALUES (30);
INSERT INTO public.t100 (id) VALUES (31);
INSERT INTO public.t100 (id) VALUES (32);
INSERT INTO public.t100 (id) VALUES (33);
INSERT INTO public.t100 (id) VALUES (34);
INSERT INTO public.t100 (id) VALUES (35);
INSERT INTO public.t100 (id) VALUES (36);
INSERT INTO public.t100 (id) VALUES (37);
INSERT INTO public.t100 (id) VALUES (38);
INSERT INTO public.t100 (id) VALUES (39);
INSERT INTO public.t100 (id) VALUES (40);
INSERT INTO public.t100 (id) VALUES (41);
INSERT INTO public.t100 (id) VALUES (42);
INSERT INTO public.t100 (id) VALUES (43);
INSERT INTO public.t100 (id) VALUES (44);
INSERT INTO public.t100 (id) VALUES (45);
INSERT INTO public.t100 (id) VALUES (46);
INSERT INTO public.t100 (id) VALUES (47);
INSERT INTO public.t100 (id) VALUES (48);
INSERT INTO public.t100 (id) VALUES (49);
INSERT INTO public.t100 (id) VALUES (50);
INSERT INTO public.t100 (id) VALUES (51);
INSERT INTO public.t100 (id) VALUES (52);
INSERT INTO public.t100 (id) VALUES (53);
INSERT INTO public.t100 (id) VALUES (54);
INSERT INTO public.t100 (id) VALUES (55);
INSERT INTO public.t100 (id) VALUES (56);
INSERT INTO public.t100 (id) VALUES (57);
INSERT INTO public.t100 (id) VALUES (58);
INSERT INTO public.t100 (id) VALUES (59);
INSERT INTO public.t100 (id) VALUES (60);
INSERT INTO public.t100 (id) VALUES (61);
INSERT INTO public.t100 (id) VALUES (62);
INSERT INTO public.t100 (id) VALUES (63);
INSERT INTO public.t100 (id) VALUES (64);
INSERT INTO public.t100 (id) VALUES (65);
INSERT INTO public.t100 (id) VALUES (66);
INSERT INTO public.t100 (id) VALUES (67);
INSERT INTO public.t100 (id) VALUES (68);
INSERT INTO public.t100 (id) VALUES (69);
INSERT INTO public.t100 (id) VALUES (70);
INSERT INTO public.t100 (id) VALUES (71);
INSERT INTO public.t100 (id) VALUES (72);
INSERT INTO public.t100 (id) VALUES (73);
INSERT INTO public.t100 (id) VALUES (74);
INSERT INTO public.t100 (id) VALUES (75);
INSERT INTO public.t100 (id) VALUES (76);
INSERT INTO public.t100 (id) VALUES (77);
INSERT INTO public.t100 (id) VALUES (78);
INSERT INTO public.t100 (id) VALUES (79);
INSERT INTO public.t100 (id) VALUES (80);
INSERT INTO public.t100 (id) VALUES (81);
INSERT INTO public.t100 (id) VALUES (82);
INSERT INTO public.t100 (id) VALUES (83);
INSERT INTO public.t100 (id) VALUES (84);
INSERT INTO public.t100 (id) VALUES (85);
INSERT INTO public.t100 (id) VALUES (86);
INSERT INTO public.t100 (id) VALUES (87);
INSERT INTO public.t100 (id) VALUES (88);
INSERT INTO public.t100 (id) VALUES (89);
INSERT INTO public.t100 (id) VALUES (90);
INSERT INTO public.t100 (id) VALUES (91);
INSERT INTO public.t100 (id) VALUES (92);
INSERT INTO public.t100 (id) VALUES (93);
INSERT INTO public.t100 (id) VALUES (94);
INSERT INTO public.t100 (id) VALUES (95);
INSERT INTO public.t100 (id) VALUES (96);
INSERT INTO public.t100 (id) VALUES (97);
INSERT INTO public.t100 (id) VALUES (98);
INSERT INTO public.t100 (id) VALUES (99);
INSERT INTO public.t100 (id) VALUES (100);


CREATE TABLE public.emp_bonus (
  empno    INTEGER,
  recieved DATE,
  type     INTEGER
);

INSERT INTO public.emp_bonus (empno, recieved, type) VALUES (7369, '2005-03-14', 1);
INSERT INTO public.emp_bonus (empno, recieved, type) VALUES (7900, '2005-03-14', 2);
INSERT INTO public.emp_bonus (empno, recieved, type) VALUES (7788, '2005-03-14', 3);

--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;

--
-- PostgreSQL database dump complete
--

