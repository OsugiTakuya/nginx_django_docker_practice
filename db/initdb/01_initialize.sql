-- adminユーザ追加
CREATE USER endoscope_admin
WITH PASSWORD 'end0sc0pe_adm1n' CREATEDB CREATEROLE;
-- 一般ユーザ追加
CREATE USER endoscope_user
WITH PASSWORD 'end0sc0pe_user';

-- DB作成
CREATE DATABASE endoscope_soft_part;