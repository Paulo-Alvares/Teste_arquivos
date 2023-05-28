create database sprint2;
use sprint2;

create table atleta(
IDatleta int primary key, 
nome varchar(40),
modalidade varchar(40),
qtMedalha int);

insert into atleta values
(1, 'Mauro','Volêi',3),
(2, 'Paulo','Futebol',9),
(3, 'Ana','Volêi',1),
(4, 'Ryan','Basquete',4),
(5, 'Emilly','Futebol',6),
(6, 'Geoavana','Corrida',3),
(7, 'Matheus','Corrida',2),
(8, 'Isabela','Basquete',8),
(9, 'Fernanda','Futebol',1),
(10, 'Leonardo','Futebol',3);

select * from atleta;

update atleta set qtMedalha = 4 where IDatleta = 1;

update atleta set qtMedalha = 11 where IDatleta = 2;

update atleta set qtMedalha = 2 where IDatleta = 3;

update atleta set nome = 'Rayana' where IDatleta = 4;

alter table atleta add column dtNasc date;

update atleta set dtNasc = '2004-02-06' where IDatleta = 1;
update atleta set dtNasc = '2001-10-23' where IDatleta = 2;
update atleta set dtNasc = '1980-11-30' where IDatleta = 3;
update atleta set dtNasc = '1998-01-31' where IDatleta = 4;
update atleta set dtNasc = '1997-03-01' where IDatleta = 5;
update atleta set dtNasc = '2002-02-05' where IDatleta = 6;
update atleta set dtNasc = '2001-05-06' where IDatleta = 7;
update atleta set dtNasc = '2004-07-01' where IDatleta = 8;
update atleta set dtNasc = '1996-06-18' where IDatleta = 9;
update atleta set dtNasc = '1999-03-27' where IDatleta = 10;

delete from atleta where IDatleta = 5;

select * from atleta where modalidade <> 'Natação';

select * from atleta where qtMedalha >= 3;

alter table atleta modify column modalidade varchar(60);

desc atleta;

truncate atleta;