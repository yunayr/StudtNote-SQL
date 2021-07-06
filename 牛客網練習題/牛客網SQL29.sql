-- 使用join查詢方式找出沒有分類的電影id以及名稱
-- 錯誤：把film_category表當成主表去聯結另外兩表，但是film_category表數據比film表少。沒有加上where之前會出現2條數據(film_id 1、2)，加上where就變成0條數據。
-- SELECT fc.film_id, f.title
-- FROM film_category AS fc
-- LEFT JOIN film as f
-- ON fc.film_id = f.film_id
-- LEFT JOIN category as c
-- ON fc.category_id = c.category_id
-- WHERE fc.category_id IS NULL;


--所以正確的方式應該是用film表當主表
SELECT f.film_id, f.title
FROM film AS f
LEFT JOIN film_category as fc
ON fc.film_id = f.film_id
LEFT JOIN category as c
ON fc.category_id = c.category_id
WHERE fc.category_id IS NULL;