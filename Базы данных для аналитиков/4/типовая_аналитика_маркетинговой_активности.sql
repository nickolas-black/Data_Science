
-- Задание для Урок 4.
-- 1. На 2016.12.31 получаем инфу по кол-ву заказов на каждого юзера. Подсчитываем сколько пользователей попало в группу с 1 заказом, 2, 3 и т.д.
-- 2. За январь 2017 смотрим, какое кол-во юзеров из п.1 купило в каждой группе и на какую сумму за месяц.(скрипты вам должны помочь)
-- 3. Подсчитываем вероятность перехода в покупающего по каждой группе и ср траты за январь в группе (как на занятии).
-- 4. В идеале сделать тоже самое на февраль, март, и до конца 17 года (чтобы оценить сезонность и рост трат за месяц)


SELECT DISTINCT year(o_date) FROM orders;

CREATE TABLE user_n
SELECT user_id,COUNT(id_o) n,date('2017-01-01') 
From orders
  WHERE date(o_date)< date('2017-01-01')
  GROUP BY user_id;
 
DELETE FROM user_n WHERE n > 50;

SELECT * FROM user_n;
SELECT * FROM orders;


-- 1. Подсчитываем сколько пользователей попало в группу с 1 заказом, 2, 3 и т.д.

SELECT COUNT(user_id) FROM user_n WHERE n = 1; 
-- результат 334087
SELECT COUNT(user_id) FROM user_n WHERE n = 2; 
-- результат 49782
SELECT COUNT(user_id) FROM user_n WHERE n = 3; 
-- результат 20070
SELECT COUNT(user_id) FROM user_n WHERE n > 3;
-- результат 40919

-- 2. За январь 2017 смотрим, какое кол-во юзеров из п.1 купило в каждой группе и на какую сумму за месяц.

SELECT COUNT(o.user_id), SUM(price) FROM orders o 
JOIN user_n n
ON n.user_id = o.user_id AND DATE_FORMAT(o.o_date, '%Y-%m') = '2017-01' AND n.n = 1
UNION
SELECT COUNT(o.user_id), SUM(price) FROM orders o 
JOIN user_n n
ON n.user_id = o.user_id AND DATE_FORMAT(o.o_date, '%Y-%m') = '2017-01' AND n.n = 2
UNION
SELECT COUNT(o.user_id), SUM(price) FROM orders o 
JOIN user_n n
ON n.user_id = o.user_id AND DATE_FORMAT(o.o_date, '%Y-%m') = '2017-01' AND n.n = 3
UNION
SELECT COUNT(o.user_id), SUM(price) FROM orders o 
JOIN user_n n
ON n.user_id = o.user_id AND DATE_FORMAT(o.o_date, '%Y-%m') = '2017-01' AND n.n > 3;

-- результат 7125; 16509570.709879875
-- результат 4757; 10182060.706233978
-- результат 3327; 6912233.998905182
-- результат 18074; 36205673.021010876

-- 3. Подсчитываем вероятность перехода в покупающего по каждой группе и ср траты за январь в группе

-- Для группы 1: p = (7125/334087) * 100% = 2%; avg = 16509570/7125 = 2317
-- Для группы 2: p = 10%; avg = 2140
-- Для группы 3: p = 17%; avg = 2077 
-- Для группы > 3: p = 44%; avg = 2003


