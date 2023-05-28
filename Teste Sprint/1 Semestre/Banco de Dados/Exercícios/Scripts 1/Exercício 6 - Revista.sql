-- Criar e usar banco de dados
create database Sprint1;

use Sprint1;

-- Criar tabela revista
create table revista(
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30));

-- Inserir os dados nome na tabela revista
insert into revista(nome) values
('Veja'),
('Forbes'),
('Tititi'),
('Micro-Sistemas');

-- Exibir os dados da tabela revista
select * from revista;

-- Atualizar a categoria da tabela revista e exibir novamente para conferir se funcionou
update revista set categoria = 'Notícias' where idRevista = 1;
update revista set categoria = 'Negócios' where idRevista = 2;
update revista set categoria = 'Fofoca' where idRevista = 3;
update revista set categoria = 'Informativa' where idRevista = 4;

select * from revista;

-- Inserir mais 3 revistas
insert into revista values
(null,'Folha de SP','Nóticias'),
(null,'Vogue','Moda'),
(null,'Capricho','Entreterimento');

-- Exibir os dados da tabela revista
select * from revista;

-- Exibir a descrição da tabela revista
desc revista;

-- Alterar a coluna categoria para varchar(40) e exibir para conferir se funcionou
alter table revista modify column categoria varchar(40);

desc revista;

-- Adicionar a coluna periodicidade e exibir os dados da tabela
alter table revista add column periodicidade varchar(15);

select * from revista;

-- Excluir a coluna periodicidade da tabela
alter table revista drop column periodicidade;

-- Excluir o banco de dados
drop database Sprint1;
