
-- 錯誤；
-- SELECT number
-- from
-- 	((SELECT COUNT(number)
-- 	from grade
-- 	group by number)
-- WHERE COUNT(number) >= 3
-- ;
-- 方法1；
select number
from grade
group by number
having count(*) >= 3;

-- 方法2；
SELECT number
from
	(SELECT *,COUNT(*) as c
	from grade
	group by number)as s
WHERE c >= 3;

