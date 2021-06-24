/*1.Напишете заявка, която извежда производителя и честотата на лаптопите с
размер на диска поне 9 GB.*/
SELECT product.maker, laptop.speed
from product, laptop
where product.model=laptop.model and laptop.hd>9;

/*2. Напишете заявка, която извежда модел и цена на продуктите, произведени от
производител с име B.*/
select pc.model, pc.price
from pc, product
where pc.model=product.model and product.maker='B'
union
select  printer.model, printer.price
from printer, product
where printer.model=product.model and product.maker='B'
union
select laptop.model, laptop.price
from laptop, product
where laptop.model=product.model and product.maker='B';


/*3. Напишете заявка, която извежда производителите, които произвеждат лаптопи,
но не произвеждат персонални компютри.*/
select product.maker
from product
where product.type='Laptop'
except
select product.maker
from product
where product.type='PC'

/*4. Напишете заявка, която извежда размерите на тези дискове, които се предлагат
в поне два различни персонални компютъра (два компютъра с различен код).*/
select pc.hd
from pc
where pc.code not in (select pc.code from pc)

/*5. Напишете заявка, която извежда двойките модели на персонални компютри,
които имат еднаква честота и памет. Двойките трябва да се показват само по
веднъж, например само (i, j), но не и (j, i).*/

/*6. Напишете заявка, която извежда производителите на поне два различни
персонални компютъра с честота поне 400.*/