create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
	tamanho varchar(255),
    tipo varchar(255),
	formatoEnvio varchar(255),
    primary key(id)
);

insert into tb_categoria(tamanho,tipo,formatoEnvio)
	values("Pequeno", "Higiene Corporal", "Entrega");
insert into tb_categoria(tamanho,tipo,formatoEnvio)
	values("Médio", "Limpeza para moveis", "Pegar no local");
insert into tb_categoria(tamanho,tipo,formatoEnvio)
	values("Médio", "Limpeza para casa", "Pegar no local");
insert into tb_categoria(tamanho,tipo,formatoEnvio)
	values("Pequeno", "Limpeza banheiro", "Entrega");
insert into tb_categoria(tamanho,tipo,formatoEnvio)
	values("Médio", "Higiene Corporal", "Pegar no local");

select * from tb_categoria;

create table tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    valor decimal(2.2),
	peso varchar(255),
    quantidade int,
    produto_id bigint,
    primary key(id),
    foreign key(produto_id) references tb_categoria(id)
);

insert into tb_produto (nome,valor,peso,quantidade,produto_id)
	values("Rexona", 19.00, "300g", 20, 5);
insert into tb_produto (nome,valor,peso,quantidade,produto_id)
	values("Dove", 7.00, "50g", 55, 1);
insert into tb_produto (nome,valor,peso,quantidade,produto_id)
	values("Gillete", 5.00, "20g", 9, 1);
insert into tb_produto (nome,valor,peso,quantidade,produto_id)
	values("Mr.Musculo", 22.00, "400g", 30, 2);
insert into tb_produto (nome,valor,peso,quantidade,produto_id)
	values("Desinfetante", 13.00, "700g", 42, 3);
insert into tb_produto (nome,valor,peso,quantidade,produto_id)
	values("Água sanitária", 55.00, "1kg", 4, 4);
insert into tb_produto (nome,valor,peso,quantidade,produto_id)
	values("Brok", 2, "100g", 20, 1);

update tb_produto set valor = 55 where id = 6;
update tb_produto set valor = 2 where id = 7;

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

update tb_produto set nome = "Brok" where id = 7;

select * from tb_produto where nome like "%B%";

select * from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.produto_id;

select tb_categoria.tipo, tb_produto.nome 
from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.produto_id;

