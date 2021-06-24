/*ZAD 1
Напишете заявка, която извежда средната честота на персоналните компютри.
*/
SELECT AVG(PC.speed) AS AVGSPEED
FROM PC

/*ZAD 2
Напишете заявка, която извежда средния размер на екраните на лаптопите за
всеки производител.*/SELECT product.maker,AVG(laptop.screen) AS AVGSCREENFROM laptop JOIN product ON product.model=laptop.model GROUP BY product.maker/*ZAD 3*/SELECT AVG(laptop.speed) AS AVGSPEEDFROM laptopWHERE laptop.price>1000/*ZAD 4*/SELECT product.maker, AVG(pc.price) AS AVGPRICEFROM product INNER JOIN pc ON product.model=pc.modelWHERE product.maker='A' GROUP BY product.maker/*ZAD 5*/SELECT maker, AVG(price) AS AvgPrice FROM (SELECT model, price FROM pc UNION ALL SELECT model, price FROM laptop) t1 JOIN product ON product.model = t1.model WHERE maker = 'B' GROUP BY maker;/*ZAD 6*/SELECT PC.speed,avg(pc.price) AS AVGPRICEFROM PCGROUP BY speed/*ZAD 7*/SELECT product.maker, COUNT(DISTINCT pc.code) AS NUMPC FROM product JOIN pc ON product.model=pc.model GROUP BY product.makerHAVING COUNT(DISTINCT pc.code)>=3/*ZAD 8*/SELECT TOP 1 product.maker, MAX(PC.price) AS MAXPRICEFROM product JOIN PC ON product.model=pc.modelGROUP BY product.maker/*ZAD 9*/SELECT PC.speed,AVG(PC.price) AS AVGPRICEFROM pcWHERE SPEED>=800GROUP BY speed/*ZAD 10*/SELECT product.maker, CONVERT(decimal(10,2),AVG(hd)) AS AvgHDD
FROM pc JOIN product ON pc.model = product.model
WHERE maker IN (SELECT maker FROM product WHERE type= 'Printer')
GROUP BY product.maker