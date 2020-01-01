-- Урок 8
-- Сложные запросы, JOIN
-- Внешние ключи


-- Разбор ДЗ
-- 2.Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим 
-- пользоваетелем.

-- Выберем id друзей
SELECT * FROM friendship WHERE user_id = 52 OR friend_id = 52;

-- В один столбец
SELECT friend_id AS id FROM friendship WHERE user_id = 52
UNION
SELECT user_id AS id FROM friendship WHERE friend_id = 52;

-- Выбираем id отправителей сообщений
SELECT from_user_id FROM messages 
  WHERE to_user_id = 52 
    AND from_user_id IN (
      SELECT friend_id AS id FROM friendship WHERE user_id = 52
      UNION
      SELECT user_id AS id FROM friendship WHERE friend_id = 52    
);

-- Добавляем имя
SELECT (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = from_user_id) AS friend 
  FROM messages 
    WHERE to_user_id = 52 
      AND from_user_id IN (
        SELECT friend_id AS id FROM friendship WHERE user_id = 52
        UNION
        SELECT user_id AS id FROM friendship WHERE friend_id = 52    
);

-- Добавляем подсчёт и сортировку
SELECT (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = from_user_id) AS friend,
  COUNT(*) AS total_messages 
  FROM messages 
    WHERE to_user_id = 52 
      AND from_user_id IN (
        SELECT friend_id AS id FROM friendship WHERE user_id = 52
        UNION
        SELECT user_id AS id FROM friendship WHERE friend_id = 52    
        )
    GROUP BY messages.from_user_id
    ORDER BY total_messages DESC
    LIMIT 1
;

-- Последние правки
SELECT (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = from_user_id) AS friend,
  COUNT(*) AS total_messages 
  FROM messages 
    WHERE to_user_id = 52 
      AND from_user_id IN (
        SELECT friend_id AS id 
          FROM friendship 
            WHERE user_id = messages.to_user_id
        UNION
        SELECT user_id AS id 
          FROM friendship 
            WHERE friend_id = messages.to_user_id    
        )
    GROUP BY messages.from_user_id
    ORDER BY total_messages DESC
    LIMIT 1
;

-- 3. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

-- Смотрим типы для лайков
SELECT * FROM target_types;

-- Выбираем профили с сортировкой по дате рождения
SELECT * FROM profiles ORDER BY birthday DESC LIMIT 10;

-- Выбираем лайки по типу пользователь
SELECT * FROM likes WHERE target_type_id = 3;

-- Объединяем, но так не работает
SELECT * FROM likes WHERE target_type_id = 3
  AND target_id IN (
    SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
  )
;

-- Идём обходным путём
SELECT target_id, COUNT(*) FROM likes 
  WHERE target_type_id = 3
    AND target_id IN (SELECT * FROM (
      SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
    ) AS sorted_profiles ) 
    GROUP BY target_id
;

-- Суммируем для всех пользователей
SELECT SUM(likes_per_user) AS likes_total FROM ( 
  SELECT COUNT(*) AS likes_per_user 
    FROM likes 
      WHERE target_type_id = 2
        AND target_id IN (
          SELECT * FROM (
            SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
          ) AS sorted_profiles 
        ) 
      GROUP BY target_id
) AS counted_likes;

-- Ещё один вариант, в котором учитываются все лайки
SELECT
  user_id,
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = p.user_id) AS name, 
  birthday, 
  (SELECT COUNT(target_id) FROM likes WHERE target_id in (
      SELECT id FROM media WHERE user_id = p.user_id)
  ) AS total_like 
  FROM profiles p
  ORDER BY birthday DESC
  LIMIT 10;

-- 4. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT CASE(sex)
		WHEN 'm' THEN 'man'
		WHEN 'f' THEN 'woman'
	END AS sex, 
	COUNT(*) as likes_count 
	  FROM (
	    SELECT 
	      user_id as user, 
		    (SELECT sex FROM profiles WHERE user_id = user) as sex 
		  FROM likes) dummy_table 
  GROUP BY sex
  ORDER BY likes_count
  LIMIT 1;
  
  -- 5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной 
-- сети.     
SELECT CONCAT(first_name, ' ', last_name) AS user, 
	(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) + 
	(SELECT COUNT(*) FROM media WHERE media.user_id = users.id) + 
	(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) 
	AS overall_activity 
	FROM users
	ORDER BY overall_activity
	LIMIT 10;
	
	

-- Вопросы по предыдущему уроку
-- Рассмотреть
SELECT
  *
FROM
  storehouses_products
ORDER BY
  IF(value > 0, 0, 1),
  value;
  
SELECT
  IF(value > 0, 0, 1),
  value 
FROM
  storehouses_products
ORDER BY
  IF(value > 0, 0, 1),
  value;
  
SELECT
  IF(value > 0, 0, 1) AS check_value, 
  value
FROM
  storehouses_products
ORDER BY
  check_value;
  
SELECT
  value = 0  AS check_value,
  value
FROM
  storehouses_products
ORDER BY
  check_value;
  
	
	
-- Добавляем внешние ключи в БД vk
-- Для таблицы профилей

-- Смотрим структурв таблицы
DESC profiles;

-- Добавляем внешние ключи
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;

-- Изменяем тип столбца при необходимости
ALTER TABLE profiles DROP FOREIGN KEY profles_user_id_fk;
ALTER TABLE profiles MODIFY COLUMN photo_id INT(10) UNSIGNED;
      
-- Для таблицы сообщений

-- Смотрим структурв таблицы
DESC messages;

-- Добавляем внешние ключи
ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);

-- Смотрим ERDiagram


-- Если нужно удалить
ALTER TABLE table_name DROP FOREIGN KEY constraint_name;


-- Использование JOIN

USE shop;

-- CROSS JOIN
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users
    CROSS JOIN orders;

-- Неявный JOIN (ведёт себя как CROSS JOIN)
SELECT users.*, orders.* FROM users, orders;

SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users, orders;
  
-- Неявный JOIN с условием (ведёт себя как INNER JOIN) 
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users, orders
  WHERE users.id = orders.user_id;

-- Указание связи с помощью ON  
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users
    JOIN orders
  ON users.id = orders.user_id;
  
-- INNER JOIN с явным указанием типа
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users
    INNER JOIN orders
  ON users.id = orders.user_id;
  
-- INNER JOIN с агрегирующей функцией
-- Подсчёт заказов пользователя  
SELECT users.name, COUNT(orders.user_id) AS total_orders
  FROM users
    JOIN orders
  ON users.id = orders.user_id
  GROUP BY orders.user_id
  ORDER BY total_orders;
  
-- Аналогично запросу выше, но с сокращением записи имён таблиц
SELECT u.name, COUNT(o.user_id) AS total_orders
  FROM users u
    JOIN orders o
  ON u.id = o.user_id
  GROUP BY o.user_id
  ORDER BY total_orders;
  
-- LEFT OUTER JOIN (LEFT JOIN)
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id 
  FROM users
    LEFT OUTER JOIN orders
  ON users.id = orders.user_id;
  
-- Пользователи, у которых нет заказов
-- Подумайте, какой тип JOIN тут нужен  
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id 
  FROM users
    LEFT OUTER JOIN orders
  ON users.id = orders.user_id
  WHERE orders.id IS NULL;

-- То же самое
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id 
  FROM users
    LEFT JOIN orders
  ON users.id = orders.user_id
  WHERE orders.id IS NULL;
  
-- RIGHT OUTER JOIN (RIGHT JOIN)
SELECT users.id AS id_from_users, users.name, users.birthday_at, orders.id AS id_from_orders, orders.user_id 
  FROM users
    LEFT JOIN orders
  ON users.id = orders.user_id;

-- Сравним два варианта ниже   
  
SELECT users.id AS id_from_users, users.name, users.birthday_at, orders.id AS id_from_orders, orders.user_id 
  FROM users
    RIGHT JOIN orders
  ON users.id = orders.user_id;  

-- FULL JOIN
SELECT *
  FROM users
    FULL JOIN orders;



-- Запросы на БД Vk
USE vk;

-- Выборка данных по пользователю
SELECT first_name, last_name, email, sex, birthday, hometown
  FROM users
    INNER JOIN profiles
      ON users.id = profiles.user_id
  WHERE users.id = 1;

-- Выборка медиафайлов пользователя
SELECT media.user_id, media.filename, media.created_at
  FROM media
    JOIN users
      ON media.user_id = users.id     
  WHERE media.user_id = 1;
  
-- Выборка фотографий пользователя
SELECT media.user_id, media.filename, media.created_at
  FROM media
    JOIN users
      ON media.user_id = users.id
    JOIN media_types
      ON media.media_type_id = media_types.id     
  WHERE media.user_id = 3 AND media_types.id = 
    (SELECT id FROM media_types WHERE name = 'photo');
  
-- Выборка медиафайлов друзей пользователя
SELECT DISTINCT media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
      ON media.user_id = friendship.user_id
        OR media.user_id = friendship.friend_id
    JOIN users 
      ON users.id = friendship.friend_id
        OR users.id = friendship.user_id   
  WHERE users.id = 6;

-- Проверка
SELECT user_id, friend_id FROM friendship WHERE user_id = 6 OR friend_id = 6;
SELECT * FROM media WHERE user_id IN (92, 99);

-- Выборка фотографий друзей пользователя
SELECT DISTINCT media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
      ON media.user_id = friendship.user_id
        OR media.user_id = friendship.friend_id
    JOIN media_types
      ON media.media_type_id = media_types.id
    JOIN users 
      ON users.id = friendship.friend_id
        OR users.id = friendship.user_id   
  WHERE users.id = 7 AND media_types.id = 1;

-- Проверка
 SELECT * FROM media_types;

SELECT user_id, friend_id FROM friendship WHERE user_id = 7 OR friend_id = 7;
SELECT * FROM media WHERE media_type_id = 1 AND user_id IN (10, 85);

-- Сообщения от пользователя
SELECT messages.body, users.first_name, users.last_name, messages.created_at
  FROM messages
    JOIN users
      ON users.id = messages.to_user_id
  WHERE messages.from_user_id = 7;

-- Сообщения к пользователю
SELECT body, first_name, last_name, messages.created_at
  FROM messages
    JOIN users
      ON users.id = messages.from_user_id
  WHERE messages.to_user_id = 7;
  
-- Объединяем все сообщения от пользователя и к пользователю
SELECT messages.from_user_id, messages.to_user_id, messages.body, messages.created_at
  FROM users
    JOIN messages
      ON users.id = messages.to_user_id
        OR users.id = messages.from_user_id
  WHERE users.id = 7;

-- Количество друзей у пользователя с сортировкой
SELECT users.id, first_name, last_name, COUNT(*) AS total_friends
  FROM users
    LEFT JOIN friendship
      ON users.id = friendship.user_id
        OR users.id = friendship.friend_id
  GROUP BY users.id
  ORDER BY total_friends DESC;

-- Проверка
SELECT * FROM friendship WHERE user_id = 96 OR friend_id = 96;

-- Количество друзей у пользователя с определённым статусом с сортировкой
SELECT id, first_name, last_name, COUNT(users.id) AS total_friends
  FROM users
    LEFT JOIN friendship
      ON (users.id = friendship.user_id
        OR users.id = friendship.friend_id)
        AND friendship.status_id = 1
  GROUP BY users.id
  ORDER BY total_friends DESC;
  
-- Проверка
SELECT * FROM friendship WHERE (user_id = 72 OR friend_id = 72) AND status_id = 1;

-- Список медиафайлов пользователя с количеством лайков
SELECT likes.target_id,
  media.filename,
  target_types.name AS target_type,
  COUNT(DISTINCT(likes.target_id)) AS total_likes,
  CONCAT(first_name, ' ', last_name) AS owner
  FROM media
    LEFT JOIN likes
      ON media.id = likes.target_id
    LEFT JOIN target_types
      ON likes.target_type_id = target_types.id
    LEFT JOIN users
      ON users.id = media.user_id
  WHERE users.id = 77 AND target_types.id = 3
  GROUP BY media.id;

-- Проверка
SELECT * FROM likes WHERE target_id = 35;
SELECT id, user_id FROM media WHERE id = 35;

-- 10 пользователей с наибольшим количеством лайков за медиафайлы
SELECT users.id, first_name, last_name, COUNT(*) AS total_likes
  FROM users
    JOIN media
      ON users.id = media.user_id
    JOIN likes
      ON media.id = likes.target_id
    JOIN target_types
      ON likes.target_type_id = target_types.id
  WHERE target_types.id = 3
  GROUP BY users.id
  ORDER BY total_likes DESC
  LIMIT 10;

SELECT * FROM likes 
  WHERE target_type_id = 1 
    AND target_id IN (SELECT id FROM media WHERE user_id = 77);
SELECT id, user_id FROM media WHERE id = 57;


-- Рекомендуемый стиль написания кода SQL
-- https://www.sqlstyle.guide/ru/

