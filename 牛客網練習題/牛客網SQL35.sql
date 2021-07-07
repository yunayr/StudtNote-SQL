-- 题目已经先执行了如下语句:
-- DROP TABLE
-- IF EXISTS actor;
-- 
-- CREATE TABLE actor (
-- 	actor_id SMALLINT (5) NOT NULL PRIMARY KEY,
-- 	first_name VARCHAR (45) NOT NULL,
-- 	last_name VARCHAR (45) NOT NULL,
-- 	last_update DATETIME NOT NULL
-- );

-- INSERT INTO actor
-- VALUES
-- 	(
-- 		'3',
-- 		'WD',
-- 		'GUINESS',
-- 		'2006-02-15 12:34:33'
-- 	);

INSERT IGNORE INTO actor
VALUES
	(
		'3',
		'WD',
		'GUINESS',
		'2006-02-15 12:34:33'
	);