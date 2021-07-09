-- 使用含有關鍵字exists查找未分配具體部門的員工的所有信息。
SELECT *
FROM employees AS e
WHERE NOT EXISTS(
																			SELECT  emp_no
																			FROM dept_emp AS d
																			WHERE e.emp_no = d.emp_no
																		)
;


-- drop table if exists employees;
-- drop table if exists dept_emp;
-- CREATE TABLE `employees` (
--   `emp_no` int(11) NOT NULL,
--   `birth_date` date NOT NULL,
--   `first_name` varchar(14) NOT NULL,
--   `last_name` varchar(16) NOT NULL,
--   `gender` char(1) NOT NULL,
--   `hire_date` date NOT NULL,
--   PRIMARY KEY (`emp_no`));
-- CREATE TABLE `dept_emp` (
-- `emp_no` int(11) NOT NULL,
-- `dept_no` char(4) NOT NULL,
-- `from_date` date NOT NULL,
-- `to_date` date NOT NULL,
-- PRIMARY KEY (`emp_no`,`dept_no`));
-- INSERT INTO employees VALUES(10001,'1953-09-02','Georgi','Facello','M','1986-06-26');
-- INSERT INTO employees VALUES(10002,'1964-06-02','Bezalel','Simmel','F','1985-11-21');
-- INSERT INTO employees VALUES(10003,'1959-12-03','Parto','Bamford','M','1986-08-28');
-- INSERT INTO employees VALUES(10004,'1954-05-01','Chirstian','Koblick','M','1986-12-01');
-- INSERT INTO employees VALUES(10005,'1955-01-21','Kyoichi','Maliniak','M','1989-09-12');
-- INSERT INTO employees VALUES(10006,'1953-04-20','Anneke','Preusig','F','1989-06-02');
-- INSERT INTO employees VALUES(10007,'1957-05-23','Tzvetan','Zielinski','F','1989-02-10');
-- INSERT INTO employees VALUES(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15');
-- INSERT INTO employees VALUES(10009,'1952-04-19','Sumant','Peac','F','1985-02-18');
-- INSERT INTO employees VALUES(10010,'1963-06-01','Duangkaew','Piveteau','F','1989-08-24');
-- INSERT INTO employees VALUES(10011,'1953-11-07','Mary','Sluis','F','1990-01-22');
-- INSERT INTO dept_emp VALUES(10001,'d001','1986-06-26','9999-01-01');
-- INSERT INTO dept_emp VALUES(10002,'d001','1996-08-03','9999-01-01');
-- INSERT INTO dept_emp VALUES(10003,'d004','1995-12-03','9999-01-01');
-- INSERT INTO dept_emp VALUES(10004,'d004','1986-12-01','9999-01-01');
-- INSERT INTO dept_emp VALUES(10005,'d003','1989-09-12','9999-01-01');
-- INSERT INTO dept_emp VALUES(10006,'d002','1990-08-05','9999-01-01');
-- INSERT INTO dept_emp VALUES(10007,'d005','1989-02-10','9999-01-01');
-- INSERT INTO dept_emp VALUES(10008,'d005','1998-03-11','2000-07-31');
-- INSERT INTO dept_emp VALUES(10009,'d006','1985-02-18','9999-01-01');
-- INSERT INTO dept_emp VALUES(10010,'d005','1996-11-24','2000-06-26');
-- INSERT INTO dept_emp VALUES(10010,'d006','2000-06-26','9999-01-01');
