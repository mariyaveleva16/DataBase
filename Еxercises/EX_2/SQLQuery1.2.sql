/*1. Напишете заявка, която извежда имената на актьорите мъже, участвали във
филма The Usual Suspects.*/
SELECT MOVIESTAR.NAME FROM MOVIESTAR WHERE MOVIESTAR.GENDER='M'
INTERSECT
SELECT STARSIN.STARNAME FROM STARSIN WHERE STARSIN.MOVIETITLE='The Usual Suspects';

/*2. Напишете заявка, която извежда имената на актьорите, участвали във филми от
1995, продуцирани от студио MGM.*/
SELECT STARSIN.STARNAME FROM STARSIN WHERE STARSIN.MOVIEYEAR=1995 AND STARSIN.MOVIETITLE IN
(SELECT MOVIE.TITLE FROM MOVIE WHERE MOVIE.STUDIONAME='MGM');

/*3. Напишете заявка, която извежда имената на продуцентите, които са
продуцирали филми на студио MGM.*/
SELECT MOVIEEXEC.NAME FROM MOVIEEXEC WHERE MOVIEEXEC.CERT# IN 
(SELECT MOVIE.PRODUCERC# FROM MOVIE WHERE MOVIE.STUDIONAME='MGM')

/*4. Напишете заявка, която извежда имената на филми с дължина, по-голяма от
дължината на филма Star Wars.*/
SELECT MOVIE.TITLE
FROM MOVIE
WHERE MOVIE.LENGTH>(SELECT MOVIE.LENGTH FROM MOVIE WHERE MOVIE.TITLE='Star Wars');

/*5. Напишете заявка, която извежда имената на продуцентите с нетни активи поголеми от тези на Stephen Spielberg.*/
SELECT MOVIEEXEC.NAME
FROM MOVIEEXEC
WHERE MOVIEEXEC.NETWORTH>(SELECT MOVIEEXEC.NETWORTH FROM MOVIEEXEC WHERE MOVIEEXEC.NAME='Stephen Spielberg');

/*6. Напишете заявка, която извежда имената на всички филми, които са
продуцирани от продуценти с нетни активи по-големи от тези на Stephen
Spielberg.*/
SELECT MOVIE.TITLE
FROM MOVIE
WHERE MOVIE.PRODUCERC# IN (	SELECT MOVIEEXEC.CERT# 
							FROM MOVIEEXEC 
							WHERE MOVIEEXEC.NETWORTH>(	SELECT MOVIEEXEC.NETWORTH 
														FROM MOVIEEXEC 
														WHERE MOVIEEXEC.NAME='Stephen Spielberg'));
