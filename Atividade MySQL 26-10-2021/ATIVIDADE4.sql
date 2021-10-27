create database db_cidade_das_carnes;
use db_cidade_das_carnes;


create table tb_produtos(
 id_produtos bigint auto_increment primary key,
 nome varchar(50) not null,
 preco decimal (4.2),
 validade date,
 fk_id_categoria bigint,
foreign key (fk_id_categoria) references tb_categoria(id_categoria)
);

create table tb_categoria(
id_categoria bigint auto_increment primary key,
animal varchar (30) not null,
parte varchar (30)not null
);

select * from tb_categoria;
select * from tb_produtos;

insert into tb_produtos (nome,preco,validade,fk_id_categoria)
values ("Filé de frango",'11.99','2021-10-29',1 ),
("Asinha",'15.99','2021-10-29',2 ),
("Coxa de frango",'19.99','2021-11-19',3 ),
("Sobre coxa",'14.99','2021-10-20',4 ),
("Contra filé",'44.99','2021-10-19',5 ),
("Picanha de primeira",'55.99','2021-10-19',7 ),
("Costelinha de porco",'11.99','2021-11-19',8 );

insert into tb_categoria (animal, parte )
values ("Frango","Peito de frango"),
       ("Frango","Asa"),
	   ("Frango","Coxa"),
	   ("Frango","sobre-coxa"),
       ("Carne","contra filé"),
	   ("Carne","coxão mole"),
	   ("Carne","picanha"),
	   ("Porco","Costelinha de porco");
              
	select * from tb_produtos where preco > 40 ;   
	select * from tb_produtos where preco  between 10 and 30;
    select * from tb_produtos where nome like "%c%";
    
    select * from tb_produtos inner join tb_categoria  
    on tb_categoria.id_categoria = tb_produtos.fk_id_categoria;
    
    select * from tb_produtos inner join tb_categoria  
    on tb_categoria.id_categoria = tb_produtos.fk_id_categoria 
    where tb_categoria.animal = "frango";