create database db_generation_online;

use db_generation_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(255),
defesa int,
ataque int, 
agilidade int,
primary key (id)
);

insert into tb_classe (nome,defesa,ataque,agilidade) 
	values("Arqueiro", 300, 1000, 550);
insert into tb_classe (nome,defesa,ataque,agilidade) 
	values("Assassino", 200, 2700, 1000);
insert into tb_classe (nome,defesa,ataque,agilidade) 
	values("Guerreiro", 1200, 1400, 350);
insert into tb_classe (nome,defesa,ataque,agilidade) 
	values("Tanque", 2700, 350, 200);
insert into tb_classe (nome,defesa,ataque,agilidade) 
	values("Mago", 300, 1800, 730);
    
select * from tb_classe;
    

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255),
    altura decimal,
    peso decimal,
    guilda varchar(255),
    espaco_mochila int,
    personagem_id bigint,
    primary key (id),
    foreign key(personagem_id) references tb_personagem(id)
);

insert into tb_personagem (nome,altura,peso,guilda,espaco_mochila,personagem_id) 
	values("Crowley", 1.85, 87.2, "Frost", 44, 1);
insert into tb_personagem (nome,altura,peso,guilda,espaco_mochila,personagem_id) 
	values("Froid", 1.75, 75.2, "Lima", 30, 2);
insert into tb_personagem (nome,altura,peso,guilda,espaco_mochila,personagem_id) 
	values("Gend", 1.65, 60.4, "Dromedario", 37, 4);
insert into tb_personagem (nome,altura,peso,guilda,espaco_mochila,personagem_id) 
	values("Pk", 1.85, 87.9, "Frost", 27, 5);
insert into tb_personagem (nome,altura,peso,guilda,espaco_mochila,personagem_id) 
	values("B U G A T T I", 1.95, 97.2, "Lima", 27, 5);
insert into tb_personagem (nome,altura,peso,guilda,espaco_mochila,personagem_id) 
	values("Pk", 1.65, 37.7, "Gods", 79, 1);
insert into tb_personagem (nome,altura,peso,guilda,espaco_mochila,personagem_id) 
	values("Pk", 1.62, 60.2, "Gods", 30, 2);
insert into tb_personagem (nome,altura,peso,guilda,espaco_mochila,personagem_id) 
	values("Dokko", 1.55, 55.2, "Dromedario", 20, 1);

update tb_personagem set nome = "Ghost" where id = 6;
update tb_personagem set nome = "Gas" where id = 7;
select * from tb_personagem;

select tb_personagem.nome, tb_personagem.guilda, tb_classe.ataque
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.personagem_id where tb_classe.ataque > 2000;

select tb_personagem.nome, tb_personagem.guilda, tb_classe.ataque
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.personagem_id where tb_classe.defesa between 1000 and tb_classe.defesa < 2000;

update tb_personagem set nome = "John" where id = 4;
update tb_personagem set nome = "SonZ" where id = 7;
select * from tb_personagem where tb_personagem.nome like "%C%";

select tb_personagem.nome, tb_personagem.guilda, tb_classe.ataque
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.personagem_id;

select tb_personagem.nome, tb_classe.nome
from tb_personagem inner join tb_classe
on tb_classe.id = tb_personagem.personagem_id;
