create database db_generation_game_online;
use db_generation_game_online;

create table tb_personagem(
id_personagem bigint auto_increment,
nome varchar (50) not null,
tipo varchar (50) not null,
evoluir boolean not null,
fk_classe bigint,
primary key (id_personagem) , 
 foreign key (fk_classe) references tb_classe(id_classe) 
);
create table tb_classe(
id_classe bigint auto_increment,
habilidade varchar(50),
poder_def real not null,
poder_atq real not null,
primary key (id_classe)  
);
insert into tb_classe ( habilidade, poder_def, poder_atq )
values ("velocidade", 2000, 3000),
	   ("Força", 2000,4000),
       ("Agilidade",4000,1000),
       ("Magia",3000,3000),
       ("Voar",4000, 2000);
	
       select * from tb_classe;
       
insert into tb_personagem ( nome, tipo, evoluir, fk_classe )
values ("Perseguidora", "fogo",1,1),
	   ("Incineradora","fogo",1,4),
       ("Vigilante","terra",1,2),
       ("Cavaleira Rosa","terra",0,2),
       ("Dragão do caos", "mar",0,2),
       ("Corvo Negro", "ar",0,5),
       ("Arauto", "terra",0,4),
       ("Homem da luz","ar",1,3);

       select * from tb_personagem;
       
   select * from tb_personagem inner join tb_classe
   on tb_classe.id_classe = tb_personagem.fk_classe 
   where tb_classe.poder_atq > 3000    
   order by tb_classe.poder_atq;
       
   select * from tb_personagem inner join tb_classe
   on tb_classe.id_classe = tb_personagem.fk_classe 
   where tb_classe.poder_def  between 1000 and 2000   
   order by tb_classe.poder_atq;
       
   select * from tb_personagem where nome like "c%";
   
   select * from tb_personagem inner join tb_classe
   on tb_classe.id_classe = tb_personagem.fk_classe 
   where habilidade = "magia";
       
    
       