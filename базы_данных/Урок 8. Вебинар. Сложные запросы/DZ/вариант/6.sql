
-- Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение. Агрегация данных”
-- Колеганво Николай Дмитриевич
--2.	Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.


-- Выберем id друзей
SELECT * FROM friendship WHERE user_id = 32 OR friend_id = 32;

-- В один столбец
SELECT friend_id AS id FROM friendship WHERE user_id = 32
UNION
SELECT user_id AS id FROM friendship WHERE friend_id = 32;

-- Выбираем id отправителей сообщений
SELECT from_user_id FROM messages 
  WHERE to_user_id = 32 
    AND from_user_id IN (
      SELECT friend_id AS id FROM friendship WHERE user_id = 32
      UNION
      SELECT user_id AS id FROM friendship WHERE friend_id = 32    
);

-- Добавляем имя
SELECT (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = from_user_id) AS friend 
  FROM messages 
    WHERE to_user_id = 32 
      AND from_user_id IN (
        SELECT friend_id AS id FROM friendship WHERE user_id = 32
        UNION
        SELECT user_id AS id FROM friendship WHERE friend_id = 32    
);

-- Добавляем подсчёт и сортировку
SELECT (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = from_user_id) AS friend,
  COUNT(*) AS total_messages 
  FROM messages 
    WHERE to_user_id = 32 
      AND from_user_id IN (
        SELECT friend_id AS id FROM friendship WHERE user_id = 32
        UNION
        SELECT user_id AS id FROM friendship WHERE friend_id = 32    
        )
    GROUP BY messages.from_user_id
    ORDER BY total_messages DESC
    LIMIT 1
;

-- Последние правки
SELECT (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = from_user_id) AS friend,
  COUNT(*) AS total_messages 
  FROM messages 
    WHERE to_user_id = 32 
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
SELECT * FROM likes WHERE target_type_id = 7;

-- Объединяем, но так не работает
SELECT * FROM likes WHERE target_type_id = 7
  AND target_id IN (
    SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
  )
;

-- Идём обходным путём
SELECT target_id, COUNT(*) FROM likes 
  WHERE target_type_id = 7
    AND target_id IN (SELECT * FROM (
      SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
    ) AS sorted_profiles ) 
    GROUP BY target_id
;

-- Суммируем для всех пользователей
SELECT SUM(likes_per_user) AS likes_total FROM ( 
  SELECT COUNT(*) AS likes_per_user 
    FROM likes 
      WHERE target_type_id = 7
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
	