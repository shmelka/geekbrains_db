/*
 * Подсчитайте средний возраст пользователей в таблице users
 */

SELECT AVG(TIMESTAMPDIFF(YEAR, birthdate, NOW())) AS avg_age FROM users