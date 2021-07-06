-- 統計各個部門的工資記錄數，給出部門編碼dept_no、部門名稱dept_name
-- 以及部門在salaries表裡面有多少條記錄sum，按照dept_no升序排序
-- 方式1：多對一
SELECT 
	dp.dept_no,
	dp.dept_name,
	COUNT(1) as sum
FROM salaries as s
LEFT JOIN dept_emp as de
on s.emp_no = de.emp_no
LEFT JOIN departments as dp
on de.dept_no = dp.dept_no
GROUP BY 
	dp.dept_no,
	dp.dept_name
ORDER BY dp.dept_no

-- 方式2：會變成一對多，一般很少用到，不過本題適用。
-- SELECT 
-- 	de.dept_no,
-- 	d.dept_name,
-- COUNT(s.salary) as sum
-- FROM dept_emp as de
-- LEFT JOIN salaries as s
-- ON de.emp_no = s.emp_no
-- LEFT JOIN departments as d
-- on de.dept_no = d.dept_no
-- GROUP BY de.dept_no --group by應該要放入select的字段
-- ORDER BY de.dept_no;