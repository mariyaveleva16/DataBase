Use master;
Drop database nine
Create database nine;
Go

Use nine;
Create table Product(
	model char(4),
	maker char(1),
	type varchar(7));

Create table Printer(
	code int,
	model char(4),
	price decimal(16,2));

Insert into Product(model, maker, type) values('Wert', 'B', 'newt');
Insert into Printer(code,model, price) values(123, 'retr', 12234,76);
Alter table printer add type Varchar(6), CONSTRAINT chk_TYPE CHECK (type IN ('laser','matrix','jet'));
Alter table Printer add color char(1) Default 'n', CONSTRAINT chk_col CHECK(color in ('n', 'y'));
Alter table Printer drop column price;
Drop table Product;
Drop table Printer;

USE master;
CREATE DATABASE fb;

USE fb;
Create Table Users(
	id int,
	email varchar(255),
	password varchar(255),
	regdate date
);
Create Table Friends(
	user1 int,
	user2 int
);
Create Table Wall(
	idReader int,
	idWriter int,
	text varchar(255),
	textdate Date
);
Create Table Groups(
	idGroup int,
	GroupName varchar(255),
	Description varchar(255) default ''
);
Create Table GroupMembers(
	userID int,
	groupID int
);

Insert into Users(id,email,password, regdate) values(2342,'ertgf.bg','grfrf','12-04-2011');
Insert into Friends(user1,user2) values (2342,4444);
Insert into Wall(idReader,idWriter,text,textdate) values(2342,4444,'feffg', '13-04-2011');
Insert into Groups values(23454,'grr', 'ytrew');
Insert into GroupMembers values(2342,23454);
