-- Criar e usar banco de dados
create database Sprint1;

use Sprint1;

-- Criar tabela musica
create table musica(
idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40));

-- Inserindo dados na tabela 
insert into musica values
(1,'505','Arctic Monkeys','Indie'),
(2,'Yesterday','The Beatles','Rock'),
(3,'Welcome To The Jungle','Guns and Roses','Rock'),
(4,'Eleanor Rigby','The Beatles','Rock'),
(5,'Supera','Péricles','Pagode'),
(6,'Onde Anda Você','Tiago Nacarato','MPB'),
(7,'Do I Wanna Know','Arctic Monkeys','Indie');

-- Exibir os dados da tabela musica
select * from musica;

-- Exibir os titulos e artistas da tabela musica
select titulo, artista from musica;

-- Exibir os dados da tabela musica por um genero
select * from musica where genero = 'Rock';

-- Exibir os dados da tabela musica por um artista
select * from musica where artista = 'Arctic Monkeys';

-- Exibir os dados da tabela musica ordenado pelo titulo em ordem crescente
select * from musica order by titulo asc;

-- Exibir os dados da tabela musica ordenado pelo artista em ordem decrescente
select * from musica order by artista desc;

-- Exibir os dados da tabela musica ordenado pelo titulo que comece com a letra 'S'
select * from musica where titulo like 'S%';

-- Exibir os dados da tabela musica ordenado pelo artista que terminem com a letra 's'
select * from musica where artista like '%s';

-- Exibir os dados da tabela musica ordenado pelo genero que a segunda letra seja 'o'
select * from musica where genero like '_o%';

-- Exibir os dados da tabela musica ordenado pelo titulo que a penultima letra seja 'a'
select * from musica where titulo like '%a_';

-- Eliminar a tabela musica
drop table musica;

