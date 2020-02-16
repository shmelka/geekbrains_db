/*
 * Пусть задан некоторый пользователь. 
 * Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.
 * 
 * Возьмём пользователя с id 1
 */

SELECT 
u.*,
(SELECT count(m.id) FROM messages m WHERE m.to_user_id = 1 AND m.from_user_id = u.id) AS cn
FROM users u
HAVING cn > 0
order BY cn DESC
LIMIT 0, 1
 