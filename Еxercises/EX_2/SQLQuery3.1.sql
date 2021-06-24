/*SELECT c.*
FROM ships s
RIGHT JOIN classes c ON s.class=c.class
WHERE s.class IS NULL;

SELECT c.*
FROM ships s
LEFT JOIN classes c ON s.class=c.class
WHERE s.class IS NULL;

SELECT name, country
FROM ships
JOIN classes ON ships.class=classes.class
WHERE name NOT IN
(SELECT ship FROM outcomes WHERE result='sunk');

SELECT name, country
FROM ships LEFT JOIN outcomes ON name=ship
JOIN classes ON ships.class=classes.class
WHERE result='sunk' OR battle IS NULL;

SELECT s.name
FROM ships s, classes c
WHERE c.numguns>=7 AND launched=1916;

SELECT s.name
FROM ships s
JOIN classes c ON s.class=c.class
WHERE c.numguns>=7 AND launched=1916;SELECT o1.ship "target ship"
FROM outcomes o1,outcomes o2, battles b1,battles b2
WHERE o1.ship=o2.ship AND
 o1.battle=b1.name AND
 o2.battle=b2.name AND
 o1.result='damaged' AND
 o2.result='ok' AND
 b1.date<b2.date AND
 (SELECT count(ship)
 FROM outcomes
 WHERE battle=o1.battle) < (SELECT count(ship)
 FROM outcomes
 WHERE battle=o2.battle); SELECT o1.ship "target ship"
FROM outcomes o1,battles b1
WHERE o1.battle=b1.name AND
 o1.result='damaged' AND
 EXISTS (SELECT *
 FROM outcomes o2, battles b2
 WHERE o2.battle=b2.name AND
 o2.result='ok' AND
 o1.ship=o2.ship AND
 b1.date<b2.date AND
 (SELECT COUNT(ship)
 FROM outcomes
 WHERE battle=o1.battle) < (SELECT count(ship)
 FROM outcomes
 WHERE battle=o2.battle)); SELECT *
FROM Movie
WHERE length <= 120 OR length > 120;
SELECT *
FROM Movie
WHERE length IS NOT NULL;SELECT maker
FROM product
WHERE model NOT IN
 (SELECT model
 FROM pc
 WHERE speed >= 800);
SELECT maker
FROM product
WHERE EXISTS
 (SELECT *
 FROM pc
 WHERE speed >= 800 AND
 product.model = model); SELECT COUNT(distinct o1.ship)
FROM outcomes o1
JOIN outcomes o2
ON o1.ship = o2.ship AND o1.result = 'damaged' AND o2.result = 'ok'
WHERE
(SELECT b1.date FROM battles b1 WHERE b1.name=o1.battle)
<
(SELECT b2.date FROM battles b2 WHERE b2.name=o2.battle);
SELECT COUNT(sd.ship)
FROM
(SELECT o1.ship, MIN(b1.date) AS EarliestDate
 FROM outcomes o1
 JOIN battles b1 ON o1.battle=b1.name
 WHERE o1.result='damaged'
 GROUP BY o1.ship
) sd
JOIN
(SELECT o1.ship, MAX(b1.date) AS LatestDate
 FROM outcomes o1
 JOIN battles b1 ON o1.battle=b1.name
 WHERE o1.result='ok'
 GROUP BY o1.ship
) sok
ON sd.ship=sok.ship AND EarliestDate < LatestDate;Select CLASSES.CLASSfrom CLASSESunion select SHIPS.NAMEfrom SHIPSselect* from CLASSES, SHIPS
Select MOVIE.TITLE
from MOVIE
where MOVIE.TITLE like 'S'

select NAME, avg(NUMGUNS)
from ships s join CLASSES c on s.CLASS=c.CLASS
group by s.NAME
order by avg(NUMGUNS)

SELECT *
FROM ships
LEFT JOIN outcomes ON (name=ship)
WHERE name IS NULL;

SELECT *
FROM ships
RIGHT JOIN outcomes ON (name=ship)
WHERE ship IS NULL;

SELECT *
FROM ships
WHERE name NOT IN (SELECT ship FROM outcomes);

SELECT *
FROM ships
WHERE EXISTS (SELECT * FROM outcomes WHERE ship=name);

SELECT studioname, title, year
FROM movie m
WHERE year = (SELECT max(year)
 FROM movie
 WHERE studioname=m.studioname);

SELECt distinct l1.hd
FROM Laptop l1 JOIN Laptop l2 ON l1.model>l2.model and l1.hd=l2.hd
ORDER BY l1.hd;

SELECT hd
FROM laptop
GROUP BY hd
HAVING count(*)>=2
ORDER BY hd*/