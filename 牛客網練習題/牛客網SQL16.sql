-- 統計出各個title類型對應的員工薪水對應的平均工資avg。
-- 結果給出title以及平均工資avg，並且以avg升序排序
SELECT 
	t.title,
	AVG(s.salary)
FROM titles as t
JOIN salaries as s
ON t.emp_no = s.emp_no
GROUP BY t.title
ORDER BY AVG(s.salary)
;