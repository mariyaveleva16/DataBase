INSERT INTO product VALUES ('C', 1100, 'pc')
INSERT INTO pc VALUES (12, 1100, 2400, 2048, 500, '52x', 299);

Delete from pc where model=1100;

Delete from laptop where model in(select maker from product where type='laptop' and maker not in (select maker from product where type='printer'));

Update product set maker='A' where maker='B'; 

Update pc set price=price/2, hd=hd+20;

Update laptop set screen =screen+1 where model in (select model from product where maker='B'and type='laptop');