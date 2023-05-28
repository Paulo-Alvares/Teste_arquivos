use sprint2;

create table funcionario(
idFunc int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
telefoneFixo char(11),
telefoneCelular char(12),
ddd char(2),
prefixo char(5),
sufixo char(4)
);

insert into funcionario (nome, telefoneFixo) values
('Vivian', '988776655');

select*from funcionario;

insert into funcionario(sobrenome,ddd,prefixo,sufixo)values
('Souza', '11', '98765','3344');

update funcionario set nome = 'Paulo', sobrenome = 'Silva',prefixo = '98080' where idFunc = 3;

select concat('Meu nome completo é ',ifnull(nome,' '),' ',ifnull(sobrenome,' '))as completo from funcionario;