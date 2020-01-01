SHOW tables;

SELECT * FROM profiles LIMIT 10;

CREATE TEMPORARY TABLE sex (sex CHAR(1));
INSERT INTO sex VALUES ('m'), ('f');
SELECT * FROM sex;
UPDATE profiles SET sex = (SELECT sex FROM sex ORDER BY RAND() LIMIT 1);
SELECT * FROM profiles LIMIT 10;


-- messages
SELECT * FROM messages LIMIT 10;
UPDATE messages SET
  from_user_id = FLOOR(1 + (RAND() * 100)),
  to_user_id = FLOOR(1 + (RAND() * 100));
  
SELECT * FROM messages LIMIT 10;

-- media
SELECT * FROM media LIMIT 10;
UPDATE media SET user_id = FLOOR(1 + (RAND() * 100));
UPDATE media SET metadata = CONCAT('{"', filename, '":"', size, '"}');
SELECT * FROM media LIMIT 10;
DESC media;


-- media_types
SELECT * FROM media_types LIMIT 10;
DELETE FROM media_types;
TRUNCATE media_types;

INSERT INTO media_types (name) VALUES
  ('photo'),
  ('video'),
  ('audio')
;
SELECT * FROM media_types LIMIT 10;

UPDATE media SET media_type_id = FLOOR(1 + (RAND() * 3));

SELECT * FROM media LIMIT 10;

-- friendship
SELECT * FROM friendship LIMIT 10;
UPDATE friendship SET
  user_id = FLOOR(1 + (RAND() * 100)),
  friend_id = FLOOR(1 + (RAND() * 100))
;

SELECT * FROM friendship LIMIT 10;

-- communities
SELECT * FROM communities LIMIT 10;


-- communities_users
SELECT * FROM communities_users LIMIT 10;
SELECT * FROM communities ORDER BY id DESC LIMIT 1;
UPDATE communities_users SET
  community_id = FLOOR(1 + (RAND() * 100)),
  user_id = FLOOR(1 + (RAND() * 100))
;

-- bann
ALTER TABLE users ADD COLUMN is_banned BOOLEAN AFTER phone;
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT  TRUE AFTER is_banned;

UPDATE users SET is_banned = TRUE WHERE id IN (5, 12, 56, 66, 83, 93);
UPDATE users SET is_active = FALSE WHERE id IN (8, 32, 77, 98);

SELECT * FROM users LIMIT 10;

-- rodstvo
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
  
SELECT * FROM relation_statuses LIMIT 10;
SELECT * FROM relations LIMIT 10;

