-- Criar e usar database
create database Sprint1;

use Sprint1;

-- Criar tabela curso 
create table curso(
idCurso int primary key,
nome varchar(50),
sigla char(3),
coordenador varchar(50));

-- Inserir dados na tabela curso
insert into curso values
(1,'Algoritmos','ALG','Yoshi'),
(2,'Banco de Dados','BDD','Vivian'),
(3,'Tecnologia da Informação','TDI','Mônica'),
(4,'Arquitetura Computacional','ARC','Chola');

-- Exibir os dados da tabela curso
select * from curso;

-- Exibir apenas os coordenadores do curso
select coordenador from curso;

-- Exibir apenas os dados do curso da sigla 'ALG'
select * from curso where sigla = 'ALG';

-- Exibir os dados da tabela ordenada pelo curso em ordem crescente
select * from curso order by nome asc;

-- Exibir os dados da tabela ordenado pelo nome do coordenador em ordem decrescente
select * from curso order by coordenador desc;

-- Exibir os dados da tabela curso cujo o nome do curso comece com a letra 'a'
select * from curso where nome like 'A%';

-- Exibir os dados da tabela curso cujo o nome do curso termine com a letra 'o'
select * from curso where nome like '%o';

-- Exibir os dados da tabela curso cujo o nome do curso tenha como segunda letra a letra 'a'
select * from curso where nome like '_a%';

-- Exibir os dados da tabela curso cujo o nome do curso tenha como penultima letra a letra 'o'
select * from curso where nome like '%o_';

-- Excluir a tabela curso
drop table curso;