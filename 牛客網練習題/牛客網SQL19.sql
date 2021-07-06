-- 查找所有員工的last_name和first_name以及對應的dept_name，也包括暫時沒有分配部門的員工
SELECT 
	e.last_name,
	e.first_name,
	dp.dept_name
from employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments as dp
on de.dept_no = dp.dept_no;