use sprint2;

create table filme(
idFilme int primary key,
titulo varchar(50),
genero varchar(40),
diretor varchar(40));

insert into filme values 
(1,'A Forma da Agua','Drama','Guilhermo Del Toro'),
(2,'Clube da Luta','Drama','David Fincher'),
(3,'Vingadores: Ultimato','Ação','Joe Russo e Anthony Russo'),
(4,'Homem Aranha: Sem Volta pra Casa','Ação','Jon Watts'),
(5,'Parasita','Drama','Bong Joon-ho'),
(6,'Hereditario','Terror','Ari Aster'),
(7,'Harry Potter e o Prisioneiro de Azkaban','Fantasia','Alfonso Cuaron'),
(8,'Senhor dos Aneis e as Duas Torres','Fantasia','Peter Jackson'),
(9,'Circulo de Fogo','Ficção Cientifica','Guilhermo Del Toro'),
(10,'Shrek','Fantasia','Andrew Adamson e Vicky Jenson'),
(11,'Todo Poderoso','Comedia','Tom Shadyac'),
(12,'O Maskara','Comedia','Chuck Russel'),
(13,'Corra','Terror','Jordan Peele'),
(14,'Vingadores: Guerra Infinita','Ação','Joe Russo e Anthony Russo');

select * from filme;

alter table filme add column protagonista varchar(50);

update filme set protagonista = 'Sally Hawkins' where idFilme = 1;
update filme set protagonista = 'Bradd Pitty' where idFilme = 2;
update filme set protagonista = 'Robert Downey Jr.' where idFilme = 3;
update filme set protagonista = 'Tom Holland' where idFilme = 4;
update filme set protagonista = 'Park Seo-jun' where idFilme = 5;
update filme set protagonista = 'Tony Collete' where idFilme = 6;
update filme set protagonista = 'Daniel Radcliff' where idFilme = 7;
update filme set protagonista = 'Elijah Wood' where idFilme = 8;
update filme set protagonista = 'Charlie Hunanm' where idFilme = 9;
update filme set protagonista = 'Mike Meyers' where idFilme = 10;
update filme set protagonista = 'Jim Carrey' where idFilme = 11;
update filme set protagonista = 'Jim Carrey' where idFilme = 12;
update filme set protagonista = 'Daniel Kaluuia' where idFilme = 13;
update filme set protagonista = 'Robert Downey Jr.' where idFilme = 14;

alter table filme modify diretor varchar(150);

update filme set diretor = 'Robert DeNiro' where idFilme = 5;
update filme set diretor = 'Jim Carrey' where idFilme =2;
update filme set diretor = 'Mauro Filho' where idFilme =7;
update filme set titulo = 'Hereditary' where idFilme =6;

delete from filme where idFilme = 3;

select * from filme where genero <> 'Drama';

select * from filme where genero = 'Suspense'; 

desc filme; 

truncate filme;