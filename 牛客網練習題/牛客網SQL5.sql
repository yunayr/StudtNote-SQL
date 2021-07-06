-- 查找所有已經分配部門的員工的last_name和first_name以及dept_no，
-- 也包括暫時沒有分配具體部門的員工
SELECT
	e.last_name,
	e.first_name,
	d.dept_no
from employees as e
LEFT JOIN dept_emp as d -- 如果用INNER JOIN 就無法把沒分配到部門的員工列出來
on e.emp_no = d.emp_no;