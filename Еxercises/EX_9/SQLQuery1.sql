/*
CREATE TABLE Product(
maker CHAR(4),
model VARCHAR(1),
type VARCHAR(7)
);

CREATE TABLE Printer(
code INTEGER,
model CHAR(4),
price DECIMAL(16,2)
);

Select Product.maker, Product.model, Product.type from Product;
INSERT INTO Product (maker, model, type) VALUES ('A', '4', 'p');
Select Product.maker, Product.model, Product.type from Product;
Select Printer.code, Printer.model, Printer.price from Printer;
INSERT INTO Printer VALUES (5, 'c', 26.5);
Select Printer.code, Printer.model, Printer.price from Printer;



ALTER TABLE Printer ADD type VARCHAR(6);
ALTER TABLE Printer ADD color CHAR(1) DEFAULT 'n';
ALTER TABLE Printer DROP COLUMN price;

DROP TABLE Product;
DROP TABLE Printer;
*/
USE master;
CREATE DATABASE fb;

USE fb;

CREATE TABLE Users (
	id INTEGER,
	email VARCHAR(255),
	password VARCHAR(255),
	date DATE
);

CREATE TABLE Friends (
	user1 INTEGER,
	user2 INTEGER
);

CREATE TABLE Walls (
	idWriter INTEGER,
	idOwner INTEGER,
	text VARCHAR(1000)
);

CREATE TABLE Groups (
	id INTEGER,
	name VARCHAR(255),
	description VARCHAR(1000) DEFAULT ''
);

CREATE TABLE GroupMembers (
	userId INTEGER,
	groupId INTEGER
);