-- 按照dept_no進行匯總，屬於同一個部門的emp_no按照逗號進行連接，
-- 結果給出dept_no以及連接出的結果employeesselect
    dept_no,
    group_concat(emp_no) as employees
from
    dept_emp
group by
    dept_no;