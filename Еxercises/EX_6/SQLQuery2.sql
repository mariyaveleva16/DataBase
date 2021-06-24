--1
SELECT DISTINCT SHIP 
FROM OUTCOMES 
WHERE SHIP LIKE 'C%' OR SHIP LIKE 'K%';

--2
SELECT t2.NAME, COUNTRY 
FROM (	SELECT NAME, CLASS 
		FROM SHIPS 
		WHERE NAME NOT IN (	SELECT SHIP 
							FROM OUTCOMES 
							WHERE RESULT = 'sunk')) t2 
							INNER JOIN CLASSES ON CLASSES.CLASS = t2.CLASS;

--3
SELECT COUNTRY, COUNT(RESULT) 
FROM (	SELECT COUNTRY, NAME, RESULT, BATTLE 
		FROM CLASSES LEFT JOIN SHIPS ON CLASSES.CLASS = SHIPS.CLASS 
		LEFT JOIN OUTCOMES ON OUTCOMES.SHIP = NAME WHERE RESULT IS NULL 
		OR RESULT = 'sunk' OR BATTLE IS NULL) t1 
GROUP BY COUNTRY;

--4
SELECT BATTLE 
FROM OUTCOMES 
GROUP BY BATTLE 
HAVING COUNT(DISTINCT SHIP) > (	SELECT COUNT(DISTINCT SHIP) 
								FROM OUTCOMES 
								WHERE BATTLE = 'Guadalcanal');

--5
SELECT BATTLE 
FROM OUTCOMES 
GROUP BY BATTLE 
HAVING COUNT(DISTINCT SHIP) > (	SELECT COUNT(DISTINCT SHIP) 
								FROM OUTCOMES 
								WHERE BATTLE = 'Surigao Strait');

--7
SELECT COUNT(DISTINCT SHIP) AS num_ships 
FROM OUTCOMES 
WHERE RESULT = 'ok' AND SHIP IN (	SELECT SHIP 
									FROM OUTCOMES 
									WHERE RESULT = 'damaged');