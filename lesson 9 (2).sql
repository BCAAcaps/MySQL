-- 1 -----------------------------------------
DROP PROCEDURE IF EXISTS hello;
delimiter //
CREATE PROCEDURE hello()
BEGIN
	CASE 
		WHEN CURTIME() BETWEEN '06:00:00' AND '12:00:00' THEN
			SELECT 'Доброе утро!';
		WHEN CURTIME() BETWEEN '12:00:00' AND '18:00:00' THEN
			SELECT 'Добрый день!';
		WHEN CURTIME() BETWEEN '18:00:00' AND '00:00:00' THEN
			SELECT 'Добрый вечер!';
		ELSE
			SELECT 'Доброй ночи!';
	END CASE;
END //
delimiter ;

CALL hello();

-- 2 ---------------------------------
DROP TRIGGER IF EXISTS nullTrigger;
delimiter //
CREATE TRIGGER nullTrigger BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF(ISNULL(NEW.name) AND ISNULL(NEW.description)) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Trigger Warning!';
	END IF;
END //
delimiter ;

INSERT INTO products (name, description, price, catalog_id)
VALUES (NULL, NULL, 5000, 2);  

INSERT INTO products (name, description, price, catalog_id)
VALUES ("GeForce GTX 1080Ti", NULL, 50000, 11); 

INSERT INTO products (name, description, price, catalog_id)
VALUES ("GeForce GTX 1080Ti", "Игровая видеокарта", 50000, 12);

