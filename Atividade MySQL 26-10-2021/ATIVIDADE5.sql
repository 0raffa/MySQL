create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_prod(
 id_prod bigint auto_increment primary key,
 nome varchar(250),
 marca varchar(50),
 preco double,
 cor varchar(20),
 fk_id_categoria  bigint,
foreign key (fk_id_categoria) references tb_cat(id_cat)
);

create table tb_cat(
id_cat bigint auto_increment primary key,
departamento varchar(50),
oferta varchar (50)
);

select * from tb_cat;
select * from tb_prod;

insert into tb_prod (nome,marca,preco,cor,fk_id_categoria)
values ( "Jogo De Cama Para Berço - Malha - 2 Peças - 100% Algodão","Sul Brasil",111.11, "Preto",1),
       ("Box de Canto de Correr Vidro 185x87x87cm Incolor", "Kit Sensea", 121.11, "Verde",2),
       ("Multissuperfícies Tinta Epóxi Branca 0,9l"  ,"Suvinil",144.11,"Branco",3),
	   ("Pallet Liso Madeira Pinus Aparelhado 70x70cm" ,"Settis",121.11,"Vermelho", 4),
       ("Tinta Acrílica Fosco Rende e Cobre Branco 20L" , "Suvinil", 199.00,"Amarelo", 3);


insert into tb_cat (departamento, oferta )
values ("Cama, mesa e banho", "20% de desconto para cama, mesa e banho"),
       ("Banheiros", "10% de desconto"),
       ("Tintas", "6% de desconto"),
       ("Madeira","15% de desconto");

              
	select * from tb_prod where preco > 150 ;   
	select * from tb_prod where preco  between 100 and 150;
    select * from tb_prod where marca like "%s";
    
    select * from tb_prod inner join tb_cat  
    on tb_cat.id_cat = tb_prod.fk_id_categoria;
    
    select * from tb_prod inner join tb_cat  
    on tb_cat.id_cat = tb_prod.fk_id_categoria 
    where tb_cat.departamento = "Tintas";