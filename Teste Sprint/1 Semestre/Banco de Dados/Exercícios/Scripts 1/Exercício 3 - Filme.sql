-- Criar e usar banco de dados
create database Sprint1;

use Sprint1;

-- Criar tabela filme
create table filme(
idFilme int primary key,
titulo varchar(50),
genero varchar(40),
diretor varchar(40));

-- Inserir dados na tabela filme
insert into filme values
(1,'Vingadores: Ultimato', 'Ação', 'Joe Russo e Antony Russo'),
(2,'Corra', 'Suspense', 'Jordan Peele'),
(3,'Nós', 'Suspense', 'Jordan Peele'),
(4,'A forma da água', 'Drama', 'Guilhermo Del Toro'),
(5,'Jurassic Park', 'Aventura', 'Steven Spilber'),
(6,'Beatles: Get Back', 'Documentário', 'Peter Jackson'),
(7,'Vingadores: Guerra Infinita', 'Ação', 'Joe Russo e Antony Russo');

-- Exibir a tabela filme
select * from filme;

-- Exibir os titulos e diretores da tabela filme
select titulo, diretor from filme;

-- Exibir os dados da tabela filme do genero 'Ação'
select * from filme where genero = 'Ação'; 

-- Exibir os dados da tabela filme do diretor 'Jordan Peele'
select * from filme where diretor = 'Jordan Peele';

-- Exibir os dados da tabela filme ordenado pelos titulos em ordem crescente
select * from filme order by titulo asc;

-- Exibir os dados da tabela filme ordenado pelo diretor em ordem decrescente
select * from filme order by diretor desc;

-- Exibir os dados da tabela filme cujo o titulo comece com a letra 'V'
select * from filme where titulo like 'V%';

-- Exibir os dados da tabela filme cujo o diretor termine com a letra 'o'
select * from filme where diretor like '%o';

-- Exibir os dados da tabela filme cujo o genero tenha como segunda letra 'v'
select * from filme where genero like '_v%';

-- Exibir os dados da tabela filme cujo o titulo tenha como penultima letra 'u'
select * from filme where titulo like '%u_';

-- Excluir a tabela filme
drop table filme;
