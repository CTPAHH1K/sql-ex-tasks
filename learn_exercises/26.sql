Задание: 26 (Serge I: 2003-02-14)
Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена.


SELECT AVG(price) as AVG_price FROM
(
SELECT price FROM product p, pc
WHERE p.model = pc.model
AND maker = 'A'

UNION ALL

SELECT price FROM product p, laptop l
WHERE p.model = l.model
AND maker = 'A'
) AS av


with models as (Select model, price
from pc 
UNION ALL
Select model, price
from laptop)
select avg(models.price) 
from models join product 
on models.model = product.model and product.maker = 'A'