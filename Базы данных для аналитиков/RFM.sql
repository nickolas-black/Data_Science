
USE new_RFM;

-- Задание для Урок 3.
-- Главная задача: сделать RFM-анализ на основе данных по продажам за 2 года (из предыдущего дз). Что делаем:
-- 1. Определяем критерии для каждой буквы R, F, M (т.е. к примеру, R – 3 для клиентов,
-- которые покупали <= 30 дней от последней даты в базе
-- R – 2 для клиентов, которые покупали > 30 и менее 60 дней от последней даты в базе и т.д.)

-- 2. Для каждого пользователя получаем набор из 3 цифр 
--(от 111 до 333, где 333 – самые классные пользователи)

CREATE TABLE RFM
SELECT user_id, CEIL(SUM(t.price)) Income, t.Monetary, t.Recency,
  CASE WHEN COUNT(id_o) = 1 THEN "1"
       WHEN 2<= COUNT(id_o) <=4 THEN "2"
       ELSE "3" END AS Frequency
  FROM (
        SELECT user_id, id_o, price,
          CASE WHEN price < 1000 THEN "1"
               WHEN 5000 > price >= 1000 THEN "2"
               ELSE "3" END AS Monetary,
          CASE WHEN TIMESTAMPDIFF(DAY, o_date, DATE('2018-01-01')) < 30 THEN "3"
               WHEN 60 > TIMESTAMPDIFF(DAY, o_date, DATE('2018-01-01')) >= 30 THEN "2"
               ELSE "1" END AS Recency
        FROM orders1) t
GROUP BY t.user_id;


-- 3. Вводим группировку, к примеру, 333 и 233 – это Vip, 1XX – это Lost,  
-- остальные Regular ( можете ввести боле глубокую сегментацию)
-- 4. Для каждой группы из п. 3 находим кол-во пользователей, 
-- кот. попали в них и % товарооборота, которое они сделали на эти 2 года.


CREATE TABLE User_scale
SELECT  t.Scale, COUNT(t.user_id) Quantity_of_users, SUM(t.Income) Total_Income
  FROM
  (
    SELECT user_id, Income, Monetary, Recency, Frequency,
      CASE WHEN (Recency = 3 AND Frequency = 3 AND Monetary = 3) OR (Recency = 2 AND Frequency = 3 AND Monetary = 3) THEN "VIP"
           WHEN Recency = 1 THEN "Lost"
           ELSE "Regular" END AS Scale
    FROM rfm) t
GROUP BY t.Scale;

SELECT Scale, 
      Quantity_of_users, 100.00*Quantity_of_users/SUM(Quantity_of_users) OVER() as per_cent_of_users,
      Total_Income, 100.00*Total_Income/SUM(Total_Income) OVER() as per_cent_of_income
FROM User_scale
GROUP BY Scale;

Lost	 920732	90,701878	4312531958	94,924715
Regular	94387	 9,298122	 230575637	 5,075285


-- 5. Проверяем, что общее кол-во пользователей бьется с суммой кол-во пользователей 
-- по группам из п. 3 (если у вас есть логические ошибки в создании групп,
-- у вас не собьются цифры). То же самое делаем и по деньгам.


SELECT SUM(Quantity_of_users), SUM(Total_Income) FROM User_scale;
1015119	4543107595

SELECT COUNT(DISTINCT user_id), CEIL(SUM(price)) FROM orders1;
1015119	4542687442

-- количество пользователей сходится, а общий доход не сходится
-- где и в чем ошибка - не понимаю где ошибся
  
