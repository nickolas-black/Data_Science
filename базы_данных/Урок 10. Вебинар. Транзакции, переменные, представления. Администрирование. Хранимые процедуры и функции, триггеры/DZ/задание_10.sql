-- 1. Проанализировать какие запросы могут выполняться наиболее часто в
-- процессе работы приложения и добавить необходимые индексы.

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый пожилой пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах 
-- (общее количество пользователей в группе /  всего пользователей в системе) * 100

SELECT DISTINCT 
  communities.name AS group_name,
  COUNT(communities_users.user_id) OVER() 
    / (SELECT COUNT(*) FROM communities) AS avg_users_in_groups,
  FIRST_VALUE(users.id) 
    OVER(PARTITION BY communities.id ORDER BY profiles.birthday DESC) AS youngest,
  FIRST_VALUE(users.id) 
    OVER(PARTITION BY communities.id ORDER BY profiles.birthday) AS oldest,
  COUNT(communities_users.user_id) 
    OVER(PARTITION BY communities.id) AS users_in_groups,
  COUNT(communities_users.user_id) OVER() AS users_total,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities.id) 
    / COUNT(communities_users.user_id) OVER() *100 AS '%%'
    FROM communities
      JOIN communities_users 
        ON communities_users.community_id = communities.id
      JOIN users 
        ON communities_users.user_id = users.id
      JOIN profiles 
        ON profiles.user_id = users.id;

-- имена пользователей        
SELECT DISTINCT 
  communities.name AS group_name,
  COUNT(communities_users.user_id) OVER() 
    / (SELECT COUNT(*) FROM communities) AS avg_users_in_groups,
  FIRST_VALUE(users.first_name) 
    OVER(PARTITION BY communities.id ORDER BY profiles.birthday DESC) AS youngest_first_name,
  FIRST_VALUE(users.last_name) 
    OVER(PARTITION BY communities.id ORDER BY profiles.birthday DESC) AS youngest_last_name,
  FIRST_VALUE(users.first_name) 
    OVER(PARTITION BY communities.id ORDER BY profiles.birthday) AS oldest_first_name,
  FIRST_VALUE(users.last_name) 
    OVER(PARTITION BY communities.id ORDER BY profiles.birthday) AS oldest_last_name,
  COUNT(communities_users.user_id) 
    OVER(PARTITION BY communities.id) AS users_in_groups,
  COUNT(communities_users.user_id) OVER() AS users_total,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities.id) 
    / COUNT(communities_users.user_id) OVER() *100 AS '%%'
    FROM communities
      JOIN communities_users 
        ON communities_users.community_id = communities.id
      JOIN users 
        ON communities_users.user_id = users.id
      JOIN profiles 
        ON profiles.user_id = users.id;        

-- определения некоторых окон
SELECT DISTINCT 
  communities.name AS group_name,
  COUNT(communities_users.user_id) OVER() 
    / (SELECT COUNT(*) FROM communities) AS avg_users_in_groups,
  FIRST_VALUE(users.first_name) 
    OVER birthday_desc AS youngest_first_name,
  FIRST_VALUE(users.last_name) 
    OVER birthday_desc AS youngest_last_name,
  FIRST_VALUE(users.first_name) 
    OVER birthday_asc AS oldest_first_name,
  FIRST_VALUE(users.last_name) 
    OVER birthday_asc AS oldest_last_name,
  COUNT(communities_users.user_id) 
    OVER(PARTITION BY communities.id) AS users_in_groups,
  COUNT(communities_users.user_id) OVER() AS users_total,
  COUNT(communities_users.user_id) OVER(PARTITION BY communities.id) 
    / COUNT(communities_users.user_id) OVER() *100 AS '%%'
    FROM communities
      JOIN communities_users 
        ON communities_users.community_id = communities.id
      JOIN users 
        ON communities_users.user_id = users.id
      JOIN profiles 
        ON profiles.user_id = users.id
      WINDOW birthday_desc AS (PARTITION BY communities.id ORDER BY profiles.birthday DESC),
             birthday_asc AS (PARTITION BY communities.id ORDER BY profiles.birthday);


-- 3. Задание на денормализацию
--- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

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

  
-- Правильно-ли он построен?
-- Какие изменения, включая денормализацию, можно внести в структуру БД
-- чтобы существенно повысить скорость работы этого запроса?
-- (Запросы ниже к нашей базе не применяем, код только для анализа)

-- В таблицу users нужно добавить столбец activity_count который будет увелиичиваться на 1 каждый раз когда 
--- пользователь выполняет какую-то активность. Увеличение activity_count можно реализовать с помощью триггера, только 

Denormalization 
ADD LIKES_COUNT COLUMN FOR TABLE MEDIA
Create Trigger that will add likes_count Column to the media Table

ADD TARGET_TYPES COLUMN FOR TABLE MEDIA


Create indexes  for user.id, likes.id, messagesid and media id 

For QUERIES use    FORCE INDEX () 


-- одно из решений - использовать уже готовые значения: так сократится кол-во расчетов
 create table messages_from_user (
select
	users.id,
	count(from_user_id) as number_of_messages
from
	messages
right join users on
	users.id = messages.from_user_id
group by
	users.id );

select
	*
from
	messages_from_user;

create table likes_from_user (
select
	users.id,
	count(user_id) as number_of_likes
from
	likes
right join users on
	users.id = likes.user_id
group by
	users.id );

select
	*
from
	likes_from_user;

create table media_from_user (
select
	users.id,
	count(user_id) as number_of_media
from
	media
right join users on
	users.id = media.user_id
group by
	users.id );

select
	*
from
	media_from_user;
-- итоговый запрос
 select
	users.id,
	number_of_messages + number_of_likes + number_of_media as activity
from
	users
left join media_from_user mfu on
	users.id = mfu.id
left join likes_from_user lfu on
	users.id = lfu.id
left join messages_from_user mesfu on
	users.id = mesfu.id
order by
	activity
limit 10;


--  Учитывая,  что запрос строиться по разным таблицам и их объединение не целесообразно
-- то кроме индексов на столбцы которые сладываюся если они не PRIMARY и внешних ключей
-- особо больше ничего на ум не приходит.
-- Запрос который был на семинаре на сколько я помню считал определённые медиа категории
-- (фото и т.д.) тогда тут возможно объединение таблицы media и media_types 
-- с и использование типа данных ENUM 

-- Т.к. мы работает с id пользователя и его днем рождения, то можно делать выборку
-- сразу из таблицы profiles
WITH rate_likes as (
    SELECT 
        count(l.id) as rate
    FROM profiles AS p
        LEFT JOIN media as m
            ON m.user_id = p.user_id
        LEFT JOIN messages as t
            ON t.from_user_id = p.user_id
        LEFT JOIN likes AS l ON    
                  l.item_id = p.user_id AND l.like_type_id = 2
               OR l.item_id = m.id      AND l.like_type_id = 1
               OR l.item_id = t.id      AND l.like_type_id = 3
    GROUP BY p.user_id
    ORDER BY p.birthday DESC
    LIMIT 10
)
SELECT SUM(rate) as overall FROM rate_likes;
-- Можно добавить индекс на (likes.item_id , likes.like_type_id), что ускорит выборку
CREATE INDEX rate_likes_item_id_like_type_id) ON (item_id, like_type_id);


-- Если это не помогает, тогда имеет смысл денормализовать таблицу лайков.
CREATE TABLE message_likes (
    messages_id INT,
    from_user_id INT,
    PRIMARY KEY (messages_id, from_user_id)
);

CREATE TABLE user_likes (
    to_user_id INT,
    from_user_id INT,
    PRIMARY KEY (to_user_id, from_user_id)
);

CREATE TABLE media_likes (
    media_id INT,
    from_user_id INT,
    PRIMARY KEY (media_id, from_user_id)
);
