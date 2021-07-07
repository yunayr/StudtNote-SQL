--針對actor表創建視圖actor_name_view，只包含first_name以及last_name兩列，並對這兩列重新命名，first_name為first_name_v，last_name修改為last_name_v：

-- CREATE VIEW viewName (field1,field2,..)
-- AS (SELECT_STATEMENT);
-- 
-- 兩種寫法
CREATE VIEW actor_name_view (first_name_v,last_name_v)
AS SELECT first_name,last_name FROM actor;
-- 
-- CREATE VIEW actor_name_view
-- AS SELECT first_name AS first_name_v,last_name AS last_name_v FROM actor;
-- 
-- 叫出視圖：
-- SELECT *
-- FROM actor_name_view;