/*
 * � ������� ��������� ������� storehouses_products � ���� value ����� ����������� ����� ������ �����: 
 * 0, ���� ����� ���������� � ���� ����, ���� �� ������ ������� ������. 
 * ���������� ������������� ������ ����� �������, ����� ��� ���������� � ������� ���������� �������� value. 
 * ������, ������� ������ ������ ���������� � �����, ����� ���� �������.
 */

SELECT value from storehouses_products ORDER BY CASE WHEN value = 0 THEN 9999999 ELSE value END