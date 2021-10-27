create database ecommerce;
use ecommerce;
 create table tb_produtos(
 id_prod bigint auto_increment,
 nome varchar(50) not null,
 marca varchar (50) not null,
 preco real not null, 
 categoria varchar (50) not null, 
 primary key (id_prod)
 );
 
 select * from ecommerce.tb_produtos;


insert into tb_produtos (nome, marca, preco, categoria)
    values ("Rosquinha Chocolate", "Carrefour", '3.59', "Biscoito e bolachas");
insert into tb_produtos (nome, marca, preco, categoria)
    values ("Isotônico Gatorade", "Gatorade", '3.29', "bebidas");
insert into tb_produtos (nome, marca, preco, categoria)
    values ("Linguiça Toscana Aurora", "Aurora", '14.99', "açougue");    
insert into tb_produtos (nome, marca, preco, categoria)
    values ("Cerveja Itaipava 269ml Lata", "Itaipava", '1.29', "Bebidas");    
insert into tb_produtos (nome, marca, preco, categoria)
    values ("Leite Longa Vida 1L Integral Italac Com Tampa", "Italac", '3.79', "Laticínios");    
insert into tb_produtos (nome, marca, preco, categoria)
    values ("Batata Lavada kg", " ABC Alho Batata Cebola", '4.99', "Hortfrut"); 
insert into tb_produtos (nome, marca, preco, categoria)
    values ("Leite Condensado Italac Semidesnatado 395g", "Italac", '4.19', "Creme de Leite");    
insert into tb_produtos (nome, marca, preco, categoria)
    values ("Óleo Soja Liza 900ml Pet ", "Oléo", '7.79', "óleo");    

SELECT nome, marca, preco  FROM tb_produtos WHERE preco > 5;
SELECT nome, marca, preco  FROM tb_produtos WHERE preco < 5;

 SELECT id_funcionare, nome, salario, cargo FROM funcionares WHERE salario < 2000;

 
 
update `ecommerce`.tb_produtos set `preco` = "3.89" where (`id_prod`=1);
 

