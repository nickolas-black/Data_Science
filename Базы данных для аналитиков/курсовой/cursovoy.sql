
USE orders
CREATE TABLE orders_010117 
SELECT * 
  FROM orders.orders_
  WHERE o_date < date('2017-01-01')

USE orders
CREATE TABLE orders_010217 
SELECT * 
  FROM orders.orders_
  WHERE o_date < date('2017-02-01')

USE orders
CREATE TABLE orders_010317 
SELECT * 
  FROM orders.orders_
  WHERE o_date < date('2017-03-01')


SELECT COUNT(user_id)
  FROM
(
SELECT user_id,r,f,m,s,
  CASE WHEN (r = 3 AND f =3 AND m = 3) OR (r = 2 AND f =3 AND m = 3) THEN "Vip"
       WHEN f = 1 AND r = 3 THEN "New"
       WHEN r = 1 THEN "Lost"
  ELSE "Regular" END AS user_group
  FROM
(
SELECT user_id,SUM(price) s,
  CASE WHEN TIMESTAMPDIFF(DAY,MAX(o_date),date('2017-12-31')) > 60 THEN "1"
       WHEN TIMESTAMPDIFF(DAY,MAX(o_date),date('2017-12-31')) <= 60 AND TIMESTAMPDIFF(DAY,o_date,date('2017-12-31')) > 30 THEN "2"
  ELSE "3" END AS r,
  CASE WHEN COUNT(*) <= 1 THEN "1"
       WHEN COUNT(*) > 1 AND COUNT(*) <= 4 THEN "2"
  ELSE "3" END AS f,
  CASE WHEN SUM(price) < 5000 THEN "1"
       WHEN SUM(price) >= 5000 AND SUM(price) < 15000 THEN "2"
  ELSE "3" END AS m
  FROM orders.orders_
  GROUP BY user_id
) t_rfm
GROUP BY user_id) t_groups
  WHERE user_group = "Regular"

USE orders
CREATE TABLE user_groups_010317
SELECT user_id, user_group
  FROM
  (
SELECT user_id,r,f,m,s,
  CASE WHEN (r = 3 AND f =3 AND m = 3) OR (r = 2 AND f =3 AND m = 3) THEN "Vip"
       WHEN f = 1 AND r = 3 THEN "New"
       WHEN r = 1 THEN "Lost"
  ELSE "Regular" END AS user_group
  FROM
(
SELECT user_id,SUM(price) s,
  CASE WHEN TIMESTAMPDIFF(DAY,MAX(o_date),date('2017-02-28')) > 60 THEN "1"
       WHEN TIMESTAMPDIFF(DAY,MAX(o_date),date('2017-02-28')) <= 60 AND TIMESTAMPDIFF(DAY,o_date,date('2017-02-28')) > 30 THEN "2"
  ELSE "3" END AS r,
  CASE WHEN COUNT(*) <= 1 THEN "1"
       WHEN COUNT(*) > 1 AND COUNT(*) <= 4 THEN "2"
  ELSE "3" END AS f,
  CASE WHEN SUM(price) < 5000 THEN "1"
       WHEN SUM(price) >= 5000 AND SUM(price) < 15000 THEN "2"
  ELSE "3" END AS m
  FROM orders.orders_010317
  GROUP BY user_id
) t_rfm
  ) t

SELECT COUNT(user_id) c_New
  FROM user_groups_010117
  WHERE user_group = 'New'
UNION ALL
SELECT COUNT(user_id) c_Vip
  FROM user_groups_010117
  WHERE user_group = 'Vip'
UNION ALL
SELECT COUNT(user_id) c_Reg
  FROM user_groups_010117
  WHERE user_group = 'Regular'
UNION ALL
SELECT COUNT(user_id) c_Lost
  FROM user_groups_010117
  WHERE user_group = 'Lost'
UNION ALL 
SELECT COUNT(user_id) c_All
  FROM user_groups_010117

SELECT COUNT(user_id) c_New
  FROM user_groups_010217
  WHERE user_group = 'New'
UNION ALL
SELECT COUNT(user_id) c_Vip
  FROM user_groups_010217
  WHERE user_group = 'Vip'
UNION ALL
SELECT COUNT(user_id) c_Reg
  FROM user_groups_010217
  WHERE user_group = 'Regular'
UNION ALL
SELECT COUNT(user_id) c_Lost
  FROM user_groups_010217
  WHERE user_group = 'Lost'
UNION ALL 
SELECT COUNT(user_id) c_All
  FROM user_groups_010217

SELECT COUNT(user_id) c_New
  FROM user_groups_010317
  WHERE user_group = 'New'
UNION ALL
SELECT COUNT(user_id) c_Vip
  FROM user_groups_010317
  WHERE user_group = 'Vip'
UNION ALL
SELECT COUNT(user_id) c_Reg
  FROM user_groups_010317
  WHERE user_group = 'Regular'
UNION ALL
SELECT COUNT(user_id) c_Lost
  FROM user_groups_010317
  WHERE user_group = 'Lost'
UNION ALL 
SELECT COUNT(user_id) c_All
  FROM user_groups_010317

USE orders
CREATE TABLE u01to02
SELECT u1.user_id,u1.user_group gr1,u2.user_group gr2
  FROM user_groups_010117 u1
  JOIN user_groups_010217 u2
  ON u1.user_id = u2.user_id;

USE orders
CREATE TABLE u02to03
SELECT u1.user_id,u1.user_group gr1,u2.user_group gr2
  FROM user_groups_010217 u1
  JOIN user_groups_010317 u2
  ON u1.user_id = u2.user_id;

SELECT COUNT(user_id)
  FROM orders.u02to03
  WHERE gr1 = 'New' AND gr2 = 'New'

SELECT COUNT(user_id)
  FROM orders.u02to03
  WHERE gr1 = 'New' AND gr2 = 'Vip'

SELECT COUNT(user_id)
  FROM orders.u02to03
  WHERE gr1 = 'New' AND gr2 = 'New'

SELECT COUNT(user_id)
  FROM orders.u02to03
  WHERE gr1 = 'Lost' AND gr2 = 'Lost'

SELECT COUNT(user_id)
  FROM orders.u02to03
  WHERE gr1 = 'Regular' AND gr2 = 'Vip'

SELECT COUNT(user_id)
  FROM orders.u01to02
  WHERE gr1 = 'Regular' AND gr2 = 'Lost'

SELECT COUNT(user_id)
  FROM orders.u01to02
  WHERE gr1 = 'Vip' AND gr2 = 'Vip'

SELECT COUNT(user_id)
  FROM orders.u01to02
  WHERE gr1 = 'Vip' AND gr2 = 'Lost'


SELECT COUNT(user_id)
  FROM orders.u01to02
  WHERE gr1 = 'Lost' AND gr2 = 'Regular'

SELECT COUNT(user_id)
  FROM orders.u01to02
  WHERE gr1 = 'Lost' AND gr2 = 'Vip'

SELECT COUNT(user_id)
  FROM orders.u01to02
  WHERE gr1 = 'Lost' AND gr2 = 'Lost'
