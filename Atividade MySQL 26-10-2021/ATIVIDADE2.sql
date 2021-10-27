create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizza (
id_pizza bigint auto_increment primary key,
nome varchar(50) not null,
preco decimal(5,2) not null,
borda boolean,
tamanho  enum ('pequena','media','grande') not null,
fk_id_categoria bigint(2),
 foreign key (fk_id_categoria) references tb_categoria(id_categoria) 
);

create table tb_categoria(
id_categoria bigint auto_increment primary key,
tipo varchar(50) not null, 
brinde varchar(50) not null
);

insert into tb_categoria (tipo,brinde)
values ("doce","Infelizment não tem brinde"),
       ("doce","Obá, você ganhou uma Dolly"),
       ("doce","Oba, você ganhou um brotinho"),
       ("salgada","Infelizment não tem brinde"),
       ("salgada","Obá, você ganhou uma Dolly"),
       ("salgada","Oba, você ganhou um brotinho");
       
insert into  tb_pizza (nome,preco,borda,tamanho,fk_id_categoria )
values("Quatro Queijos",022.00,1,"pequena",4),
      ("Calabresa",024.00,0,"media",5),
      ("Frango com Catupiry",044.00,1,"grande",6),
	  ("Chocolate com morango",024.00,0,"pequena",1),
	  ("Chocolate com granulado",034.00,0,"media",2),
	  ("Chocolate om banana",054.00,0,"grande",3);
      
	select * from tb_pizza;
    select * from tb_categoria;
    select * from tb_pizza where preco >= 30;
	select * from tb_pizza where preco  between 20 and 30;
    select * from tb_pizza where nome like "%c%";
    
    select * from tb_pizza inner join tb_categoria  
    on tb_categoria.id_categoria = tb_pizza.fk_id_categoria;
    
    select * from tb_pizza inner join tb_categoria  
    on tb_categoria.id_categoria = tb_pizza.fk_id_categoria 
    where tb_categoria.tipo = "doce";
