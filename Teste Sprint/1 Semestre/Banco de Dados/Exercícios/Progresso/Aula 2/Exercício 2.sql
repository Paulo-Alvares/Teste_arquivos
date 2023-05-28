use sprint2;

create table musica(
idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40));

insert into musica values 
(1, 'Do I Wanna Know','Arctic Monkeys','Indie'),
(2, 'The Less I Know The Better','Tame Impala','Indie'),
(3, 'Supera','Péricles','Pagode'),
(4, 'Yesterday','The Beatles','Rock'),
(5, 'Scar Tissue','Red Hot Chillie Peppers','Rock'),
(6, 'Come Together','The Beatles','Rock'),
(7, 'Anos Luz','Matue','Rap'),
(8, 'Formula Magica da Paz','Racionais','Rap'),
(9, 'Polarize','Twenty One Pilots','`Pop'),
(10, '505','Arctic Monkeys','Indie');

select * from musica;

alter table musica add column curtidas int;

update musica set curtidas = '1210123' where idMusica = 1;
update musica set curtidas = '378908' where idMusica = 2;
update musica set curtidas = '500000' where idMusica = 3;
update musica set curtidas = '1000000' where idMusica = 4;
update musica set curtidas = '200500' where idMusica = 5;
update musica set curtidas = '567980' where idMusica = 6;
update musica set curtidas = '5000000' where idMusica = 7;
update musica set curtidas = '456908' where idMusica = 8;
update musica set curtidas = '213631' where idMusica = 9;
update musica set curtidas = '78281909' where idMusica = 10;

alter table musica modify artista varchar(80);

update musica set curtidas = '14352583' where idMusica = 1;
update musica set curtidas = '1000000' where idMusica = 2;
update musica set curtidas = '580000' where idMusica = 3;
update musica set titulo = 'Cicatriz' where idMusica = 5;

delete from musica where idMusica = 4;

select * from musica where genero <> 'Funk';

select * from musica where curtidas >=20;

desc musica;

truncate musica;