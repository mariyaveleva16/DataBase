/*ZAD 1
Напишете заявка, която извежда производител, модел и тип на продукт
за тези производители, за които съответният продукт не се продава
(няма го в таблиците PC, Laptop или Printer)*/SELECT DISTINCT product.maker, product.model, product.typeFROM producT LEFT JOIN PC ON product.model=pc.model LEFT JOIN laptop ON product.model=laptop.model LEFT JOIN printer ON product.model=printer.modelWHERE PC.code IS NULL AND laptop.code IS NULL AND printer.code IS NULL/*ZAD 2
Намерете всички производители, които правят както лаптопи, така и
принтери.*/SELECT DISTINCT product.makerFROM product INNER JOIN laptop ON product.model=laptop.model INTERSECT SELECT DISTINCT product.makerFROM PRODUCT INNER JOIN  printer ON product.model=printer.model/*ZAD 3
Намерете размерите на тези твърди дискове, които се появяват в два
или повече модела лаптопи.*/SELECT DISTINCT L1.hdFROM laptop AS L1 INNER JOIN laptop AS L2 ON L1.hd=L2.hdWHERE L1.model!=L2.model/*ZAD 4
Намерете всички модели персонални компютри, които нямат регистриран
производител.*/SELECT pc.modelFROM pc LEFT JOIN product ON PC.model=product.modelWHERE product.maker IS NULL