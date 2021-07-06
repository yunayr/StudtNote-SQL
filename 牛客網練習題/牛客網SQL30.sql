-- 使用子查詢的方式找出屬於Action分類的所有電影對應的title,description
SELECT f.title, f.description
FROM film as f
WHERE f.film_id IN(
										SELECT fc.film_id  -- 這裡如果寫成*，就會報錯，因為會出現film_id跟其他列，上一層的where會不知道怎麼找f.film_id = 
										FROM film_category as fc
										WHERE fc.category_id = (
													SELECT c.category_id
													from category as c
													where c.`name` = 'Action'
													)
 										)
;

-- JOIN方式：
-- SELECT f.title, f.description
-- FROM film as f
-- LEFT JOIN film_category as fc
-- ON f.film_id = fc.film_id
-- LEFT JOIN category as c
-- ON fc.category_id = c.category_id
-- WHERE c.`name` = 'Action';