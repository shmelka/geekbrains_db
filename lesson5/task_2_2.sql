/*
 * Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. 
 * Следует учесть, что необходимы дни недели текущего года, а не года рождения.
 */

SELECT 
DATE_FORMAT(STR_TO_DATE(CONCAT(DAY(birthdate), '_', MONTH(birthdate), '_', YEAR(now())), '%d_%m_%Y'), '%a') AS week_day,
count(*) AS cn
FROM users
GROUP BY week_day