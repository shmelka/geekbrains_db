/*
 * ����������� ���������� ���� ��������, ������� ���������� �� ������ �� ���� ������. 
 * ������� ������, ��� ���������� ��� ������ �������� ����, � �� ���� ��������.
 */

SELECT 
DATE_FORMAT(STR_TO_DATE(CONCAT(DAY(birthdate), '_', MONTH(birthdate), '_', YEAR(now())), '%d_%m_%Y'), '%a') AS week_day,
count(*) AS cn
FROM users
GROUP BY week_day