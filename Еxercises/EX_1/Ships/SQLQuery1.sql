Select CLASS, COUNTRY
From CLASSES
Where NUMGUNS<10;

/*Напишете заявка, която извежда имената на корабите, пуснати на вода
преди 1918. Задайте псевдоним shipName на колоната.*/
SELECT SHIPS.NAME AS shipName
FROM SHIPS
WHERE SHIPS.LAUNCHED<1918;

/*Напишете заявка, която извежда имената на корабите, потънали в битка
и имената на съответните битки.*/
SELECT OUTCOMES.SHIP, OUTCOMES.BATTLE
FROM OUTCOMES
WHERE OUTCOMES.RESULT='sunk';

/*Напишете заявка, която извежда имената на корабите с име, съвпадащо
с името на техния клас.*/
select SHIPS.NAME
from SHIPS
where SHIPS.NAME=SHIPS.CLASS;

/*Напишете заявка, която извежда имената на корабите, които започват с
буквата R.*/select SHIPS.NAMEfrom SHIPSwhere SHIPS.NAME like 'R%';/*. Напишете заявка, която извежда имената на корабите, които съдържат 2
или повече думи.*/
select SHIPS.NAME
from SHIPS
where SHIPS.NAME like '% %';