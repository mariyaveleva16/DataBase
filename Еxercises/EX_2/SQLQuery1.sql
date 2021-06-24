Select NAME From MOVIESTAR Where GENDER='M'
INTERSECT
SELECT STARNAME From STARSIN WHERE MOVIETITLE='The Usual Suspects';

SELECT STARNAME FROM STARSIN WHERE MOVIEYEAR=1995
UNION
SELECT NAME FROM MOVIEEXEC WHERE NAME ='MGM';

SELECT DISTINCT NAME FROM MOVIE, MOVIEEXEC WHERE STUDIONAME='MGM' AND PRODUCERC#=CERT#;

SELECT M1.TITLE FROM MOVIE AS M1, MOVIE AS M2 WHERE M2.TITLE='Star Wars' AND M1.LENGTH>M2.LENGTH;

SELECT EX1.NAME FROM MOVIEEXEC AS EX1, MOVIEEXEC AS EX2 WHERE EX2.NAME='Stephen Spielberg' AND EX1.NETWORTH>EX2.NETWORTH;

SELECT MOVIE.TITLE FROM MOVIE, MOVIEEXEC AS EX1, MOVIEEXEC AS EX2 WHERE EX2.NAME='Stephen Spielberg' AND EX1.NETWORTH>EX2.NETWORTH AND MOVIE.PRODUCERC#=EX1.CERT#; 