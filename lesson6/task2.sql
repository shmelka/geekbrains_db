/*
 * Подсчитать общее количество лайков, которые получили пользователи младше 10 лет.
 */

SELECT count(l.id) AS cn 
FROM likes l
WHERE l.user_id in(SELECT user_id FROM profiles WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 10)