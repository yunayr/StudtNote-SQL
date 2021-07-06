SELECT
	user_id,
	max(date)
FROM login
GROUP BY user_id
ORDER BY user_id
;