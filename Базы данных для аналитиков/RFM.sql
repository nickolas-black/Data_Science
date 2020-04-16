
USE new_RFM;
-- ������� ��� ���� 3.
-- ������� ������: ������� RFM-������ �� ������ ������ �� �������� �� 2 ���� (�� ����������� ��). ��� ������:
-- 1. ���������� �������� ��� ������ ����� R, F, M (�.�. � �������, R � 3 ��� ��������,
-- ������� �������� <= 30 ���� �� ��������� ���� � ����
-- R � 2 ��� ��������, ������� �������� > 30 � ����� 60 ���� �� ��������� ���� � ���� � �.�.)

-- 2. ��� ������� ������������ �������� ����� �� 3 ���� 
--(�� 111 �� 333, ��� 333 � ����� �������� ������������)

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


-- 3. ������ �����������, � �������, 333 � 233 � ��� Vip, 1XX � ��� Lost, 
-- ��������� Regular ( ������ ������ ���� �������� �����������)
-- 4. ��� ������ ������ �� �. 3 ������� ���-�� �������������, 
-- ���. ������ � ��� � % �������������, ������� ��� ������� �� ��� 2 ����.


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

-- 5. ���������, ��� ����� ���-�� ������������� ������ � ������ ���-�� ������������� 
-- �� ������� �� �. 3 (���� � ��� ���� ���������� ������ � �������� �����,
-- � ��� �� �������� �����). �� �� ����� ������ � �� �������.

SELECT SUM(Quantity_of_users), SUM(Total_Income) FROM User_scale;
1015119	4543107595

SELECT COUNT(DISTINCT user_id), CEIL(SUM(price)) FROM orders1;
1015119	4542687442

-- ���������� ������������� ��������, � ����� ����� �� ��������
-- ��� � � ��� ������ - �� ������� ��� ������
  
