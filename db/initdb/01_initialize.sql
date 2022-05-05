-- adminユーザ追加
CREATE USER endoscope_admin
WITH PASSWORD 'end0sc0pe_adm1n' CREATEDB CREATEROLE;
-- 一般ユーザ追加
CREATE USER endoscope_user
WITH PASSWORD 'end0sc0pe_user';

-- DB作成
CREATE DATABASE endoscope_soft_part;
CREATE DATABASE endoscope_soft_part_dev;
CREATE DATABASE endoscope_soft_part_test;

-- 権限設定
GRANT ALL PRIVILEGES ON DATABASE endoscope_soft_part TO endoscope_admin;
GRANT ALL PRIVILEGES ON DATABASE endoscope_soft_part_dev TO endoscope_admin;
GRANT ALL PRIVILEGES ON DATABASE endoscope_soft_part_test TO endoscope_admin;

-- GRANT SELECT,INSERT ON DATABASE endoscope_soft_part TO endoscope_user;
-- GRANT SELECT,INSERT ON DATABASE endoscope_soft_part_dev TO endoscope_user;
-- GRANT SELECT,INSERT ON DATABASE endoscope_soft_part_test TO endoscope_user;

-- テーブル切り替え
