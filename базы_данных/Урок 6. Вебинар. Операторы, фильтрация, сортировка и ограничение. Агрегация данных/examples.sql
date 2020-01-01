
-- Урок 6
-- Операторы, фильтрация, сортировка и ограничение

-- Разбор ДЗ

-- Тема Операции, задание 1
-- Пусть в таблице users поля created_at и updated_at оказались незаполненными.
-- Заполните их текущими датой и временем.
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME,
  updated_at DATETIME
) COMMENT = 'Покупатели';

INSERT INTO
  users (name, birthday_at, created_at, updated_at)
VALUES
  ('Геннадий', '1990-10-05', NULL, NULL),
  ('Наталья', '1984-11-12', NULL, NULL),
  ('Александр', '1985-05-20', NULL, NULL),
  ('Сергей', '1988-02-14', NULL, NULL),
  ('Иван', '1998-01-12', NULL, NULL),
  ('Мария', '2006-08-29', NULL, NULL);

UPDATE
  users
SET
  created_at = NOW(),
  updated_at = NOW();
  
  
-- Тема Операции, задание 2
-- Таблица users была неудачно спроектирована.
-- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались
-- значения в формате "20.10.2017 8:10".
-- Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO
  users (name, birthday_at, created_at, updated_at)
VALUES
  ('Геннадий', '1990-10-05', '07.01.2016 12:05', '07.01.2016 12:05'),
  ('Наталья', '1984-11-12', '20.05.2016 16:32', '20.05.2016 16:32'),
  ('Александр', '1985-05-20', '14.08.2016 20:10', '14.08.2016 20:10'),
  ('Сергей', '1988-02-14', '21.10.2016 9:14', '21.10.2016 9:14'),
  ('Иван', '1998-01-12', '15.12.2016 12:45', '15.12.2016 12:45'),
  ('Мария', '2006-08-29', '12.01.2017 8:56', '12.01.2017 8:56');

UPDATE
  users
SET
  created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
  updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');

ALTER TABLE
  users
CHANGE
  created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE
  users
CHANGE
  updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

DESCRIBE users;


-- Тема Операции, задание 3
-- В таблице складских запасов storehouses_products в поле value могут встречаться самые
-- разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы.
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения
-- значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.
DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

INSERT INTO
  storehouses_products (storehouse_id, product_id, value)
VALUES
  (1, 543, 0),
  (1, 789, 2500),
  (1, 3432, 0),
  (1, 826, 30),
  (1, 719, 500),
  (1, 638, 1);

SELECT
  *,
  IF(value > 0, 0, 1) AS if_value
FROM
  storehouses_products
ORDER BY
  IF(value > 0, 0, 1),
  value;
  
SELECT
  *
FROM
  storehouses_products
ORDER BY
  value = 0,
  value;

-- Тема Операции, задание 4
-- (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в
-- августе и мае. Месяцы заданы в виде списка английских названий ('may', 'august')

SELECT name  
  FROM users
  WHERE DATE_FORMAT(birthday_at, '%M') IN ('may', 'august');

-- Тема Операции, задание 5
-- (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса.
-- SELECT * FROM catalogs WHERE id IN (5, 1, 2);
-- Отсортируйте записи в порядке, заданном в списке IN.

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');

SELECT
  *
FROM
  catalogs
WHERE
  id IN (5, 1, 2)
ORDER BY
  FIELD(id, 5, 1, 2);

-- Тема Агрегация, задание 1
-- Подсчитайте средний возраст пользователей в таблице users
SELECT
  AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS age
FROM
  users;
	  
-- Тема Агрегация, задание 2
-- Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
-- Следует учесть, что необходимы дни недели текущего года, а не года рождения.
SELECT
  DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day,
  COUNT(*) AS total
FROM
  users
GROUP BY
  day
ORDER BY
  total DESC;

-- Тема Агрегация, задание 3
-- (по желанию) Подсчитайте произведение чисел в столбце таблицы
INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');

SELECT ROUND(EXP(SUM(LN(id)))) FROM catalogs;


-- Вопросы по предыдущему занятию
-- ALTER TABLE CHANGE и MODIFY
ALTER TABLE CHANGE and MODIFY
CHANGE может переименовать, MODIFY нет
ALTER TABLE users MODIFY COLUMN email VARCHAR(150) NOT NULL;
ALTER TABLE users CHANGE COLUMN mail email VARCHAR(150) NOT NULL;


-- UUID
SELECT UUID();

CREATE TABLE cities (
  id BINARY(16) PRIMARY KEY,
  name VARCHAR(255)
);

INSERT INTO cities (id, name)
  VALUES(UUID_TO_BIN(UUID()),'Moscow'),
        (UUID_TO_BIN(UUID()),'Paris'),
        (UUID_TO_BIN(UUID()),'Berlin');
      
SELECT
  BIN_TO_UUID(id) id,
  name
FROM
  cities;  
  
DROP TABLE cities;  
  


-- Варианты реализации лайков

CREATE TABLE likes (
  id INT UNSIGNED NOT AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  to_user_id INT UNSIGNED NOT NULL,
  to_media_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

/* Создавать отдельную таблицу необходимости пока не вижу */
-- введениие лайков в сообщения
ALTER TABLE messages ADD COLUMN is_likes BOOLEAN;
-- введение лайков в медиа 
ALTER TABLE media ADD COLUMN is_likes BOOLEAN;

-- Реализация в виде счётчика
CREATE TABLE media (
...
likes INT UNSIGNED NULL
);

ALTER TABLE messages add COLUMN liked_by_sender BOOLEAN DEFAULT false after is_delivered;
ALTER TABLE messages add COLUMN liked_by_recipient BOOLEAN DEFAULT false after is_delivered;

-- Варианты с отдельными столбцами для каждой сущности
CREATE TABLE users_likes (
  user_id_send INT UNSIGNED NOT NULL,
  user_id_get INT UNSIGNED NOT NULL,
  photo_id INT UNSIGNED,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE likes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id INT UNSIGNED NOT NULL, -- кто поставил
    media_id INT UNSIGNED NOT NULL,
    is_hidden BOOLEAN, -- скрыть от всех, кроме хозяина сущности, на которую ставится лайк
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
    );
    
CREATE TABLE likes (
  media_id INT UNSIGNED DEFAULT 0,
  user_like_id INT UNSIGNED DEFAULT 0, -- the one who likes something,
  like_status BOOLEAN DEFAULT FALSE,
  PRIMARY KEY (media_id, user_like_id)
  );

CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(9) unsigned DEFAULT NULL,
  `user_id` int(9) unsigned NOT NULL,
  `dislike` int(1) NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`)
);

create table likes (
-- айди лайка
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 -- айди медиа, с таблицы медиа, может повторяться
 media_id INT UNSIGNED NOT NULL,
 -- кто лайкнул, с таблицы юзерсов, так же может повторяться
 user_id int unsigned not null,
 -- дата лайка
 liked_at datetime
);

CREATE TABLE liked_media (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    media_id INT UNSIGNED NOT NULL,
    liked_by_user_id INT UNSIGNED NOT NULL,
    liked_at TIMESTAMP DEFAULT current_timestamp);    


-- Вариант с таблицей типов лайков
CREATE TABLE likes (
  id SERIAL PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  like_type_id INT UNSIGNED NOT NULL,
  is_positive BOOLEAN NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  object_id INT UNSIGNED NOT NULL,
  object_type INT UNSIGNED NOT NULL
);

-- Ещё один интересный вариант
CREATE TABLE likes (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
from_user_id INT UNSIGNED NOT NULL,
id_media INT UNSIGNED NOT NULL,
id_likes_type INT UNSIGNED NOT NULL,  
created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE likes_types (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
likes_type VARCHAR(100)
);

INSERT INTO likes_types (likes_type) VALUES 
  ('smile'),
  ('angry'),
  ('bohring'),
  ('What?'),
  ('Good')
;

-- Немного изменим и применим
-- Таблица лайков
DROP TABLE IF EXISTS likes;
CREATE TABLE likes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  target_id INT UNSIGNED NOT NULL,
  target_type_id INT UNSIGNED NOT NULL,
  like_type_id INT UNSIGNED NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Таблица типов лайков
DROP TABLE IF EXISTS target_types;
CREATE TABLE target_types (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO target_types (name) VALUES 
  ('message'),
  ('user'),
  ('media'),
  ('post');

DROP TABLE IF EXISTS like_types;  
CREATE TABLE like_types (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100)
);

INSERT INTO like_types (name) VALUES 
  ('smile'),
  ('angry'),
  ('bohring'),
  ('What?'),
  ('Good');

-- Заполняем лайки
INSERT INTO likes 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 4)),
    FLOOR(1 + (RAND() * 5)),
    CURRENT_TIMESTAMP 
  FROM messages;

-- Проверим
SELECT * FROM likes LIMIT 10;


-- Реализация постов
DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	user_id INT UNSIGNED NOT NULL,
  header VARCHAR(255),
  body TEXT,
  attached_media_id INT UNSIGNED,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO posts
	SELECT
		id,
    FLOOR(1 + (RAND() * 100)),
    header,
    body,
    NULL,
    CURRENT_TIMESTAMP
	FROM messages;

UPDATE posts SET attached_media_id = FLOOR(1 + (RAND() * 100)) 
  WHERE id IN (8,52,89,5,15);

SELECT * FROM posts LIMIT 10;




-- Примеры на основе базы данных vk
USE vk;

-- Получаем данные пользователя
SELECT * FROM users WHERE id = 3;

SELECT first_name, last_name, 'main_photo', 'city' FROM users WHERE id = 3;

SELECT
  first_name,
  last_name,
  (SELECT filename FROM media WHERE id = 
    (SELECT photo_id FROM profiles WHERE user_id = 3)
  ) AS filename,
  (SELECT hometown FROM profiles WHERE user_id = 3) AS hometown
  FROM users
    WHERE id = 3;           

-- Получаем фотографии пользователя
SELECT filename FROM media
  WHERE user_id = 3
    AND media_type_id = (
      SELECT id FROM media_types WHERE name = 'photo'
    );
    
SELECT * FROM media_types;

-- Выбираем историю по добавлению фотографий пользователем
SELECT CONCAT(
  'Пользователь добавил фото ', 
  filename, 
  ' ', 
  created_at) AS news 
    FROM media 
    WHERE user_id = 3 
      AND media_type_id = (
        SELECT id FROM media_types WHERE name LIKE 'photo'
);

-- Улучшаем запрос
SELECT CONCAT(
  'Пользователь ', 
  (SELECT CONCAT(first_name, ' ', last_name)
    FROM users WHERE id = 3),
  ' добавил фото ', 
  filename, ' ', 
  created_at) AS news 
    FROM media 
    WHERE user_id = 3 
      AND media_type_id = (
        SELECT id FROM media_types WHERE name LIKE 'photo'
);

-- Найдём кому принадлежат 10 самых больших медиафайлов
SELECT user_id, filename, size 
  FROM media 
  ORDER BY size DESC
  LIMIT 10;

-- Улучшим запрос
SELECT 
  (SELECT CONCAT(first_name, ' ', last_name) 
    FROM users u 
      WHERE u.id = m.user_id) AS owner,
  filename, 
  size 
    FROM media m
    ORDER BY size DESC
    LIMIT 10;
  
 -- Выбираем друзей пользователя
(SELECT friend_id FROM friendship WHERE user_id = 3)
UNION
(SELECT user_id FROM friendship WHERE friend_id = 3);

-- Выбираем только друзей с активным статусом
SELECT * FROM friendship_statuses;

(SELECT friend_id 
  FROM friendship 
  WHERE user_id = 3
    AND confirmed_at IS NOT NULL 
    AND status_id IN (
      SELECT id FROM friendship_statuses 
        WHERE name != 'Rejected'
    )
)
UNION
(SELECT user_id 
  FROM friendship 
  WHERE friend_id = 3
    AND confirmed_at IS NOT NULL 
    AND status_id IN (
      SELECT id FROM friendship_statuses 
        WHERE name != 'Rejected'
    )
);


-- Выбираем медиафайлы друзей
SELECT filename FROM media WHERE user_id IN (
  (SELECT friend_id 
  FROM friendship 
  WHERE user_id = 3
    AND confirmed_at IS NOT NULL 
    AND status_id IN (
      SELECT id FROM friendship_statuses 
        WHERE name != 'Rejected'
    )
  )
  UNION
  (SELECT user_id 
    FROM friendship 
    WHERE friend_id = 3
      AND confirmed_at IS NOT NULL 
      AND status_id IN (
      SELECT id FROM friendship_statuses 
        WHERE name != 'Rejected'
    )
  )
);

-- Объединяем медиафайлы пользователя и его друзей для создания ленты новостей
SELECT filename, user_id, created_at FROM media WHERE user_id = 3
UNION
SELECT filename, user_id, created_at FROM media WHERE user_id IN (
  (SELECT friend_id 
  FROM friendship 
  WHERE user_id = 3
    AND confirmed_at IS NOT NULL 
    AND status_id IN (
      SELECT id FROM friendship_statuses 
        WHERE name != 'Rejected'
    )
  )
  UNION
  (SELECT user_id 
    FROM friendship 
    WHERE friend_id = 3
      AND confirmed_at IS NOT NULL 
      AND status_id IN (
      SELECT id FROM friendship_statuses 
        WHERE name != 'Rejected'
    )
  )
);

-- Определяем пользователей, общее занимаемое место медиафайлов которых 
-- превышает 100МБ

SELECT user_id, SUM(size) AS total
  FROM media
  GROUP BY user_id
  HAVING total > 100000000
  ORDER BY total DESC;

-- Подсчитываем лайки для фотографий пользователя и его друзей

SELECT target_id AS mediafile, COUNT(*) AS likes 
  FROM likes 
    WHERE target_id IN (
      SELECT id FROM media WHERE user_id = 3
        UNION
      SELECT id FROM media WHERE user_id IN (
        SELECT friend_id 
          FROM friendship 
            WHERE user_id = 3 
              AND status_id IN (
                SELECT id FROM friendship_statuses 
                  WHERE name != 'Rejected'
              ))
    )
    AND target_type_id = (SELECT id FROM target_types WHERE name = 'photo')
    GROUP BY target_id;


-- Начинаем создавать архив новостей для медиафайлов по месяцам
SELECT COUNT(id) AS arhive, MONTHNAME(created_at) AS month 
  FROM media
  GROUP BY month;
  
-- Архив с правильной сортировкой новостей по месяцам
SELECT COUNT(id) AS news, MONTHNAME(created_at) AS month 
  FROM media
  WHERE YEAR(created_at) = YEAR(NOW())
  GROUP BY month
  ORDER BY MONTH(created_at) DESC;

SELECT COUNT(id) AS news, MONTHNAME(created_at) AS month   
  FROM media
  GROUP BY month
  ORDER BY MONTH(created_at) DESC;
    

-- Выбираем сообщения от пользователя и к пользователю
SELECT from_user_id, to_user_id, body, is_delivered, created_at 
  FROM messages
    WHERE from_user_id = 3
      OR to_user_id = 3
    ORDER BY created_at DESC;
    
-- Непрочитанные сообщения
SELECT from_user_id, 
  to_user_id, 
  body, 
  IF(is_delivered, 'delivered', 'not delivered') AS status 
    FROM messages
      WHERE (from_user_id = 3 OR to_user_id = 3)
        AND is_delivered IS NOT TRUE
    ORDER BY created_at DESC;
    
 -- Выводим друзей пользователя с преобразованием пола и возраста 
SELECT 
    (SELECT CONCAT(first_name, ' ', last_name) 
      FROM users 
      WHERE id = user_id) AS friend, 
      
    CASE (sex)
      WHEN 'm' THEN 'man'
      WHEN 'f' THEN 'women'
    END AS sex,
    
    TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age
     
  FROM profiles
  
  WHERE user_id IN (
    SELECT friend_id 
    
      FROM friendship
      WHERE user_id = 3
        AND confirmed_at IS NOT NULL
        AND status_id IN (
          SELECT id FROM friendship_statuses 
            WHERE name != 'Rejected'
          )
  );
    
-- Поиск пользователя по шаблонам имени  
SELECT CONCAT(first_name, ' ', last_name) AS fullname  
  FROM users
  HAVING fullname LIKE 'M%';
  
-- Используем регулярные выражения
SELECT CONCAT(first_name, ' ', last_name) AS fullname  
  FROM users
  HAVING fullname RLIKE '^M.*s$';
  
  
    