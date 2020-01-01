
-- Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение. Агрегация данных”



-- 1.	Проанализировать запросы, которые выполнялись на занятии, определить возможные корректировки и/или улучшения (JOIN пока не применять).

-- Получаем данные пользователя

SELECT * FROM users WHERE id = 7;

SELECT first_name, last_name, 'main_photo', 'city' FROM users WHERE id = 7;

SELECT
  first_name,
  last_name,
  (SELECT filename FROM media WHERE id = 
    (SELECT photo_id FROM profiles WHERE user_id = 7)
  ) AS filename,
  (SELECT hometown FROM profiles WHERE user_id = 7) AS hometown
  FROM users
    WHERE id = 7;           


	-- Получаем фотографии пользователя
SELECT filename FROM media
  WHERE user_id = 7
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
    WHERE user_id = 7 
      AND media_type_id = (
        SELECT id FROM media_types WHERE name LIKE 'photo'
);

-- Улучшаем запрос
SELECT CONCAT(
  'Пользователь ', 
  (SELECT CONCAT(first_name, ' ', last_name)
    FROM users WHERE id = 7),
  ' добавил фото ', 
  filename, ' ', 
  created_at) AS news 
    FROM media 
    WHERE user_id = 7 
      AND media_type_id = (
        SELECT id FROM media_types WHERE name LIKE 'photo'
);


--2.	Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем.

  
SELECT from_user_id, to_user_id, body, is_delivered, created_at 
  FROM messages
    WHERE from_user_id = 7
      OR to_user_id = 7
    ORDER BY created_at DESC;


-- 3.	Подсчитать общее количество лайков, которые получили 10.

SELECT target_id AS mediafile, COUNT(*) AS likes 
  FROM likes 
    WHERE target_id IN (
      SELECT id FROM media WHERE user_id = 7
        UNION
      SELECT id FROM media WHERE user_id IN (
        SELECT friend_id 
          FROM friendship 
            WHERE user_id = 7 
              AND status_id IN (
                SELECT id FROM friendship_statuses 
                  WHERE name != 'Rejected'
              ))
    )
    AND target_type_id = (SELECT id FROM target_types WHERE name = 'photo')
    ORDER BY target_id DESC;



--4.	Определить кто больше поставил лайков (всего) - мужчины или женщины?

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
      WHERE user_id = 7
        AND confirmed_at IS NOT NULL
        AND status_id IN (
          SELECT id FROM friendship_statuses 
            WHERE name != 'Rejected'
          )
  )
   ORDER BY user_id DESC;


--5.	Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

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
)
ORDER BY user_id DESC;;





