use sprint1;

create table professor (
idProfessor int primary key auto_increment,
nome varchar(50),
sobrenome varchar(30),
especialidade1 varchar(40),
especialidade2 varchar(40)
);

insert into professor (nome, sobrenome, especialidade1, especialidade2) values
('Melbi','Lau','Banco de Dados', 'Front-End'),
('Kelly','Inguisa','Infraestrutura', 'Front-End'),
('Tomas','Turbando','Gestão e Liderança', 'Economia'),
('Jacinto','Pinto','Infraestrutura', 'Gestão e Liderança'),
('Cuca','Beludo','Banco de Dados', 'Expressão Corporal'),
('Geny','Talia','Logistica', 'Entrosamento');

create table disciplina (
idDisciplina int primary key auto_increment,
nome varchar(45)
);

insert into disciplina (nome) values
('Matematica'),
('Portugues'),
('Geografia'),
('Historia'),
('Ciencia'),
('Fisica');

alter table disciplina add column fkprofessor int;
alter table disciplina add foreign key (fkprofessor) references professor(idProfessor);

update disciplina set fkprofessor = 1 where idDisciplina = 1;  
update disciplina set fkprofessor = 2 where idDisciplina = 2;  
update disciplina set fkprofessor = 3 where idDisciplina = 3;  
update disciplina set fkprofessor = 4 where idDisciplina = 4;  
update disciplina set fkprofessor = 5 where idDisciplina = 5;  
update disciplina set fkprofessor = 6 where idDisciplina = 6;  

select * from disciplina;

select disciplina.nome, professor.nome from disciplina join professor on idProfessor = fkprofessor;

select * from disciplina join professor on idProfessor = fkprofessor where professor.sobrenome = 'Beludo';

select especialidade1, nome from disciplina join professor on idProfessor = fkprofessor;

create table curso (
idCurso int primary key auto_increment,
nome varchar(50),
sigla char(3),
coordenador varchar(50)
);

insert into curso (nome, sigla, coordenador) values
('Administração', 'ADM', 'Mauro'),
('Gerencia','GER','Claudinho'),
('Logistica','LOG','Paulo');

create table unidade (
idUnidade int primary key auto_increment,
nome varchar(30)
);

insert into unidade (nome) values
('Maria Rosa'),
('Euclides Cunha'),
('Mauro Filho');

alter table curso add column fkunidade int;
alter table curso add foreign key (fkunidade) references unidade(idUnidade);

update curso set fkunidade = 1 where idCurso = 1;  
update curso set fkunidade = 2 where idCurso = 2;  
update curso set fkunidade = 3 where idCurso = 3;

select curso.nome, unidade.nome from curso join unidade on idUnidade = fkunidade;