/*
 * ����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������
 */

UPDATE users SET created_at = current_timestamp(), updated_at = current_timestamp()  