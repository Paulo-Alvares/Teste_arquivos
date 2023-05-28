-- Criar e usar banco de dados
create database Sprint1;

use Sprint1;

-- Criar tabela professor
create table professor(
idProfessor int primary key,
nome varchar(50),
especialidade varchar(40),
dtNasc date);

-- Inserir dados na tabela professor
insert into professor values
(1,'Paulo Alvares','Algoritmos','2004-02-06'),
(2,'Emilly Liberato','História','2004-09-22'),
(3,'Leonardo Vasconcelos','História','2004-11-02'),
(4,'Ryan Landucci','Educação Física','2003-08-13'),
(5,'Fernanda Alvares','Pedagogia','1979-05-09'),
(6,'Geovanna Joia','Dança','2004-10-29');

-- Exibir os dados da tabela professor
select * from professor;

-- Exibir as especialidades da tabela professor
select especialidade from professor;

-- Exibir apenas os dados dos professores da especialidade 'História'
select * from professor where especialidade = 'História';

-- Exibir os dados da tabela professor em ordem alfabetica pelos nomes
select * from professor order by nome asc;

-- Exibir os dados da tabela professor em ordem decrescente pela data de nascimento
select * from professor order by dtNasc desc;

-- Exibir os dados da tabela professor cujo o nome comece com a letra 'G'
select * from professor where nome like 'G%';

-- Exibir os dados da tabela professor cujo o nome termine com a letra 's'
select * from professor where nome like '%s';

-- Exibir os dados da tabela professor cujo o nome tenha como segunda letra 'a'
select * from professor where nome like '_a%';

-- Exibir os dados da tabela professor cujo o nome tenha como penultima letra 'l'
select * from professor where nome like '%o_';