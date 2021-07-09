-- 查詢在2025-10-15以後，
-- 同一個用戶下單2個以及2個以上
-- 狀態為購買成功的C++課程或Java課程或Python課程的user_id，
-- 並且按照user_id升序排序

SELECT user_id
FROM order_info
WHERE product_name IN('C++', 'Java', 'Python')
AND `status` = 'completed'
AND date > '2025-10-15'
GROUP BY user_id
HAVING count(1) >= 2
ORDER BY user_id
;


-- drop table if exists order_info;
-- CREATE TABLE order_info (
-- id int(4) NOT NULL,
-- user_id int(11) NOT NULL,
-- product_name varchar(256) NOT NULL,
-- status varchar(32) NOT NULL,
-- client_id int(4) NOT NULL,
-- date date NOT NULL,
-- PRIMARY KEY (id));
-- 
-- INSERT INTO order_info VALUES
-- (1,557336,'C++','no_completed',1,'2025-10-10'),
-- (2,230173543,'Python','completed',2,'2025-10-12'),
-- (3,57,'JS','completed',3,'2025-10-23'),
-- (4,57,'C++','completed',3,'2025-10-23'),
-- (5,557336,'Java','completed',1,'2025-10-23'),
-- (6,57,'Java','completed',1,'2025-10-24'),
-- (7,557336,'C++','completed',1,'2025-10-25');