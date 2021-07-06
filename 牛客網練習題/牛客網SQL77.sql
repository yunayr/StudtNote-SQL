-- 请你写出一个sql语句查询在2025-10-15以后
-- 状态为购买成功的C++课程
-- 或者Java课程或者Python的订单，
-- 并且按照order_info的id升序排序
--方法1；
SELECT *
FROM order_info
WHERE date > '2025-10-15'
	AND STATUS = 'completed'
	AND product_name IN ('C++', 'Java', 'Python')
ORDER BY id;


-- 方法2：
-- SELECT * 
-- FROM (SELECT *
-- 				from order_info
-- 				WHERE date > '2025-10-15'
-- 					AND STATUS = 'completed') as d
-- WHERE product_name = 'C++'
-- 	or product_name = 'Java'
-- 	or product_name = 'Python'
-- ORDER BY id
-- ;
--  