-- DELETE
-- FROM titles_test2
-- WHERE id NOT IN
-- 	(SELECT * 
-- 	 FROM
-- 		(SELECT min(id)
-- 	 FROM titles_test
-- 	 GROUP BY emp_no)as min);

SELECT * FROM titles_test2;