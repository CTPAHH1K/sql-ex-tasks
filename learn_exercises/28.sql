Задание: 28 (Serge I: 2012-05-04)
Используя таблицу Product, определить количество производителей, выпускающих по одной модели.

SELECT COUNT(1) as qty FROM
(SELECT maker, COUNT(model) as qty FROM product
GROUP BY maker HAVING COUNT(model) = 1) as n