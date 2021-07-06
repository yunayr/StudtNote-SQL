-- 查找各個部門當前領導的薪水詳情以及其對應部門編號dept_no，
-- 輸出結果以salaries.emp_no升序排序，
-- 並且請注意輸出結果裡面dept_no列是最後一列

SELECT s.*, d.dept_no
FROM dept_manager as d
LEFT JOIN salaries as s
on d.emp_no = s.emp_no
ORDER BY s.emp_no
;