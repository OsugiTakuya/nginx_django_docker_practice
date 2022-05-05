-- 本番DBの権限設定
\c endoscope_soft_part
GRANT ALL PRIVILEGES ON koutei_master TO endoscope_admin;
GRANT SELECT,INSERT,UPDATE ON koutei_master TO endoscope_user;

-- デバッグ用DBの権限設定
\c endoscope_soft_part_dev
GRANT ALL PRIVILEGES ON koutei_master TO endoscope_admin;

-- テスト用DBの権限設定
\c endoscope_soft_part_test
GRANT ALL PRIVILEGES ON koutei_master TO endoscope_admin;
