/*
 * Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
 */

SELECT u.* FROM users u
JOIN orders o ON o.user_id = u.id 