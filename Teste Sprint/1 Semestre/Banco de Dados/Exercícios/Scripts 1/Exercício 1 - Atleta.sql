-- Criar e usar database
create database Sprint1;

use Sprint1;

-- Criar a tabela atleta
create table atleta(
idAtleta int primary key,
nome varchar(40),
modalidade varchar (40),
qtMedalha int);

-- Inserir dados na tabela atleta
insert into atleta values
(1, 'Paulo Alvares', 'Queimada', 10),
(2, 'Ryan Landucci', 'Queimada', 4),
(3, 'Emilly Liberato', 'Futebol', 7),
(4, 'Leonardo Vasconcelos', 'Futebol', 8),
(5, 'Luccas Bueno', 'Vôlei', 1),
(6, 'Geovanna Joia', 'Vôlei', 2),
(7, 'Emilly de Lima', 'Basquete', 5),
(8, 'Fernanda Alvares', 'Basquete', 4);

-- Exibir os dados da tabela atleta
select * from atleta;

-- Exibir o nome e quantidade de medalha dos atletas
select nome, qtMedalha from atleta;

-- Exibir os dados dos atletas de uma modalidade
select * from atleta where modalidade = 'Queimada';

-- Exibir os dados da tabela atleta ordenado pela modalidade
select * from atleta order by modalidade asc;

-- Exibir os dados da tabela atleta ordenado pela quantidade de medalhas em ordem decrescente
select * from atleta order by qtMedalha desc;

-- Exibir os dados dos atletas que contem a letra 's'
select * from atleta where nome like '%s%';

-- Exibir os dados dos atletas que comecem com a letra 'E'
select * from atleta where nome like 'E%';

-- Exibir os dados dos atletas que terminem com a letra 'o'
select * from atleta where nome like '%o';

-- Exibir os dados dos atletas com a penultima letra 'r'
select * from atleta where nome like '%r_';

-- Excluir a tabela
drop table atleta;
