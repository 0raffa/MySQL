create database db_escola;
use db_escola;

create table tb_alune (
id_alune bigint auto_increment,
nome varchar (255) not null,
idade int not null,
curso enum("Phyton","C#","JAVA" ) not null,
nota real not null,
primary key (id_alune)
);

select * from tb_alune;

insert into tb_alune (nome, idade, curso, nota)
   values ("Rafael Rodrigues", 29, "JAVA", 2.2);
insert into tb_alune (nome, idade, curso, nota)
   values ("Rubia Dias", 39, "Phyton", 7.3);
insert into tb_alune (nome, idade, curso, nota)
   values ("Caetano Castro", 49, "C#", 3.1);
insert into tb_alune (nome, idade, curso, nota)
   values ("Julia Pereira", 23, "C#", 4.4);
insert into tb_alune (nome, idade, curso, nota)
   values ("pereira caetano", 21, "C#", 8.8);
insert into tb_alune (nome, idade, curso, nota)
   values ("Julia Dias", 19, "Phyton", 10.0);
insert into tb_alune (nome, idade, curso, nota)
   values ("Rafael Pereira", 29, "JAVA", 5.50);

 select * from tb_alune; 
 
SELECT nome, nota FROM tb_alune WHERE nota > 7;
SELECT nome, nota FROM tb_alune WHERE nota < 7;

 
update `db_escola`.tb_alune set `nota` = "7" where (`id_alune`=1);


