create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint auto_increment,
	tipo varchar(255),
	ativo boolean,
    primary key(id)
);

insert into tb_categoria(tipo,ativo)
	values("Presencial", true);
insert into tb_categoria(tipo,ativo)
	values("Semi-Presencial", true);
insert into tb_categoria(tipo,ativo)
	values("Presencial", true);
insert into tb_categoria(tipo,ativo)
	values("EAD", true);

select * from tb_categoria;

create table tb_produto(
	id bigint auto_increment,
	nome varchar(255),
	custo int,
    cargaHoraria varchar(255),
    produto_id bigint,
    primary key(id),
	foreign key(produto_id) references tb_categoria(id)
);

insert into tb_produto(nome,custo,cargaHoraria,produto_id)
	values("Curso de programação", 193, "180h", 1);
insert into tb_produto(nome,custo,cargaHoraria,produto_id)
	values("Curso de hardware", 55, "4h", 3);
insert into tb_produto(nome,custo,cargaHoraria,produto_id)
	values("Curso de software", 496, "250h", 1);
insert into tb_produto(nome,custo,cargaHoraria,produto_id)
	values("Curso Alura Edit", 200, "10h", 2);
insert into tb_produto(nome,custo,cargaHoraria,produto_id)
	values("Generation", 0, "447h", 4);
insert into tb_produto(nome,custo,cargaHoraria,produto_id)
	values("Generation", 0, "447h", 1);
    
update tb_produto set custo = 42 where id = 2;

select * from tb_produto;

select * from tb_produto where custo > 50;

select * from tb_produto where custo between 3 and 60;

select * from tb_produto where nome like "G%";

select * from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.produto_id;

select tb_categoria.tipo, tb_produto.nome from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.produto_id;
