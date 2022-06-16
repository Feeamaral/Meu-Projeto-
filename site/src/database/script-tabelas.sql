-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
create database holydayHome;
use holydayHome;

create table usuario (
idUsuario int primary key auto_increment,
nome varchar (45),
email varchar (45),
senha int
);

create table destino (
idDestino int primary key auto_increment,
nomeDestino varchar (30),
pais varchar (30),
preco decimal (6,3)
) auto_increment = 1000;

create table acompanhante (
idAcompanhante int primary key auto_increment,
nomeAcompanhante varchar (45),
idade int,
relacao varchar (45)
) auto_increment = 100;
