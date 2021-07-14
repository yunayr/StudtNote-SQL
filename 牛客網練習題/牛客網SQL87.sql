-- 班的每個人的綜合成績用A,B,C,D,E表示，
-- 90分以上都是A，80~90分都是B，60~70分為C，50~60為D，E為50分以下
-- 因為每個名次最多1個人，比如有2個A，那麼必定有1個A是第1名，
-- 有1個A是第2名(綜合成績同分也會按照某一門的成績分先後)。
-- 如果一個學生知道了自己綜合成績以後，最差是排第幾名? 結果按照grade升序排序
-- 使用窗口函数
SELECT
	grade,
	sum(number) over(ORDER BY grade) AS t_rank
FROM class_grade
ORDER BY grade
;

-- 不使用窗口函数
SELECT a.grade, SUM(b.number) as t_rank
FROM class_grade as a
INNER JOIN class_grade as b
ON a.grade >= b.grade
GROUP BY a.grade
ORDER BY a.grade
;
-- drop table if exists class_grade;
-- CREATE TABLE class_grade (
-- grade varchar(32) NOT NULL,
-- number int(4) NOT NULL
-- );
-- 
-- INSERT INTO class_grade VALUES
-- ('A',2),
-- ('D',1),
-- ('C',2),
-- ('B',2);