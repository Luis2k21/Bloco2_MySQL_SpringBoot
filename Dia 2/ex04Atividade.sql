create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
	id bigint auto_increment,
	tamanho varchar(255),
    tipo varchar(255),
	formatoEnvio varchar(255),
    primary key(id)
);

insert into tb_categoria(tamanho, tipo, formatoEnvio)
	values("Grande", "Aves", "Entrega");
insert into tb_categoria(tamanho, tipo, formatoEnvio)
	values("Grande", "Bovino", "Pegar no local");
insert into tb_categoria(tamanho, tipo, formatoEnvio)
	values("Grande", "Suíno", "Entrega");
insert into tb_categoria(tamanho, tipo, formatoEnvio)
	values("Médio", "Aves", "Pegar no local");
insert into tb_categoria(tamanho, tipo, formatoEnvio)
	values("Pequeno", "Suíno", "Pegar no local");
    
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
	values("Asa", 23, "1kg", 40, 1);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Bacon", 29, "250g", 33, 5);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Picanha", 160, "3kg", 73, 2);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Coxina da asa", 23, "700g", 125, 4);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Mocotó", 23, "550g", 70, 5);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Joelho de porco", 23, "400g", 24, 5);
insert into tb_produto(nome, valor, peso, quantidade, produto_id)
	values("Coxão mole", 57, "2kg", 30, 2);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "C%";

select * from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.produto_id;

select tb_categoria.tipo, tb_produto.nome from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.produto_id;

