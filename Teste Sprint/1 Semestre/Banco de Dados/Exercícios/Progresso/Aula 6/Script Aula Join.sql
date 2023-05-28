use faculdade1adsc;

create table funcionario(
idFunc int primary key auto_increment,
nome varchar(45),
salario decimal(3,2)
);

create table dependente(
idDep int auto_increment,
nome varchar (45),
parentesco varchar (45),
fkFunc int,
foreign key (fkFunc) references funcionario(idFunc),
primary key (idDep,fkFunc))auto_increment=100;

insert into funcionario values
(null, 'Paulo','0.99'),
(null, 'Rafael','0.99');

select * from funcionario;

insert into dependente values 
(null, 'Paula', 'irmã',1),
(null, 'Rafaela', 'irmã',2),
(null, 'Paulão', 'irmã',1);

select * from dependente;

select * from funcionario as func join dependente as dep on func.idFunc = dep.fkFunc;