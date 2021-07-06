-- 查询在2025年内投递简历的岗位和数量，并且按数量降序排序
SELECT 
	job,
	sum(num) as cnt
FROM resume_info
WHERE date < '2026-01-01' -- 也可以寫「date BETWEEN '2025-01-01' AND '2025-12-31'」或「year(date) = 2025」
	AND date > '2024-12-31'
GROUP BY job
ORDER BY cnt DESC;