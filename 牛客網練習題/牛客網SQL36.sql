-- 對於如下表actor，其對應的數據為:
-- actor_id	first_name	last_name	 last_update
--   1	       PENELOPE	   GUINESS	 2006-02-15 12:34:33
--   2	       NICK	       WAHLBERG 	2006-02-15 12:34:33
-- 請你創建一個actor_name表，並且將actor表中的所有first_name以及last_name導入該表.
-- actor_name表結構如下：
-- drop table if exists actor;
-- CREATE TABLE  actor  (
--    actor_id  smallint(5)  NOT NULL PRIMARY KEY,
--    first_name  varchar(45) NOT NULL,
--    last_name  varchar(45) NOT NULL,
--    last_update  datetime NOT NULL);
-- insert into actor values ('1', 'PENELOPE', 'GUINESS', '2006-02-15 12:34:33'), ('2', 'NICK', 'WAHLBERG', '2006-02-15 12:34:33');
-- SELECT *
-- FROM actor;
CREATE TABLE actor_name (
	first_name VARCHAR (45) NOT NULL COMMENT '名字',
	last_name VARCHAR (45) NOT NULL COMMENT '姓氏'
);

INSERT INTO actor_name (first_name, last_name)
SELECT first_name, last_name
FROM actor;
