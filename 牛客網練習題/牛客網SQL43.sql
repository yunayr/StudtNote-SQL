-- 将所有to_date为9999-01-01的全部更新为NULL,且 from_date更新为2001-01-01。
-- 搜索型update：where放set後面
-- 方法1:
UPDATE titles_test
SET to_date = NULL,
		from_date = '2001-01-01'
WHERE to_date = '9999-01-01';

-- 方法2:
update titles_test  
SET to_date = NULL
WHERE to_date = '9999-01-01';

update titles_test
SET from_date = '2001-01-01';
