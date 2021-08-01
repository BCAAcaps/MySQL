    -- 1 Предварительно создать таблицу orders
SELECT 	user.id, user.name, order_id
FROM users
RIGHT JOIN orders ON user.id = orders.user_id;
   
   
    -- 2 
SELECT product.id, product.name, product.price FROM products
JOIN catalogs ON product.catalog_id = cat.id;
    
    
    -- 3 Создание таблиц
    CREATE TABLE flights (
id SERIAL PRIMARY KEY,
`from` VARCHAR(50) NOT NULL COMMENT 'en', 
`to` VARCHAR(50) NOT NULL COMMENT 'en'
);

CREATE TABLE  IF NOT EXISTS cities(
label VARCHAR(50) PRIMARY KEY COMMENT 'en', 
  	name VARCHAR(50) COMMENT 'ru'
  );

  ALTER TABLE flights
  ADD CONSTRAINT fk_from_label
  FOREIGN KEY(`from`)
  REFERENCES cities(label);

  ALTER TABLE flights
  ADD CONSTRAINT fk_to_label
  FOREIGN KEY(`to`)
  REFERENCES cities(label);

  INSERT INTO cities VALUES
  	('Moscow', 'Москва'),
  	('Saint Petersburg', 'Санкт-Петербург'),
  	('Omsk', 'Омск'),
  	('Tomsk', 'Томск'),
  	('Ufa', 'Уфа');

  INSERT INTO flights VALUES
  	(NULL, 'Moscow', 'Saint Petersburg'),
  	(NULL, 'Saint Petersburg', 'Omsk'),
  	(NULL, 'Omsk', 'Tomsk'),
  	(NULL, 'Tomsk', 'Ufa'),
  	(NULL, 'Ufa', 'Moscow');
    
    -- 3 Выведение списка рейсов с русскими названиями городов
    SELECT
	id AS flight_id,
	(SELECT name FROM cities WHERE label = `from`) AS `from`,
	(SELECT name FROM cities WHERE label = `to`) AS `to`
FROM flights
ORDER BY flight_id;