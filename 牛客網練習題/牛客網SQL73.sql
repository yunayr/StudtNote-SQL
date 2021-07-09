-- 查詢用戶分數大於其所在工作(job)分數的平均分的所有grade的屬性，並且以id的升序排序
-- 方法1：用left join
SELECT g.id, g.job, g.score
FROM grade as g
LEFT JOIN (SELECT   job, avg(score) as avg
											FROM grade  
											GROUP BY job) AS s
ON g.job = s.job
WHERE g.score > s.avg
ORDER BY id;

-- 方法2：用子查詢
SELECT *
FROM grade as g1
WHERE g1.score > (SELECT  avg(g2.score) as avg
																 FROM grade  as g2
																 GROUP BY g2.job
																 HAVING g2.job = g1.job ) 
ORDER BY id
;

-- drop table if exists grade;
-- CREATE TABLE  grade(
-- `id` int(4) NOT NULL,
-- `job` varchar(32) NOT NULL,
-- `score` int(10) NOT NULL,
-- PRIMARY KEY (`id`));
-- 
-- INSERT INTO grade VALUES
-- (1,'C++',11001),
-- (2,'C++',10000),
-- (3,'C++',9000),
-- (4,'Java',12000),
-- (5,'Java',13000),
-- (6,'JS',12000),
-- (7,'JS',11000),
-- (8,'JS',9999),
-- (9,'Java',12500);