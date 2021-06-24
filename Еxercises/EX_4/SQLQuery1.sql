/*ZAD 1
Напишете заявка, която извежда името на продуцента и имената на
филмите, продуцирани от продуцента на филма ‘Star Wars’.*/
Select MOVIE.TITLE, MOVIEEXEC.NAME
FROM MOVIE INNER JOIN  MOVIEEXEC
ON MOVIE.PRODUCERC#=MOVIEEXEC.CERT# 
WHERE MOVIE.PRODUCERC#=(SELECT MOVIE.PRODUCERC# FROM MOVIE WHERE MOVIE.TITLE='Star Wars')

/*ZAD 2
Напишете заявка, която извежда имената на продуцентите на филмите, 
в които е участвал ‘Harrison Ford’*/
SELECT DISTINCT MOVIEEXEC.NAME
FROM STARSIN INNER JOIN MOVIE ON STARSIN.MOVIETITLE=MOVIE.TITLE INNER JOIN MOVIEEXEC ON MOVIE.PRODUCERC#=MOVIEEXEC.CERT#
WHERE STARSIN.STARNAME='Harrison Ford'

/*ZAD 3
Напишете заявка, която извежда името на студиото и имената на
актьорите, участвали във филми, произведени от това студио, подредени
по име на студио.*/
SELECT DISTINCT STUDIO.NAME, STARSIN.STARNAME
FROM STUDIO INNER JOIN MOVIE ON STUDIO.NAME=MOVIE.STUDIONAME INNER JOIN STARSIN ON MOVIE.TITLE=STARSIN.MOVIETITLE ORDER BY STUDIO.NAME

/*ZAD 4
Напишете заявка, която извежда имената на актьорите, участвали във
филми на продуценти с най-големи нетни активи.*/SELECT STARSIN.STARNAME, MOVIEEXEC.NETWORTH, STARSIN.MOVIETITLEFROM STARSIN INNER JOIN MOVIE ON STARSIN.MOVIETITLE=MOVIE.TITLE INNER JOIN MOVIEEXEC ON MOVIE.PRODUCERC#=MOVIEEXEC.CERT#WHERE MOVIEEXEC.NETWORTH>=ALL(SELECT MOVIEEXEC.NETWORTH FROM MOVIEEXEC)/*ZAD 5
Напишете заявка, която извежда имената на актьорите, които не са
участвали в нито един филм.*/SELECT MOVIESTAR.NAME, STARSIN.MOVIETITLEFROM MOVIESTAR LEFT JOIN STARSIN ON MOVIESTAR.NAME=STARSIN.STARNAME WHERE MOVIETITLE IS NULL