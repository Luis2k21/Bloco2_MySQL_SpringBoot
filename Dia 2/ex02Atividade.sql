create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
	tamanho varchar(255),
    formatoCaixa varchar(255),
    tipo varchar(255),
    primary key(id)
);

insert into tb_categoria (tamanho,formatoCaixa,tipo) 
	values ("Grande","Hexagono", "salgado");
insert into tb_categoria (tamanho,formatoCaixa,tipo) 
	values ("Media", "Hexagono", "doce");
insert into tb_categoria (tamanho,formatoCaixa,tipo) 
	values ("Media","Retangular", "especial");
insert into tb_categoria (tamanho,formatoCaixa,tipo) 
	values ("Pequena","Hexagono", "salgado");
insert into tb_categoria (tamanho,formatoCaixa,tipo) 
	values ("Grande","Quadrado", "doce");
    
select * from tb_categoria;
    
create table tb_pizza(
	id bigint auto_increment,
    sabor varchar(255),
    valor int,
    tempo varchar(255),
	peso varchar(255),
    adicional varchar(255),
    categoria_id bigint,
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_pizza (sabor, valor,tempo,peso,adicional, categoria_id) 
	values("Frango com catupiry", 32, "1 Hora", "800g", "Dolly Guaraná", 1);
insert into tb_pizza (sabor,valor,tempo,peso,adicional, categoria_id) 
	values("Portuguesa", 29, "1 Hora", "950g", "Dolly Guaraná", 1);
insert into tb_pizza (sabor, valor,tempo,peso,adicional, categoria_id) 
	values("Chocolate", 26, "45m", "850g", "Pepsi", 2);
insert into tb_pizza (sabor, valor,tempo,peso,adicional, categoria_id) 
	values("Bacon", 33, "1 Hora & meia", "700g", "Fanta Laranja", 4);
insert into tb_pizza (sabor, valor,tempo,peso,adicional, categoria_id) 
	values("Camarão com gorgonzola", 38, "55m", "1kg", "Coca-Cola", 3);
insert into tb_pizza (sabor,valor,tempo,peso,adicional, categoria_id) 
	values("Beijinho", 48, "57m", "700g", "Guaraná Antarctica", 5);
    
update tb_pizza set valor = 49 where id = 2;

select * from tb_pizza where valor > 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where sabor like "C%";

select tb_categoria.tipo, tb_pizza.sabor from tb_categoria inner join tb_pizza
on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id where tipo like "doce";
