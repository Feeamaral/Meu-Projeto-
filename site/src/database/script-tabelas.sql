-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!
/* para workbench - local - desenvolvimento */
create database holydayHome;
use holydayHome;
-- criando as tabelas
create table usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar (45),
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

create table experiencia (
idExperiencia int primary key auto_increment,
fkUsuario int,
foreign key (fkUsuario) references Usuario (idUsuario),
nomeUsuarioExp varchar (45),
destinoExp varchar (45),
expDesc varchar(500),
avaliacao decimal (3,2)
);
select* from experiencia;

-- inserindo os valores nas tabelas 
insert into usuario values (null,'Felipe Amaral','Felipe@email.com',123334),
                           (null,'Célia Ribeiro','celia@email.com',12382034),
                           (null,'Fernanda Benedicto','fernanda@email.com',123734),
                           (null,'Igor Tarquini','igor@email.com',1298),
                           (null,'Ricardo Souza','ricardo@email.com',1111),
                           (null,'Gabriel Vannuchi','gabriel@email.com',1010);

insert into destino values (null,'Bora - bora','Tahiti','50.000'),
                           (null,'Porto de galinhas','Brasil','5.000'),
                           (null,'Malé','Maldivas','30.000'),
                           (null,'Abu Dhabi','Dubai','20.000'),
                           (null,'Santorini','Grécia','20.000'),
                           (null,'Punta Cana','Caribe','10.000'),
                           (null,'Utah','Estados Unidos','35.000'),
                           (null,'Paris','França','15.000');
select*from destino;

insert into acompanhante values (null,'Zoe Silva',1,'Filha'),
                                (null,'Emily Reis',10,'Filha'),
                                (null,'Vilma Amaral',53,'conjuge'),
                                (null,'Osvaldo Benedicto',52,'conjuge'),
                                (null,'Evandro Silva',32,'Primo'),
                                (null,'Fernanda Almeida',1,'Amiga');
select*from acompanhante;
-- criando a entidade muitos para muitos 
create table UsuarioDestino (
fkUsuario int,
fkDestino int,
foreign key (fkDestino) references destino (idDestino),
fkAcompanhante int,
foreign key (fkAcompanhante) references acompanhante (idAcompanhante),
dataIda date,
primary key (fkUsuario,fkDestino,dataIda),
dataVolta date
);

insert into UsuarioDestino values (2,1002,102,'2022-09-09','2022-09-15'),
                                  (4,1000,101,'2022-06-10','2022-06-20'),
                                  (5,1005,100,'2022-08-25','2022-08-30'),
                                  (2,1003,105,'2022-07-14','2022-07-20'),
                                  (3,1001,103,'2022-06-15','2022-06-22'),
                                  (5,1002,105,'2022-12-03','2022-12-10'),
                                  (1,1005,104,'2023-01-02','2023-01-11'),
                                  (3,1001,103,'2022-10-01','2022-10-05');

select*from UsuarioDestino;

