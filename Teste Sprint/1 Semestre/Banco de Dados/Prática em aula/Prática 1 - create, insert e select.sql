-- Criar e usar o banco de dados
create database faculdade1adsc;

use faculdade1adsc;

-- Criar uma tabela
create table aluno(
ra char(8) primary key,
nome varchar(50),
bairro varchar(50));

-- Exibir os dados da tabela
select * from aluno;

-- Inserir dados na tabela
insert into aluno values 
('01222001', 'Paulo', 'Baronesa'),
('01222002', 'Emilly', 'Vila dos Remédios'),
('01222003', 'Ryan', 'Padroeira'),
('01222004', 'Leonardo', 'Rochdale');

-- Exibir os alunos em ordem alfabética
-- Crescente 
select * from aluno order by nome asc;

-- Decresente
select * from aluno order by nome desc;