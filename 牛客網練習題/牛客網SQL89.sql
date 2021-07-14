-- 查找積分增加最高的用戶的名字，
-- 以及他的總積分是多少(此題數據保證積分最高的用戶有且只有1個)
-- SELECT
-- 	t.name,
-- 	t.sum as grade_sum 
-- FROM
--   (
-- 		SELECT
-- 			a.user_id,
-- 			b.name,
-- 			a.type,
-- 			SUM(grade_num) as sum
-- 		FROM
-- 			grade_info AS a
-- 		LEFT JOIN `user` AS b ON b.id = a.user_id
-- 		GROUP BY
-- 			a.user_id,
-- 			 a.type
-- 	 ) t
-- GROUP BY t.name
-- ORDER BY t.sum desc
-- LIMIT 1
-- ;
-- 
-- 簡化：
SELECT 
	b.name,
	SUM(grade_num) as grade_sum
FROM grade_info as a
LEFT JOIN `user` as b
ON a.user_id = b.id
GROUP BY a.user_id
ORDER BY grade_sum DESC
LIMIT 1;


-- drop table if exists user;
-- drop table if exists grade_info;
-- 
-- CREATE TABLE user (
-- id  int(4) NOT NULL,
-- name varchar(32) NOT NULL
-- );
-- 
-- CREATE TABLE grade_info (
-- user_id  int(4) NOT NULL,
-- grade_num int(4) NOT NULL,
-- type varchar(32) NOT NULL
-- );
-- 
-- INSERT INTO USER VALUES
-- (1,'tm'),
-- (2,'wwy'),
-- (3,'zk'),
-- (4,'qq'),
-- (5,'lm');
-- 
-- INSERT INTO grade_info VALUES
-- (1,3,'add'),
-- (2,3,'add'),
-- (1,1,'add'),
-- (3,3,'add'),
-- (4,3,'add'),
-- (5,3,'add');