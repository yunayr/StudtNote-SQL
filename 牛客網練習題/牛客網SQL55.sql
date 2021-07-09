-- 分頁查詢employees表，每5行一頁，返回第2頁的數據
-- 可以用LIMIT m OFFSET n：表示從結果集中“截取”出第m~n條記錄。也相當於每頁m條數據，n = m*第幾頁
-- 注意SQL記錄集的索引從0開始。
SELECT *
FROM employees
ORDER BY emp_no
LIMIT 5 OFFSET 5;



-- drop table if exists  `employees` ; 
-- CREATE TABLE `employees` (
--   `emp_no` int(11) NOT NULL,
--   `birth_date` date NOT NULL,
--   `first_name` varchar(14) NOT NULL,
--   `last_name` varchar(16) NOT NULL,
--   `gender` char(1) NOT NULL,
--   `hire_date` date NOT NULL,
--   PRIMARY KEY (`emp_no`));
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
