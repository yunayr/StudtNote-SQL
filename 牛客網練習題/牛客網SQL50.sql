-- 將employees表中的所有員工的last_naame和first_name通過 (	')連接起來。
-- (sqlite不支持concat，請用||實現，mysql支持concat)
SELECT concat(last_name, "' ", first_name) AS name
FROM employees;
