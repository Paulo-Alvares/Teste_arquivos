create table pessoas (
    id int primary key, 
    nome varchar (50),
    peso float,
    altura double,
    salario decimal(10,2)
);

insert into pessoas value (1,'Cebolinha',87.9,1.55,1.99);

select concat ('A pessoa: ', nome, ' pesa: ',peso,' e mede: ',altura, ' e ganha ',salario,'!')from pessoas;

select * from pessoas order by asc;  