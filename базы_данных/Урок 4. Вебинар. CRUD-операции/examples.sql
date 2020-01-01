-- Урок 4
-- CRUD операции


-- Работа с БД vk
-- Загружаем дамп консольным клиентом
DROP DATABASE vk;
CREATE DATABASE vk;

-- Переходим в папку с дампом (/home/ubuntu)
-- mysql -u root -p vk < vk.dump.sql

-- Дорабатываем тестовые данные
SHOW TABLES;

-- users
SELECT * FROM users LIMIT 10;

-- profiles
SELECT * FROM profiles LIMIT 10;

CREATE TEMPORARY TABLE sex (sex CHAR(1));
INSERT INTO sex VALUES ('m'), ('f');
UPDATE profiles SET sex = (SELECT sex FROM sex ORDER BY RAND() LIMIT 1);

SHOW TABLES;
-- messages
SELECT * FROM messages LIMIT 10;
UPDATE messages SET
  from_user_id = FLOOR(1 + (RAND() * 100)),
  to_user_id = FLOOR(1 + (RAND() * 100))
;

-- media_types
SELECT * FROM media_types LIMIT 10;
DELETE FROM media_types;
TRUNCATE media_types;

INSERT INTO media_types (name) VALUES
  ('photo'),
  ('video'),
  ('audio')
;

UPDATE media SET media_type_id = FLOOR(1 + (RAND() * 3));

-- media
SELECT * FROM media LIMIT 10;
UPDATE media SET user_id = FLOOR(1 + (RAND() * 100));
UPDATE media SET metadata = CONCAT('{"', filename, '":"', size, '"}');
ALTER TABLE media MODIFY COLUMN metadata JSON;

-- friendship
SELECT * FROM friendship LIMIT 10;
UPDATE friendship SET
  user_id = FLOOR(1 + (RAND() * 100)),
  friend_id = FLOOR(1 + (RAND() * 100))
;

DESC friendship;

-- communities
SELECT * FROM communities LIMIT 10;

-- communities_users
SELECT * FROM communities_users LIMIT 10;
SELECT * FROM communities ORDER BY id DESC LIMIT 1;
UPDATE communities_users SET
  community_id = FLOOR(1 + (RAND() * 100)),
  user_id = FLOOR(1 + (RAND() * 100))
;



-- Предложения по доработке структуры БД vk

-- 1. По структуре неясно откуда подтягивается значение photo_id в таблице profiles. 
-- Предлагаю создать дополнительно к таблице с медиа отдельную таблицу фото.

-- Таблица фото
CREATE TABLE photo (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
media_type_id INT UNSIGNED NOT NULL,
user_id INT UNSIGNED NOT NULL,
filename VARCHAR(255) NOT NULL,
size INT NOT NULL,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

-- Когда укажем внешний ключ,связь будет определена явно


-- 2. Наверное дальнейшее развитие нашей БД можно начать с добавления
-- таблицы соответствия медиафайлов и профилей аналогично соответствию групп
-- и профилей (ведь одни и те же медиа-файлы могут быть у разныз профилей,
-- например, аудиозаписи, но при этом владелец файла один)

-- Мы взяли за основу вариант с единственным профилем.


-- 3. Добавить столбцы
-- Таблица Users
-- is_banned Забанен (да/нет) в сети
-- is_died Умер (да/нет)

-- Добавим поля
ALTER TABLE users ADD COLUMN is_banned BOOLEAN AFTER phone;
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT  TRUE AFTER is_banned;

UPDATE users SET is_banned = TRUE WHERE id IN (12, 56, 66, 83);
UPDATE users SET is_active = FALSE WHERE id IN (8, 32, 77, 98);

-- Таблица friendship
-- is_rejected Отказ (да/нет) – чтобы больше не беспокоил

-- Имеет смысл добавить такой вариант в таблицу friendship_ststuses
INSERT INTO friendship_statuses VALUES (DEFAULT, "Rejected");

-- Таблица communities
-- user_id_author Автор – id из таблицы users
-- Created_at Дата создания
-- is_closed Закрыта (да/нет)
-- closed_at Дата закрытия

DESC communities;
ALTER TABLE communities ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP AFTER name;
ALTER TABLE communities ADD COLUMN is_closed BOOLEAN AFTER created_at;
ALTER TABLE communities ADD COLUMN closed_at TIMESTAMP AFTER is_closed;

UPDATE communities SET is_closed = TRUE WHERE id IN (3, 14, 27, 56);
UPDATE communities SET closed_at = NOW() WHERE is_closed IS TRUE;

-- Таблица communities_users
-- is_banned Забанен (да/нет)
-- is_admin Наделен администраторскими правами (да/нет)

DESC communities_users;
ALTER TABLE communities_users ADD column is_banned BOOLEAN AFTER user_id;
ALTER TABLE communities_users ADD column is_admin BOOLEAN AFTER user_id;

UPDATE communities_users SET is_banned = TRUE WHERE user_id IN (8, 65, 87);
UPDATE communities_users SET is_admin = TRUE WHERE user_id IN (1, 56, 74, 12, 34);


-- Таблица messages
-- is_readed Прочитано (да/нет)
-- Header Заголовок сообщения
-- Media_attached_id Прикрепленные файлы
DESC messages;
-- is_readed то же самое что is_delivered
ALTER TABLE messages ADD COLUMN header VARCHAR(255) AFTER to_user_id;
-- Заполним
UPDATE messages SET header = SUBSTRING(body, 1, 50);

ALTER TABLE messages ADD column attached_media_id INT UNSIGNED AFTER body;
-- Заполним
UPDATE messages SET attached_media_id = (
  SELECT id FROM media WHERE user_id = from_user_id LIMIT 1
);

-- 4. По структуре - думаю создание уникального ключа для переписок ускорит работу БД

-- Есть поле id
DESC messages;
-- Возможно имелось ввиду создание индексов


-- 5. Возможно я бы еще создал таблицу, показывающую степень родства между пользователями.
-- По полям:user_id и степень родства

CREATE TABLE relations (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  relative_id INT UNSIGNED NOT NULL,
  relation_status_id INT UNSIGNED NOT NULL
);

CREATE TABLE relation_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100)
);

INSERT INTO relation_statuses (name) VALUES 
  ('son'),
  ('daughter'),
  ('mother'),
  ('father'),
  ('wife'),
  ('husband')
;

INSERT INTO relations 
  SELECT 
    id, 
    FLOOR(1 + (RAND() * 100)), 
    FLOOR(1 + (RAND() * 100)),
    FLOOR(1 + (RAND() * 6)) 
  FROM users;


















