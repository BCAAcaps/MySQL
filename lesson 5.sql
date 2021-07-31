-- 1. Удалим данные из столбца created_at для строк 1-4 и из столбца updated_at для строк 5-6, далее заполним пустые значения текущей датой.
SELECT * FROM user;
UPDATE user
    SET created_at = NULL where id = 1;
UPDATE user
    SET created_at = NULL where id = 2;
UPDATE user
    SET created_at = NULL where id = 3;
UPDATE user
    SET created_at = NULL where id = 4;
UPDATE user
    SET created_at = NOW() where created_at is NULL;
    
UPDATE user
    SET updated_at = NULL where id = 5;
UPDATE user
    SET updated_at = NULL where id = 6;
UPDATE user
    SET updated_at = NOW() where created_at is NULL;


-- 2. Приведем столбцы к текстовому формату, после чего преобразуем в формат DATETIME
ALTER TABLE user
    CHANGE COLUMN `created_at` `created_at` VARCHAR(256) NULL,
    CHANGE COLUMN `updated_at` `updated_at` VARCHAR(256) NULL;

describe user;
SELECT created_at from user;

ALTER TABLE user 
    CHANGE COLUMN `created_at` `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    CHANGE COLUMN `updated_at` `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

describe user;

-- 3. Создаем таблицу, наполняем значениями и сортируем значения по возрастанию, но нулевые значения в конце.
create table storehouses_products (
	id SERIAL PRIMARY KEY,
    storehouse_id INT unsigned,
    product_id INT unsigned,
    `value` INT unsigned COMMENT 'Запас позиции',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы';

INSERT INTO
    storehouses_products (storehouse_id, product_id, value)
VALUES
    (1, 1, 34),
    (1, 2, 12),
    (1, 3, 11),
    (1, 4, 1),
    (1, 5, 0),
    (1, 6, 1),
    (1, 7, 0),
    (1, 8, 12);

SELECT value FROM storehouses_products ORDER BY CASE WHEN value = 0 then 1 else 0 end, value;


