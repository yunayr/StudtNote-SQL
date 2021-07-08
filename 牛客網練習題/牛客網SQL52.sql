-- 獲取Employees中的first_name，查詢按照first_name最後兩個字母，按照升序進行排列
SELECT first_name
FROM employees
ORDER BY RIGHT(last_name,2);  -- 這裡也可換成SUBSTR(last_name, -2, 2)