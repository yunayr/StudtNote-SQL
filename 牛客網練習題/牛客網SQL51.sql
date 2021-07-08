-- 查找字符串'10,A,B' 中逗号','出现的次数cnt。
-- '10,A,B'的長度 減去 替換掉逗號的長度
-- 計算'10,A,B'的長度：length('10,A,B') = 6
-- 計算替換掉逗號的長度；length(REPLACE('10,A,B',  ',',  '')) = 4
SELECT
	length('10,A,B') - length(REPLACE('10,A,B',  ',',  ''))AS cnt;