Select ADDRESS
From STUDIO
Where NAME='Disney';

/*Напишете заявка, която извежда рождената дата на актьора Jack
Nicholson*/SELECT MOVIESTAR.BIRTHDATEFROM MOVIESTARWHERE NAME='Jack Nicholson';/*Напишете заявка, която извежда имената на актьорите, които са
участвали във филм от 1980 или във филм, в чието заглавие има думата
‘Knight’*/SELECT STARSIN.STARNAMEFROM STARSINWHERE STARSIN.MOVIEYEAR=1980 OR STARSIN.MOVIETITLE LIKE 'Knight%' OR  STARSIN.MOVIETITLE LIKE '%Knight' OR  STARSIN.MOVIETITLE LIKE '%Knight%';--Напишете заявка, която извежда имената на продуцентите с нетни
--активи над 10 000 000 долараSELECT MOVIEEXEC.NAMEFROM MOVIEEXECWHERE MOVIEEXEC.NETWORTH>10000000--Напишете заявка, която извежда имената на актьорите, които са мъже
--или живеят на Prefect Rd.SELECT MOVIESTAR.NAMEFROM MOVIESTARWHERE MOVIESTAR.GENDER='M' OR MOVIESTAR.ADDRESS='Prefect Rd'