create database db_construindo_nossa_vida;

use db_construindo_nossa_vida;

create table tb_categoria(
	id bigint auto_increment,
	tamanho varchar(255),
    tipo varchar(255),
	finalidade varchar(255),
    primary key(id)
);

insert into tb_categoria(tamanho, tipo, finalidade)
	values("Pequeno", "Metal", "Multi-Uso");
insert into tb_categoria(tamanho, tipo, finalidade)
	values("Médio", "Ferro", "Multi-Uso");
insert into tb_categoria(tamanho, tipo, finalidade)
	values("Pequeno", "Metal", "Uso em porta");
insert into tb_categoria(tamanho, tipo, finalidade)
	values("Pequeno", "Madeira", "Abrir garrafas");
insert into tb_categoria(tamanho, tipo, finalidade)
	values("Grande", "Pedra", "Quebrar Estruturas");

select * from tb_categoria;

create table tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    valor int,
	peso varchar(255),
    quantidade int,
    produto_id bigint,
    primary key(id),
    foreign key(produto_id) references tb_categoria(id)
);

insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Maçaneta", 23, "63g", 100, 3);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Martelo", 29, "700g", 37, 2);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Marreta", 160, "3kg", 42, 5);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Canivete Suíço", 23, "73g", 71, 1);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Saca-Rolhas", 23, "100g", 22, 4);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Parafuso", 23, "5g", 751, 1);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Furadeira", 57, "600g", 58, 2);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "C%";

select * from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.produto_id;

select tb_categoria.tipo, tb_categoria.finalidade, tb_produto.nome 
from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.produto_id;
