-- 查詢在2025年內投遞簡歷的每個崗位，
-- 每一個月內收到簡歷的數量，
-- 並且按先按月份降序排序，再按簡歷數目降序排序
SELECT  
	job, 
	DATE_FORMAT(date, '%Y-%m') AS mon,  -- M會把月份用英文顯示
	SUM(num) as cnt
FROM resume_info
WHERE date BETWEEN '2025-01-01' and '2025-12-31'
GROUP BY job, mon
ORDER BY mon DESC, cnt DESC;

-- drop table if exists resume_info;
-- CREATE TABLE resume_info (
-- id int(4) NOT NULL,
-- job varchar(64) NOT NULL,
-- date date NOT NULL,
-- num int(11) NOT NULL,
-- PRIMARY KEY (id));
-- 
-- INSERT INTO resume_info VALUES
-- (1,'C++','2025-01-02',53),
-- (2,'Python','2025-01-02',23),
-- (3,'Java','2025-01-02',12),
-- (4,'C++','2025-01-03',54),
-- (5,'Python','2025-01-03',43),
-- (6,'Java','2025-01-03',41),
-- (7,'Java','2025-02-03',24),
-- (8,'C++','2025-02-03',23),
-- (9,'Python','2025-02-03',34),
-- (10,'Java','2025-02-04',42),
-- (11,'C++','2025-02-04',45),
-- (12,'Python','2025-02-04',59),
-- (13,'Python','2025-03-04',54),
-- (14,'C++','2025-03-04',65),
-- (15,'Java','2025-03-04',92),
-- (16,'Python','2025-03-05',34),
-- (17,'C++','2025-03-05',34),
-- (18,'Java','2025-03-05',34),
-- (19,'Python','2026-01-04',230),
-- (20,'C++','2026-02-06',231);