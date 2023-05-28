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

-- Exibir um dado específico
select * from aluno where nome = 'Paulo';

-- Atualizar dados na tabela
update aluno set nome = 'Ryan Landucci' where ra = '01222003';

-- Descrever a estrtura da tabela
desc aluno;
describe aluno;

-- Exibir os dados do começo da tupla
select * from aluno where nome like 'Ryan %';

-- Exibir os dados pela primeira letra da segunda palavra
select * from aluno where nome like '% L%';

-- Exibir os dados que contem uma letra
select * from aluno where nome like '%a%';

-- Exibir os dados por posição das letras
-- Segunda letra
select * from aluno where nome like '_a%';

-- Penultima letra
select * from aluno where nome like '%_a';

-- Excluir dados na tabela
delete from aluno where ra = '01222004';

-- Excluir mais de um dado por vez
delete from aluno where ra in('01222003', '01222002');