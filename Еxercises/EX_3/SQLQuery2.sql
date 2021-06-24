/*ZAD 1*/
SELECT DISTINCT product.maker
FROM product, (SELECT model FROM pc WHERE speed>500) AS P
WHERE product.model=P.model

/*ZAD 2*/
SELECT code, model, price
FROM printer
WHERE price>=ALL(SELECT PRICE FROM PRINTER)

/*ZAD 3*/
SELECT*
FROM laptop
WHERE LAPTOP.speed < ALL(SELECT speed FROM PC)

/*ZAD 4*/
SELECT S.MODEL, S.PRICE
FROM (SELECT MODEL, PRICE FROM PC
UNION SELECT MODEL, PRICE FROM laptop
UNION SELECT MODEL, PRICE FROM printer) AS S
WHERE S.price>= ALL(SELECT price FROM PC UNION SELECT PRICE FROM laptop UNION SELECT PRICE FROM printer)

/*ZAD 5*/
SELECT PRODUCT.maker
FROM PRODUCT
WHERE product.model IN (SELECT MODEL 
						FROM PRINTER
						WHERE COLOR='y' AND PRICE<= ALL(SELECT PRICE 
														FROM PRINTER
														WHERE COLOR='y'))

/*ZAD 6*/
SELECT product.maker
FROM product
WHERE MODEL IN (SELECT MODEL 
				FROM PC AS P1 
				WHERE RAM<=ALL(SELECT RAM 
								FROM PC) AND SPEED>=ALL(SELECT SPEED 
														FROM PC 
														WHERE ram=P1.ram))