use sprint2;

create table professor(
idProfessor int primary key,
nome varchar (50),
especialidade varchar (50),
datanascimento date);

insert into professor values
(1, 'Mauro', 'Auxiliar PCD', '1980-09-23'),
(2, 'Fernanda', 'Pedagogia', '1979-05-09'),
(3, 'Vivian', 'Banco de Dados', '1980-10-13'),
(4, 'Thiago', 'Socioemocional', '1968-01-30'),
(5, 'Neide', 'Algoritmos', '1978-11-28'),
(6, 'Carla', 'Auxiliar PCD', '1983-07-15'),
(7, 'Elaine', 'Matematica', '1978-01-04');

select * from professor;

alter table professor add column funcao varchar(50) constraint altfuncao check (funcao in ('Monitor','Titular','Auxiliar'));

update professor set funcao = 'Auxiliar' where idProfessor =1;
update professor set funcao = 'Titular' where idProfessor =2;
update professor set funcao = 'Titular' where idProfessor =3;
update professor set funcao = 'Monitor' where idProfessor =4;
update professor set funcao = 'Monitor' where idProfessor =5;
update professor set funcao = 'Auxiliar' where idProfessor =6;
update professor set funcao = 'Titular' where idProfessor =7;
  
insert into professor values
(13, 'Junior','Portugues', '2002-07-09','Auxiliar');

delete from professor where idProfessor =5;

select * from professor where funcao = 'Titular';

select especialidade, datanascimento from professor where funcao = 'Monitor';

update professor set datanascimento = '1985-10-13' where idProfessor = 3;

truncate table professor;

