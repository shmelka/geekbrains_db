/*
 * Выведите список товаров products и разделов catalogs, который соответствует товару.
 */

SELECT 
	p.id, p.name, 
	p.description, 
	p.price, 
	c.id AS catalog_id, 
	c.name AS catalog_name 
FROM products p 
LEFT JOIN catalogs c ON c.id = p.catalog_id 