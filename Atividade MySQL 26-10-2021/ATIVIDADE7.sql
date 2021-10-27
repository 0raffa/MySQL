create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_aluno(
 id_produtos bigint auto_increment primary key,
 nome varchar(50) not null,
 idade bigint not null,
 endereco varchar (50),
 fk_id_curso bigint,
foreign key (fk_id_curso) references tb_curso(id_curso)
);

create table tb_curso(
id_curso bigint auto_increment primary key,
nome varchar (100), 
professor varchar (100), 
horario varchar (100)
);

select * from tb_curso;
select * from tb_aluno;

insert into tb_aluno (nome, idade,endereco, fk_id_curso) 
values ("Rafael", 19, "Rua marcos,17", 1),
       ("José",22,"rua jose,12", 2),
	   ("Carlos", 25 ,"Rua Mariano,12", 3 ),
	   ("Mauricio", 15 ,"Rua jose silva,12 ",  4),
	   ("Barnabé", 17 ,"R. Carlos Silva,12",  4),
	   ("Marieta", 22 ,"R. manoel,11",3  ),
	   ("Roberta",27  ,"Rua, carlos,12",2  ),
	   ("Joana", 27 ,"Rua Silva Silba,199",2  );

insert into tb_curso(nome,professor,horario)
values ("Matematica","Claudio", "Das 07:15 ás 12:00"),
("Portugues", "Roberto", "Das 13:00 ás 19:00"),
("Inglês", "Rubens","19:00 ás 22:00"),
("História", "Honorário", "horário integral");

              
	select * from tb_aluno where idade > 20 ;   
	select * from tb_aluno where idade  between 11 and 25;
    select * from tb_aluno where nome like "%c" ;
    
    select * from tb_aluno inner join tb_curso 
    on tb_curso.id_curso = tb_aluno.fk_id_curso;
    
    select * from tb_aluno inner join tb_curso  
    on tb_curso.id_curso = tb_aluno.fk_id_curso 
    where tb_curso.professor = "claudio";