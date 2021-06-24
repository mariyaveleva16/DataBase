/*Напишете заявка, която извежда модел, честота и размер на диска за
всички персонални компютри с цена под 1200 долара. Задайте
псевдоними за атрибутите честота и размер на диска, съответно MHz и
GB*/
Select model, speed AS MHz, hd AS GB
From pc
Where price<1200;

/*Напишете заявка, която извежда производителите на принтери без
повторения*/
SELECT DISTINCT product.maker
FROM product
WHERE product.type='printer';

/*Напишете заявка, която извежда модел, размер на паметта, размер на
екран за лаптопите, чиято цена е над 1000 долара*/
SELECT laptop.model, laptop.ram, laptop.screen
FROM laptop
WHERE laptop.price>1000;

/*Напишете заявка, която извежда всички цветни принтери*/
SELECT*
FROM printer
WHERE printer.color='y';

/*Напишете заявка, която извежда модел, честота и размер на диска за
тези персонални компютри със CD 12x или 16x и цена под 2000 долара.*/
SELECT pc.model,pc.speed, pc.hd
from pc
where pc.price<2000 AND (pc.cd='12x' or pc.cd='16x')
