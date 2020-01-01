# Базы данных
# Урок 1. Установка окружения

# Установка VirtualBox либо VMWare Player
# https://www.virtualbox.org/wiki/Downloads

# Скачивем Linux Ubuntu 18.04 LTS
# https://ubuntu.com/download/desktop

# Устанавливаем Linux на виртуальную машину

# Действия после окончания установки Ubuntu:

# 1. Установим обновления
sudo apt update
sudo apt upgrade

# 2. Установим некоторые пакеты, которые необходимы для гостевых дополнений ОС
sudo apt install gcc make perl

# 3. Установим гостевые дополнения
# В меню Устройства на вехней панели выбрать последний пункт
# Подключить образ диска Дополнений гостевой ОС
# Подтвердить запуск
# Ввести пороль, который вы задали на этапе установки

# Установить openssh-server
sudo apt install openssh-server


# Включить двунаправленный буфер обмена и перегрузиться

# Устанавливаем MySQL 8
wget -c https://dev.mysql.com/get/mysql-apt-config_0.8.10-1_all.deb
sudo apt-key adv --keyserver keys.gnupg.net --recv-keys 5072E1F5
sudo dpkg -i mysql-apt-config_0.8.10-1_all.deb
sudo apt update
sudo apt-get install mysql-server

# Смотрим версии
mysql -V
mysqld -V

# Заходим в консольный клиент
mysql -u root -p

# Подключение к удалённой машине через ssh
ssh victor@192.168.1.192
mysql -u root -p
exit

# Установка Putty
# https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html

# Подключение к удалённой машине с помощью Putty

# Установка MySQL Workbench
# https://dev.mysql.com/downloads/workbench/

# Подключение с помощью MySQL Workbench

# Установка Dbeaver
# https://dbeaver.io/download/

# Подключение с помощью Dbeaver



-- DDL команды  
mysql -u root -p

-- Выполняется в SQL клиенте
-- Создадим простую базу данных

-- Список существующих БД
SHOW DATABASES;

-- Создадим БД geekbrains
CREATE DATABASE geekbrains;
USE geekbrains;

-- Создадим таблицу курсов
CREATE TABLE courses (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  name VARCHAR(150) UNIQUE
);

-- Таблица студентов
CREATE TABLE students (
  id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  firstname VARCHAR(100) NOT NULL,
  lastname VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  course_id INT
); 

-- Выведем все таблицы
SHOW TABLES;

-- Описание таблиц
DESCRIBE courses;
DESCRIBE students;

-- Добавим новый столбец
ALTER TABLE students ADD COLUMN birthday DATE; 

-- Переименуем столбец
ALTER TABLE students RENAME COLUMN birthday TO birthday_at;

-- Удалим столбец
ALTER TABLE students DROP COLUMN birthday_at;

-- Добавляем данные по курсам
INSERT INTO courses (name) VALUES ("Databases"), ("Linux"),("BigDATA");

-- Добавляем студентов  
INSERT INTO students (firstname, lastname, email, course_id)
  VALUES ("Bob", "Ivanov", "ivanov@yandex.ru", "1"),
         ("Bill", "Gates", "petrov@yandex.ru", "2"),
         ("Irina", "Pushkina", "i.pushkina@yandex.ru", "3"),
         ("Olga", "Buzova", "megastar@yandex.ru", "1")
  ;

-- Смотрим все курсы
SELECT * FROM courses;

-- Смотрим всех студентов
SELECT * FROM students;

-- Смотрим данные одного студента
SELECT * FROM students WHERE lastname = "Buzova";

-- Изменяем данные студента
UPDATE students SET email = "buzova@rambler.ru" WHERE lastname = "Buzova";

-- Удаляем студента
DELETE FROM students WHERE course_id = 3; 

-- Удаляем таблицы
DROP TABLE students;
DROP TABLE courses;

-- Удаляем БД
DROP DATABASE geekbrains;

-- Выходим из клиента
exit

