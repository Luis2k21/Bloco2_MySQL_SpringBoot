CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id bigint auto_increment,
    produto varchar (255) not null,
    marca varchar(255) not null,
    preco decimal  not null,
    tamanho varchar(255) not null,
    tecido varchar (255) not null,
    primary key (id)
);
    
INSERT INTO tb_produtos(produto, marca, preco, tamanho, tecido) 
	VALUES ("Camiseta", "Gucci", 850.00, "G", "Poliester/Algodão");
INSERT INTO tb_produtos(produto, marca, preco, tamanho, tecido) 
	VALUES ("Relógio", "Rolex", 2000.00, "M", "Metal");
INSERT INTO tb_produtos(produto, marca, preco, tamanho, tecido) 
	VALUES ("Boné", "Psg", 250.00, "M", "Algodão");
INSERT INTO tb_produtos(produto, marca, preco, tamanho, tecido) 
	VALUES ("Apple Air Dots", "Apple", 8000.00, "M", "Metal Polido");
INSERT INTO tb_produtos(produto, marca, preco, tamanho, tecido) 
	VALUES ("Tênis", "Nike", 550.00, "38", "Poliester");               
INSERT INTO tb_produtos(produto, marca, preco, tamanho, tecido) 
	VALUES ("Chuteira", "New Balance", 450.00, "37", "Fibra de carbono");

SELECT * FROM tb_produtos;

UPDATE tb_produtos SET produto = "Camisa" where id = 1;  
       
SELECT * FROM tb_produtos;                
  
SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;    