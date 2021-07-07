-- 针对如下表actor结构创建索引：
-- (注:在 SQLite 中,除了重命名表和在已有的表中添加列,ALTER TABLE 命令不支持其他操作，
-- mysql支持ALTER TABLE创建索引)
-- 对first_name创建唯一索引uniq_idx_firstname，对last_name创建普通索引idx_lastname
ALTER TABLE actor ADD UNIQUE uniq_idx_firstname (first_name);

ALTER TABLE actor ADD INDEX idx_lastname (last_name);

-- 查看索引
-- EXPLAIN actor;
