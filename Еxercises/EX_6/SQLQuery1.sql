SELECT MOVIE.TITLE, MOVIE.YEAR, MOVIE.LENGTH
FROM MOVIE
WHERE YEAR<2000 AND (LENGTH>120 OR LENGTH IS NULL);

SELECT MOVIESTAR.NAME, MOVIESTAR.GENDER
FROM MOVIESTAR
WHERE NAME LIKE 'J%' AND YEAR(BIRTHDATE)>1948 ORDER BY NAME DESC;

SELECT MOVIE.STUDIONAME, COUNT(DISTINCT STARSIN.STARNAME) AS NUM_STARS
FROM MOVIE JOIN STARSIN ON TITLE=MOVIETITLE
GROUP BY STUDIONAME; 
--HAVING COUNT(DISTINCT STARSIN.STARNAME)>0 

SELECT STARSIN.STARNAME, COUNT(DISTINCT STARSIN.MOVIETITLE) AS NUM_M
FROM STARSIN
GROUP BY STARNAME;

SELECT t2.STUDIONAME, t1.TITLE, t2.YEAR
FROM (SELECT STUDIONAME, MAX(YEAR) AS year FROM MOVIE GROUP BY STUDIONAME) t2 
INNER JOIN MOVIE AS t1 ON t1.STUDIONAME = t2.STUDIONAME AND t1.YEAR = t2.year;

select top 1 name
from MOVIESTAR
where gender='M'
order by BIRTHDATE desc;


