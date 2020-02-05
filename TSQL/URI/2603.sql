USE master;
GO

DROP DATABASE DB2603;
GO

CREATE DATABASE DB2603 ON PRIMARY (
NAME = DB2603,
FILENAME ='B:\GIT\SQL\URI\DB2603.mdf',
SIZE = 1 MB,
MAXSIZE = 5MB,
FILEGROWTH = 10% 
);
GO

USE DB2603;

CREATE TABLE TBLcustomers(
ID smallint IDENTITY (1,1) NOT NULL,
name varchar(50),
street varchar (50),
city varchar (20),
state char (2),
credit_limit money,
CONSTRAINT pk_ID PRIMARY KEY(id)
);
GO

INSERT INTO TBLcustomers (name, street, city, state, credit_limit) VALUES('Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700.00);
INSERT INTO TBLcustomers (name, street, city, state, credit_limit) VALUES('Antonio Carlos Mamel', 'Rua Pedro Carlos Hoffman', 'Belo Horizonte', 'MG', 3500.50);
INSERT INTO TBLcustomers (name, street, city, state, credit_limit) VALUES('Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00);
INSERT INTO TBLcustomers (name, street, city, state, credit_limit) VALUES('Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', 800.00);
INSERT INTO TBLcustomers (name, street, city, state, credit_limit) VALUES('Marcos Antônio dos Santos', 'Av Farrapoe', 'Porto Alegre', 'RS', 4250.00);
GO

SELECT name, street FROM TBLcustomers WHERE city = 'Porto Alegre';