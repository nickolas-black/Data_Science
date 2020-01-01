-- Урок 12
-- Оптимизация запросов

-- Разбор ДЗ
-- Задания на БД vk:

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

-- Выводим имена пользователей        
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

-- Выносим определения некоторых окон
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


- одно из решений - использовать уже готовые значения: так сократится кол-во расчетов
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



-- Практическое задание тема "Оптимизация запросов"
-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users,
-- catalogs и products в таблицу logs помещается время и дата создания записи, название
-- таблицы, идентификатор первичного ключа и содержимое поля name.

CREATE TABLE Logs (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    table_name varchar(50) NOT NULL,
    row_id INT UNSIGNED NOT NULL,
    row_name varchar(255)
) ENGINE = Archive;

CREATE TRIGGER products_insert AFTER INSERT ON products
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, "products", NEW.id, NEW.name);
END;

CREATE TRIGGER users_insert AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, "users", NEW.id, NEW.name);
END;

CREATE TRIGGER catalogs_insert AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
    INSERT INTO Logs VALUES (NULL, DEFAULT, "catalogs", NEW.id, NEW.name);
END;

-- 2. (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
CREATE TABLE samples (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO samples (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29'),
  ('Аркадий', '1994-03-17'),
  ('Ольга', '1981-07-10'),
  ('Владимир', '1988-06-12'),
  ('Екатерина', '1992-09-20');

SELECT
  COUNT(*)
FROM
  samples AS fst,
  samples AS snd,
  samples AS thd,
  samples AS fth,
  samples AS fif,
  samples AS sth;

SELECT COUNT(*) FROM users;

SELECT * FROM users LIMIT 10;


-- Практическое задание тема "NoSQL"
-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
HINCRBY addresses '127.0.0.1' 1
HGETALL addresses

HINCRBY addresses '127.0.0.2' 1
HGETALL addresses

HGET addresses '127.0.0.1'

-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному
-- адресу и наоборот, поиск электронного адреса пользователя по его имени.
HSET emails 'igor' 'igorsimdyanov@gmail.com'
HSET emails 'sergey' 'sergey@gmail.com'
HSET emails 'olga' 'olga@mail.ru'

HGET emails 'igor'

HSET users 'igorsimdyanov@gmail.com' 'igor'
HSET users 'sergey@gmail.com' 'sergey'
HSET users 'olga@mail.ru' 'olga'

HGET users 'olga@mail.ru'

-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
-- Предлагаемый вариант

show dbs

use shop

db.createCollection('catalogs')
db.createCollection('products')

db.catalogs.insert({name: 'Процессоры'})
db.catalogs.insert({name: 'Мат.платы'})
db.catalogs.insert({name: 'Видеокарты'})

db.products.insert(
  {
    name: 'Intel Core i3-8100',
    description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
    price: 7890.00,
    catalog_id: new ObjectId("5b56c73f88f700498cbdc56b")
  }
);

db.products.insert(
  {
    name: 'Intel Core i5-7400',
    description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
    price: 12700.00,
    catalog_id: new ObjectId("5b56c73f88f700498cbdc56b")
  }
);

db.products.insert(
  {
    name: 'ASUS ROG MAXIMUS X HERO',
    description: 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',
    price: 19310.00,
    catalog_id: new ObjectId("5b56c74788f700498cbdc56c")
  }
);

db.products.find()

db.products.find({catalog_id: ObjectId("5b56c73f88f700498cbdc56bdb")})


-- Вопросы по предыдущему уроку
-- COVERING индексов

-- Оптимизация
-- Синтаксис EXPLAIN http://www.mysql.ru/docs/man/EXPLAIN.html
-- Сколько лайков получили десять самых старших пользователя
SELECT SUM(count) as total_likes 
  FROM (
		SELECT COUNT(DISTINCT likes.id) AS count
    FROM profiles
        LEFT JOIN media
            ON media.user_id = profiles.user_id
        LEFT JOIN posts
            ON posts.user_id = profiles.user_id
        LEFT JOIN likes
            ON (likes.target_id = profiles.user_id AND likes.target_type_id = 2)
               OR (likes.target_id = media.id AND likes.target_type_id = 3)
               OR (likes.target_id = posts.id AND likes.target_type_id = 4)
    GROUP BY profiles.user_id
    ORDER BY profiles.birthday
    LIMIT 10
		) AS likes_total;

-- Применяем EXPLAIN
EXPLAIN SELECT SUM(count) as total_likes 
  FROM (
		SELECT COUNT(DISTINCT likes.id) AS count
    FROM profiles
        LEFT JOIN media
            ON media.user_id = profiles.user_id
        LEFT JOIN posts
            ON posts.user_id = profiles.user_id
        LEFT JOIN likes
            ON (likes.target_id = profiles.user_id AND likes.target_type_id = 2)
               OR (likes.target_id = media.id AND likes.target_type_id = 3)
               OR (likes.target_id = posts.id AND likes.target_type_id = 4)
    GROUP BY profiles.user_id
    ORDER BY profiles.birthday
    LIMIT 10
		) AS likes_total;

-- Создаём индексы		
CREATE INDEX likes_target_id_idx ON likes(target_id);
CREATE INDEX profiles_birthday_idx ON profiles(birthday);

-- Удаляем индексы если нужно
DROP INDEX likes_target_id_idx ON likes;
DROP INDEX profiles_birthday_idx ON profiles;  

CREATE INDEX likes_target_id_target_type_id_idx 
  ON likes(target_id, target_type_id);
  
DROP INDEX likes_target_id_target_type_id_idx ON likes;

-- Документация по Workbench execution plan
-- Используем графический анализатор плана выполнения
-- https://dev.mysql.com/doc/workbench/en/wb-performance-explain.html

-- А если использовать вложенные запросы?
-- Сразу выбираем только нужных пользователей
SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10; 

-- Компонуем запрос
EXPLAIN SELECT SUM(count) as overall 
  FROM (
		SELECT COUNT(DISTINCT likes.id) AS count
    FROM profiles
        LEFT JOIN media
            ON media.user_id = profiles.user_id
        LEFT JOIN posts
            ON posts.user_id = profiles.user_id
        LEFT JOIN likes
            ON (likes.target_id = profiles.user_id AND likes.target_type_id = 3)
               OR (likes.target_id = media.id AND likes.target_type_id = 1)
               OR (likes.target_id = posts.id AND likes.target_type_id = 2)
    WHERE profiles.user_id IN (
      SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
    )
    GROUP BY profiles.user_id
		) AS likes_total;
		
-- Но не работает
-- Попробуем другим способом
EXPLAIN SELECT SUM(count) as overall 
  FROM (
		SELECT COUNT(DISTINCT likes.id) AS count
    FROM (
      SELECT * FROM profiles ORDER BY birthday LIMIT 10
    ) AS profiles_selected
        LEFT JOIN media
            ON media.user_id = profiles_selected.user_id
        LEFT JOIN posts
            ON posts.user_id = profiles_selected.user_id
        LEFT JOIN likes
            ON likes.target_id = profiles_selected.user_id AND likes.target_type_id = 3
               OR likes.target_id = media.id AND likes.target_type_id = 1
               OR likes.target_id = posts.id AND likes.target_type_id = 2
    GROUP BY profiles_selected.user_id
		) AS likes_total;


***Требования к курсовому проекту:

общее текстовое описание БД и решаемых ею задач;
минимальное количество таблиц - 10;
скрипты создания структуры БД (с первичными ключами, индексами, внешними ключами);
создать ERDiagram для БД;
скрипты наполнения БД данными;
скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы);
представления (минимум 2);
хранимые процедуры / триггеры;
...
Примеры: описать модель хранения данных популярного веб-сайта: кинопоиск, booking.com, wikipedia, интернет-магазин, geekbrains, госуслуги...

Думайте об этом задании, как о том, чем Вы похвастаетесь на своем следующем собеседовании.


