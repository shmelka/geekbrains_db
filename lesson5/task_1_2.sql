/*
 * ������� users ���� �������� ��������������. 
 * ������ created_at � updated_at ���� ������ ����� VARCHAR � � ��� ������ ����� ���������� �������� � ������� "20.10.2017 8:10". 
 * ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.
 */

ALTER TABLE users ADD COLUMN tmp_created_at DATETIME NULL;
UPDATE users SET tmp_created_at = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i');
ALTER TABLE users DROP COLUMN created_at;
ALTER TABLE users CHANGE COLUMN tmp_created_at created_at DATETIME NULL;

ALTER TABLE users ADD COLUMN tmp_updated_at DATETIME NULL;
UPDATE users SET tmp_updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i');
ALTER TABLE users DROP COLUMN updated_at;
ALTER TABLE users CHANGE COLUMN tmp_updated_at updated_at DATETIME NULL;