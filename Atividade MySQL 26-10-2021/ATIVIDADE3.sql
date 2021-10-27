create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_produto(
id_prod bigint auto_increment primary key,
nome varchar (40) not null,
preco decimal(5.2) not null,
marca varchar (40) not null,
fk_categoria bigint,
  foreign key (fk_categoria) references tb_categoria(id_categoria) 
);

create table tb_categoria(
id_categoria bigint auto_increment primary key,
setor varchar (50),
receita varchar(40),
documento varchar (40)
);

select * from tb_produto;
select * from tb_categoria;


insert into tb_produto(nome, preco, marca, fk_categoria )
values ("dietilpropiona ", 044.88,"Genérico",1),
       ("Alprazolam",101.99,"Genérico",2),
       ("Aas Infantil",012.00,"Genérico",3),
       ("Carbamazepina", 044.00, "Genérico", 1);

insert into tb_categoria(setor,receita,documento)
values ("Controlados-restrítos","precisa de receita","precisa de documento"),
       ("Controlados ", "precisa de receita","Não necessita de documento"),
       ("Infantil", "Não necessita de receita", "Não nescessita de documento ");
       
       select * from tb_produto where preco >= 50;
	   select * from tb_produto where preco between 6 and 60;
   	   select * from tb_produto where nome  like "%b%";    
       
       select * from tb_produto inner join tb_categoria
       on tb_produto.fk_categoria = tb_categoria.id_categoria; 
       
	   select * from tb_produto inner join tb_categoria
       on tb_produto.fk_categoria = tb_categoria.id_categoria where receita = "precisa de receita"; 
       
       
       
       