/*
 * ����������� ������� ������� ������������� � ������� users
 */

SELECT AVG(TIMESTAMPDIFF(YEAR, birthdate, NOW())) AS avg_age FROM users