-- Базы данных. Урок 10. Вебинар. Транзакции, переменные, представления

-- ДЗ к уроку 7

-- 1. Составьте список пользователей users, которые осуществили хотя бы один
-- заказ orders в интернет магазине.

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Геннадий';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 2 FROM products
WHERE name = 'Intel Core i5-7400';

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Наталья';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 1 FROM products
WHERE name IN ('Intel Core i5-7400', 'Gigabyte H310M S2H');

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Иван';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 1 FROM products
WHERE name IN ('AMD FX-8320', 'ASUS ROG MAXIMUS X HERO');

SELECT id, name, birthday_at FROM users;

SELECT
  u.id, u.name, u.birthday_at
FROM
  users AS u
JOIN
  orders AS o
ON
  u.id = o.user_id;

-- 2. Выведите список товаров products и разделов catalogs, который
-- соответствует товару.

SELECT
  p.id,
  p.name,
  p.price,
  c.name AS catalog
FROM
  products AS p
LEFT JOIN
  catalogs AS c
ON
  p.catalog_id = c.id;

-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица 
-- городов cities (label, name). Поля from, to и label содержат английские 
-- названия городов, поле name — русское. Выведите список рейсов flights с
-- русскими названиями городов.

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(255) COMMENT 'Город отравления',
  `to` VARCHAR(255) COMMENT 'Город прибытия'
) COMMENT = 'Рейсы';

INSERT INTO flights (`from`, `to`) VALUES
('moscow', 'omsk'),
('novgorod', 'kazan'),
('irkutsk', 'moscow'),
('omsk', 'irkutsk'),
('moscow', 'kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  label VARCHAR(255) COMMENT 'Код города',
  name VARCHAR(255) COMMENT 'Название города'
) COMMENT = 'Словарь городов';

INSERT INTO cities (label, name) VALUES
('moscow', 'Москва'),
('irkutsk', 'Иркутск'),
('novgorod', 'Новгород'),
('kazan', 'Казань'),
('omsk', 'Омск');

SELECT
  f.id,
  cities_from.name AS `from`,
  cities_to.name AS `to`
FROM flights AS f
  LEFT JOIN cities AS cities_from
    ON f.from = cities_from.label
  LEFT JOIN cities AS cities_to
    ON f.to = cities_to.label;

-- ДЗ к уроку 8

-- 1. Добавить необходимые внешние ключи для всех таблиц базы данных vk
-- (приложить команды).
-- 2.По созданным связям создать ER диаграмму, используя Dbeaver (приложить графический файл к ДЗ).
-- 3.Переписать запросы, заданые к ДЗ урока 6 с использованием JOIN
--  (четыре запроса).

-- Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех
-- общался с нашим пользоваетелем.

SELECT (SELECT CONCAT(first_name, ' ', last_name) 
          FROM users 
            WHERE id = messages.from_user_id) AS friend_name, 
  COUNT(messages.id) AS total_messages 
  FROM users
    JOIN friendship friendship
      ON users.id = friendship.user_id
        OR users.id = friendship.friend_id
    JOIN messages
      ON messages.to_user_id = users.id
        AND (messages.from_user_id = friendship.friend_id
          OR messages.from_user_id = friendship.user_id)
  WHERE users.id = 52
  GROUP BY messages.from_user_id
  ORDER BY total_messages DESC
  LIMIT 1;   
 

-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT SUM(got_likes) AS total_likes_for_youngest
  FROM (   
    SELECT COUNT(DISTINCT likes.id) AS got_likes 
      FROM profiles
        LEFT JOIN likes
          ON likes.target_id = profiles.user_id
            AND target_type_id = 2
      GROUP BY profiles.user_id
      ORDER BY profiles.birthday DESC
      LIMIT 10
) AS youngest;

-- Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT profiles.sex AS SEX, 
  COUNT(likes.id) AS total_likes
  FROM likes
    JOIN profiles
      ON likes.user_id = profiles.user_id
    GROUP BY profiles.sex
    ORDER BY total_likes DESC
    LIMIT 1;

-- Найти 10 пользователей, которые проявляют наименьшую активность в
-- использовании социальной сети.

SELECT users.id,
  COUNT(DISTINCT messages.id) + 
  COUNT(DISTINCT likes.id) + 
  COUNT(DISTINCT media.id) AS activity 
  FROM users
    LEFT JOIN messages 
      ON users.id = messages.from_user_id
    LEFT JOIN likes
      ON users.id = likes.user_id
    LEFT JOIN media
      ON users.id = media.user_id
  GROUP BY users.id
  ORDER BY activity
  LIMIT 10;

-- Посмотрим почему нужен DISTINCT 
 SELECT users.id AS users_id,
  messages.id AS messages_id, 
  likes.id AS llikes_id, 
  media.id AS medias_id
  FROM users
    LEFT JOIN messages 
      ON users.id = messages.from_user_id
    LEFT JOIN likes
      ON users.id = likes.user_id
    LEFT JOIN media
      ON users.id = media.user_id
  WHERE users.id = 21; 

-- ДЗ к уроку 10

-- 1.В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users.
-- Используйте транзакции.

SELECT * FROM shop.users;
SELECT * FROM sample.users;

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1 LIMIT 1;
COMMIT;

-- 2.Создайте представление, которое выводит название name товарной
-- позиции из таблицы products и соответствующее название каталога name
-- из таблицы catalogs.

CREATE OR REPLACE VIEW products_catalogs AS
SELECT
  p.name AS product,
  c.name AS catalog
FROM
  products AS p
JOIN
  catalogs AS c
ON
  p.catalog_id = c.id;

-- 3.Пусть имеется таблица с календарным полем created_at.
-- В ней размещены разряженые календарные записи за август 2018 года '2018-08-01', '2018-08-04', 
-- '2018-08-16' и 2018-08-17. Составьте запрос, который выводит полный список дат за август, 
-- выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.

CREATE TABLE IF NOT EXISTS posts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  created_at DATE NOT NULL
);

INSERT INTO posts VALUES
(NULL, 'первая запись', '2018-08-01'),
(NULL, 'вторая запись', '2018-08-04'),
(NULL, 'третья запись', '2018-08-16'),
(NULL, 'четвертая запись', '2018-08-17');

CREATE TEMPORARY TABLE last_days (
  day INT
);

INSERT INTO last_days VALUES
(0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30);

SELECT
  DATE(DATE('2018-08-31') - INTERVAL l.day DAY) AS day,
  NOT ISNULL(p.name) AS order_exist
FROM
  last_days AS l
LEFT JOIN
  posts AS p
ON
  DATE(DATE('2018-08-31') - INTERVAL l.day DAY) = p.created_at
ORDER BY
  day;

-- 4.Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя
-- только 5 самых свежих записей.

DROP TABLE IF EXISTS posts;
CREATE TABLE IF NOT EXISTS posts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  created_at DATE NOT NULL
);

INSERT INTO posts VALUES
(NULL, 'первая запись', '2018-11-01'),
(NULL, 'вторая запись', '2018-11-02'),
(NULL, 'третья запись', '2018-11-03'),
(NULL, 'четвертая запись', '2018-11-04'),
(NULL, 'пятая запись', '2018-11-05'),
(NULL, 'шестая запись', '2018-11-06'),
(NULL, 'седьмая запись', '2018-11-07'),
(NULL, 'восьмая запись', '2018-11-08'),
(NULL, 'девятая запись', '2018-11-09'),
(NULL, 'десятая запись', '2018-11-10');

DELETE
  posts
FROM
  posts
JOIN
 (SELECT
    created_at
  FROM
    posts
  ORDER BY
    created_at DESC
  LIMIT 5, 1) AS delpst
ON
  posts.created_at <= delpst.created_at;

SELECT * FROM posts;


-- Практическое задание по теме “Администрирование MySQL”
-- (эта тема изучается по вашему желанию)

--1.Создайте двух пользователей которые имеют доступ к базе данных shop.
-- Первому пользователю shop_read должны быть доступны только запросы на чтение данных,
-- второму пользователю shop — любые операции в пределах базы данных shop.

CREATE USER 'shop_read'@'localhost';
GRANT SELECT, SHOW VIEW ON shop.* TO 'shop_read'@'localhost' IDENTIFIED BY '';

SHOW DATABASES;
USE shop;
SHOW TABLES;
SELECT * FROM catalogs;
INSERT INTO catalogs (name) VALUES ('Оперативная память');

CREATE USER 'shop'@'localhost';
GRANT ALL ON shop.* TO 'shop'@'localhost' IDENTIFIED BY '';


-- 2. (по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password,
-- содержащие первичный ключ, имя пользователя и его пароль. Создайте представление
-- username таблицы accounts, предоставляющий доступ к столбца id и name. Создайте
-- пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы
-- извлекать записи из представления username.

DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  password VARCHAR(255)
);

INSERT INTO accounts (name, password) VALUES
  ('Геннадий', 'Qt3X08VetW'),
  ('Наталья', 'hvg0b057Br'),
  ('Александр', 'a4YGUJjRLk'),
  ('Сергей', 'YYug1IeyWl'),
  ('Иван', 'oKoo7KXvTE'),
  ('Мария', 'w5r4yvfo9f');

CREATE VIEW username AS SELECT id, name FROM accounts;

SELECT * FROM username;

CREATE USER 'user_read'@'localhost';
GRANT SELECT (id, name) ON shop.username TO 'user_read'@'localhost';




-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

-- 1.Создайте хранимую функцию hello(), которая будет возвращать приветствие,
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна
-- возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать
-- фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 —
-- "Доброй ночи".

DELIMITER //

CREATE FUNCTION hello ()
RETURNS TINYTEXT NOT DETERMINISTIC
BEGIN
  DECLARE hour INT;
  SET hour = HOUR(NOW());
  CASE
    WHEN hour BETWEEN 0 AND 5 THEN
      RETURN "Доброй ночи";
    WHEN hour BETWEEN 6 AND 11 THEN
      RETURN "Доброе утро";
    WHEN hour BETWEEN 12 AND 17 THEN
      RETURN "Добрый день";
    WHEN hour BETWEEN 18 AND 23 THEN
      RETURN "Добрый вечер";
  END CASE;
END//

SELECT NOW(), hello ()//

-- 2.В таблице products есть два текстовых поля: name с названием товара и
-- description с его описанием. Допустимо присутствие обоих полей или одно из них.
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены.
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //

CREATE TRIGGER validate_name_description_insert BEFORE INSERT ON products
FOR EACH ROW BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both name and description are NULL';
  END IF;
END//

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  (NULL, NULL, 9360.00, 2)//

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('ASUS PRIME Z370-P', 'HDMI, SATA3, PCI Express 3.0,, USB 3.1', 9360.00, 2)//

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  (NULL, 'HDMI, SATA3, PCI Express 3.0,, USB 3.1', 9360.00, 2)//

CREATE TRIGGER validate_name_description_update BEFORE UPDATE ON products
FOR EACH ROW BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both name and description are NULL';
  END IF;
END//

-- 3.Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел.
--# Вызов функции FIBONACCI(10) должен возвращать число 55.

DELIMITER //

CREATE FUNCTION FIBONACCI(num INT)
RETURNS INT DETERMINISTIC
BEGIN
  DECLARE fs DOUBLE;
  SET fs = SQRT(5);

  RETURN (POW((1 + fs) / 2.0, num) + POW((1 - fs) / 2.0, num)) / fs;
END//

SELECT FIBONACCI(10)//
     

-- Дополнительные вопросы

-- Непонятно чем отличаются read committed от repeatable read
-- Рассмотрим некоторый запрос:

START TRANSACTION;
  INSERT INTO cities(id, name) 
    VALUES (1, 'London'), (2, 'Moscow'), (3, 'Tokio');
  SELECT * FROM cities;
COMMIT;

SELECT * FROM cities;

-- Уровни изоляции транзакции
-- READ UNCOMMITTED
-- READ COMMTITED
-- REPEATABLE READ
-- SERIALIZABLE


-- В чем разница между "=" и ":="

-- При работе с локальными переменными можно опускать префиксы?
-- Т.е. следующие выражения являются равнозначными?
-- Set session x =
-- Set @@session.x =
-- Set x =

-- Системные @@
-- Пользовательские или глобальные (в пределах сессии) @ 
-- Локальные (в пределах процедуры) без префикса, могут декларироваться DECLARE

SET @country = 'India';
SELECT @country := 'India';
SELECT @country = 'India';
SELECT @country = 'Japan';



-- Хранимые процедуры и функции на БД vk

-- 1. Создаём функцию

-- Направленность дружбы
-- Кол-во приглашений в друзья к пользователю
-- /
-- Кол-во приглашений в друзья от пользователя

-- Чем больше - популярность выше
-- Если значение меньше единицы - пользователь инициатор связей.

USE vk;

DROP FUNCTION IF EXISTS friendship_direction;

DELIMITER //
CREATE FUNCTION friendship_direction(check_user_id INT)
RETURNS FLOAT READS SQL DATA

  BEGIN
    
    DECLARE requests_to_user INT;
    DECLARE requests_from_user INT;
    
    SET requests_to_user = 
      (SELECT COUNT(*) 
        FROM friendship
          WHERE friend_id = check_user_id);
    
    SET requests_from_user = 
      (SELECT COUNT(*) 
        FROM friendship
          WHERE user_id = check_user_id);
    
    RETURN requests_to_user / requests_from_user;
  END//
  
DELIMITER ;

-- Пример использования для пользователя с id 7
SELECT TRUNCATE(friendship_direction(7), 2) AS friendship_direction;



-- 2. Создаём процедуру

-- Рассылка приглашений вида "Возможно, вам будет интересно пообщаться с ..."
-- Варианты:
-- из одного города
-- состоят в одной группе
-- друзья друзей
-- Из выборки показывать 5 человек в случайной комбинации.


DROP PROCEDURE IF EXISTS friendship_offers;

DELIMITER //

CREATE PROCEDURE friendship_offers (IN for_user_id INT)

  BEGIN 
    (
      SELECT pr2.user_id
        FROM profiles pr1
          JOIN profiles pr2
            ON pr1.hometown = pr2.hometown
        WHERE pr1.user_id = for_user_id
      
      UNION
      
      SELECT cu2.user_id
        FROM communities_users cu1
          JOIN communities_users cu2
            ON cu1.community_id = cu2.community_id
        WHERE cu1.user_id = for_user_id
      
      UNION
            
      SELECT DISTINCT fr2.user_id
        FROM friendship fr1
          JOIN friendship fr2
            ON fr1.user_id = fr2.user_id 
              OR fr1.friend_id = fr2.friend_id
              OR fr1.friend_id = fr2.user_id 
              OR fr1.user_id = fr2.friend_id
            WHERE fr1.user_id = for_user_id 
              OR fr1.friend_id = for_user_id 
            
      UNION
            
      SELECT DISTINCT fr2.friend_id
        FROM friendship fr1
          JOIN friendship fr2
            ON fr1.user_id = fr2.user_id 
              OR fr1.friend_id = fr2.friend_id
              OR fr1.friend_id = fr2.user_id 
              OR fr1.user_id = fr2.friend_id
            WHERE fr1.user_id = for_user_id 
              OR fr1.friend_id = for_user_id 
          
    )
        
    ORDER BY RAND()
    LIMIT 5;
     
END//
  
DELIMITER ;

CALL friendship_offers(1);

-- Просмотр функций и процедур
SHOW FUNCTION STATUS LIKE 'friendship_direction'\G
SHOW CREATE FUNCTION friendship_direction;

SHOW PROCEDURE STATUS LIKE 'friendship_offers'\G
SHOW CREATE PROCEDURE friendship_offers;


-- Индексы

SELECT id, firstname, lastname 
  FROM users 
    WHERE email = 'ullrich.adella@example.net';

-- Рассмотрим запрос из примера:
SELECT id, firstname, lastname 
  FROM users 
    WHERE email = 'ullrich.adella@example.net';
    
CREATE INDEX users_email_idx ON users(email);

-- Если нужно удалить
DROP INDEX users_email_idx ON users;

-- После этой операции MySQL начнет использовать индекс age для выполнения 
-- подобных запросов.

-- Сортировка
SELECT * FROM profiles ORDER BY birthday;

-- действует такое же правило — создаем индекс на колонку, по которой происходит 
-- сортировка:

CREATE INDEX profiles_birthday_idx ON profiles(birthday);

-- Внутренности хранения индексов
-- Представим, что наша таблица выглядит так:
SELECT id, firstname, lastname, email FROM users;

-- После создания индекса на колонку email, MySQL сохранит все ее значения в 
-- отсортированном виде:
users_email_idx
+-----------------------------+
| acarroll@example.net        |
| alvera.terry@example.org    |
| alyce76@example.com         |
| arianna46@example.net       |
| arielle.murazik@example.org |
| aurelio.abbott@example.org  |
| beatty.tommie@example.com   |
| bergnaum.asia@example.org   |
| bergnaum.donato@example.org |
| blaise68@example.org        |
+-----------------------------+

-- MySQL поддерживает также уникальные индексы. Это удобно для колонок, 
-- значения в которых должны быть уникальными по всей таблице. 

-- Такие индексы улучшают эффективность выборки для уникальных значений. 
SELECT * FROM users WHERE email = 'acarroll@example.net';

-- На колонку email необходимо создать уникальный индекс:
CREATE UNIQUE INDEX users_email_uq ON users(email);
DROP INDEX users_email_uq ON users;

-- Составные индексы
-- MySQL может использовать только один индекс для запроса (кроме случаев, 
-- когда MySQL способен объединить результаты выборок по нескольким индексам).

-- Рассмотрим такой запрос:
SELECT * FROM media WHERE user_id = 9 AND media_type_id = 3;

-- Нам следует создать составной индекс на обе колонки:
CREATE INDEX media_user_id_media_type_id_idx ON media(user_id, media_type_id);

-- Устройство составного индекса
-- media_user_id_media_type_id_idx
13
24
33
...

-- Сортировка
-- Составные индексы также можно использовать, если выполняется сортировка:
SELECT * FROM profiles WHERE sex = 'm' ORDER BY birthday;

-- В этом случае нам нужно будет создать индекс в порядке
-- WHERE ORDER BY



-- Оконные функции

-- Задача
-- Найти сколько занимают места медиафайлы в разрезе типов в процентном соотношении

-- Решаем традиционным способом, применяя агрегатные функции
SELECT media_types.name, 
  SUM(media.size) AS total_by_type,
  (SELECT SUM(size) FROM media) AS total_size,
  SUM(media.size)/(SELECT SUM(size) FROM media) * 100 AS "%%" 
    FROM media
      JOIN media_types
        ON media.media_type_id = media_types.id
    GROUP BY media.media_type_id;

-- Реализация используя агрегатные функции как оконные
SELECT DISTINCT media_types.name, 
  SUM(media.size) OVER(PARTITION BY media.media_type_id) AS total_by_type,
  SUM(media.size) OVER() AS total,
  SUM(media.size) OVER(PARTITION BY media.media_type_id) / SUM(media.size) OVER() * 100 AS "%%"
    FROM media
      JOIN media_types
        ON media.media_type_id = media_types.id;

-- Расширяем вывод
SELECT DISTINCT media_types.name,
  AVG(media.size) OVER(PARTITION BY media.media_type_id) AS average,
  MIN(media.size) OVER(PARTITION BY media.media_type_id) AS min,
  MAX(media.size) OVER(PARTITION BY media.media_type_id) AS max,
  SUM(media.size) OVER(PARTITION BY media.media_type_id) AS total_by_type,
  SUM(media.size) OVER() AS total,
  SUM(media.size) OVER(PARTITION BY media.media_type_id) / SUM(media.size) OVER() * 100 AS "%%"
    FROM media
      JOIN media_types
        ON media.media_type_id = media_types.id;

-- Выносим окно отдельно
SELECT DISTINCT media_types.name,
  AVG(media.size) OVER w AS average,
  MIN(media.size) OVER w AS min,
  MAX(media.size) OVER w AS max,
  SUM(media.size) OVER w AS total_by_type,
  SUM(media.size) OVER() AS total,
  SUM(media.size) OVER w / SUM(media.size) OVER() * 100 AS "%%"
    FROM (media
      JOIN media_types
        ON media.media_type_id = media_types.id)
        WINDOW w AS (PARTITION BY media.media_type_id);

-- Оконные функции не сворачивают вывод
-- Убираем DISTINCT
SELECT media_types.name,
  AVG(media.size) OVER w AS average,
  MIN(media.size) OVER w AS min,
  MAX(media.size) OVER w AS max,
  SUM(media.size) OVER w AS total_by_type,
  SUM(media.size) OVER() AS total,
  SUM(media.size) OVER w / SUM(media.size) OVER() * 100 AS "%%"
    FROM (media
      JOIN media_types
        ON media.media_type_id = media_types.id)
        WINDOW w AS (PARTITION BY media.media_type_id);

-- Применяем чистые оконные функции
SELECT id, name, created_at,
  ROW_NUMBER() OVER w AS 'row_number',
  FIRST_VALUE(name)  OVER w AS 'first',
  LAST_VALUE(name)   OVER w AS 'last',
  NTH_VALUE(name, 2) OVER w AS 'second'
    FROM regions
      WINDOW w AS (PARTITION BY LEFT(created_at, 3) ORDER BY created_at);   


