create database db_empresa;

use db_empresa;

create table funcionares(
id_funcionare bigint auto_increment,
nome varchar(50) not null,
salario real not null,
dt_nasc date,
cargo varchar(50),
primary key (id_funcionare)
);

drop table funcionare;

insert into funcionares (nome, salario, dt_nasc, cargo)
    values ("Rafael Rodrigues", 12000.50, '1992/02/24', "Gerente");
insert into funcionares (nome, salario, dt_nasc, cargo)
    values ("Stephanie Micaela", 5600.00, '1998/03/22', "Analista Pleno");
insert into funcionares (nome, salario, dt_nasc, cargo)
    values ("Lorenzo Figueiredo", 4000.00, '2002/02/21', "Analista Junior");
insert into funcionares (nome, salario, dt_nasc, cargo)
    values ("Joana Couto", 1200.00, '1999/06/12', "Caixa");
insert into funcionares (nome, salario, dt_nasc, cargo)
    values ("Maria Rui", 1200.50, '1976/09/11', "Caixa");
    
 select * from funcionares;    
 
 SELECT id_funcionare, nome, salario, cargo FROM funcionares WHERE salario > 2000;
 SELECT id_funcionare, nome, salario, cargo FROM funcionares WHERE salario < 2000;
 
 
update `db_empresa`.funcionares set `salario` = "1250.00" where (`id_funcionare`=4);
