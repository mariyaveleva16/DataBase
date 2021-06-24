/*ZAD 1
Напишете заявка, която извежда цялата налична информация за всеки
кораб, включително и данните за неговия клас. В резултата не трябва да
се включват тези класове, които нямат кораби.
*/
SELECT*
FROM SHIPS INNER JOIN CLASSES ON SHIPS.CLASS=CLASSES.CLASS

/*ZAD 2
Повторете горната заявка, като този път включите в резултата и
класовете, които нямат кораби, но съществуват кораби със същото име
като тяхното.
*/
SELECT*
FROM SHIPS RIGHT JOIN CLASSES ON SHIPS.CLASS=CLASSES.CLASS

/*ZAD 3
За всяка страна изведете имената на корабите, които никога не са
участвали в битка.
*/
SELECT CLASSES.COUNTRY, SHIPS.NAME
FROM SHIPS LEFT JOIN OUTCOMES ON SHIPS.NAME=OUTCOMES.SHIP INNER JOIN CLASSES ON SHIPS.CLASS=CLASSES.CLASS 
WHERE OUTCOMES.SHIP IS NULL ORDER BY COUNTRY

/*ZAD 4
Намерете имената на всички кораби с поне 7 оръдия, пуснати на вода
през 1916, но наречете резултатната колона Ship Name.
*/
SELECT DISTINCT SHIPS.NAME AS "Ship name"
FROM SHIPS INNER JOIN CLASSES ON CLASSES.CLASS=SHIPS.CLASS
WHERE CLASSES.NUMGUNS>=7 AND SHIPS.LAUNCHED=1916

/*ZAD 5
Изведете имената на всички потънали в битка кораби, името и дата на
провеждане на битките, в които те са потънали. Подредете резултата по
име на битката.
*/
SELECT OUTCOMES.SHIP, OUTCOMES.BATTLE, BATTLES.DATE
FROM OUTCOMES INNER JOIN BATTLES ON OUTCOMES.BATTLE=BATTLES.NAME
WHERE OUTCOMES.RESULT='sunk' ORDER BY OUTCOMES.BATTLE 

/*ZAD 6
Намерете името, водоизместимостта и годината на пускане на вода на
всички кораби, които имат същото име като техния клас.*/
SELECT SHIPS.NAME, CLASSES.DISPLACEMENT, SHIPS.LAUNCHED
FROM SHIPS INNER JOIN CLASSES ON SHIPS.CLASS=CLASSES.CLASS
WHERE SHIPS.NAME=SHIPS.CLASS

/*ZAD 7
Намерете всички класове кораби, от които няма пуснат на вода нито един
кораб.
*/
SELECT*
FROM CLASSES LEFT JOIN SHIPS ON CLASSES.CLASS=SHIPS.CLASS
WHERE SHIPS.LAUNCHED IS NULL

/*ZAD 8
Изведете името, водоизместимостта и броя оръдия на корабите,
участвали в битката ‘North Atlantic’, а също и резултата от битката.
*/
SELECT SHIPS.NAME, CLASSES.DISPLACEMENT, CLASSES.NUMGUNS, OUTCOMES.RESULT
FROM SHIPS INNER JOIN CLASSES ON SHIPS.CLASS=CLASSES.CLASS INNER JOIN OUTCOMES ON SHIPS.NAME=OUTCOMES.SHIP
WHERE OUTCOMES.BATTLE='North Atlantic'