-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
CREATE DATABASE Miranha;

USE Miranha;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    sobre VARCHAR (50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

/* select * from usuario; */

create table aranha (
	id INT PRIMARY KEY AUTO_INCREMENT,
	escolha VARCHAR(30),
	fkusuario int,
    foreign key (fkusuario) references usuario (id)
);

/* select * from Aranha;

select Escolha, count(Escolha) qtd_miranha from Aranha group by Escolha; */

/* para sql server - remoto - produção */
CREATE DATABASE Miranha;

USE Miranha;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    sobrenome VARCHAR (50),
	email VARCHAR(50),
	senha VARCHAR(50),
    fkAranha int,
    foreign key (fkAranha) references Aranha (idAranha)
);

create table Aranha (
	idAranha INT PRIMARY KEY AUTO_INCREMENT,
	Escolha VARCHAR(30)
);

select Escolha, count(Escolha) as Miranha from Aranha group by Escolha;