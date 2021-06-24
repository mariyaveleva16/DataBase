Delete from SHIPS where name in(select SHIP from OUTCOMES where RESULT='sunk');

update CLASSES set BORE=BORE*2.5, DISPLACEMENT = DISPLACEMENT / 1.1;