/*
 * Определить кто больше поставил лайков (всего) - мужчины или женщины?
 */

SELECT 
	(SELECT gender FROM profiles WHERE l.user_id = user_id) AS gender
FROM likes l
GROUP BY gender 
ORDER BY count(gender) DESC 
LIMIT 1
