Задание: 27 (Serge I: 2003-02-03)
Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. 
Вывести: maker, средний размер HD.


SELECT maker, AVG(hd) FROM product p JOIN pc ON p.model = pc.model
GROUP BY maker
HAVING maker in (SELECT DISTINCT maker FROM product WHERE type = 'printer')
