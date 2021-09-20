CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante(
    id bigint auto_increment,
    nome varchar (255) not null,
    idade int not null,
	sala varchar(255)  not null,
    escola varchar(255) not null,
    nota int not null,
    primary key (id)
);
    
INSERT INTO tb_estudante(nome, idade, sala, escola, nota) 
	VALUES ("Daniela", 19, "2F", "Ana Maria Hoeppner", 9);    
INSERT INTO tb_estudante(nome, idade, sala, escola, nota) 
	VALUES ("Caio", 18, "8A", "Ana Maria Hoeppner", 4);
INSERT INTO tb_estudante(nome, idade, sala, escola, nota) 
	VALUES ("Lucas", 13, "4C", "Ana Maria Hoeppner", 3);
INSERT INTO tb_estudante(nome, idade, sala, escola, nota) 
	VALUES ("João", 14, "5A", "Ana Maria Hoeppner", 7);
INSERT INTO tb_estudante(nome, idade, sala, escola, nota) 
	VALUES ("Giovanni", 12, "4A", "Ana Maria Hoeppner", 6);
INSERT INTO tb_estudante(nome, idade, sala, escola, nota) 
	VALUES ("Kamila", 17, "6A", "Ana Maria Hoeppner", 5);
INSERT INTO tb_estudante(nome, idade, sala, escola, nota) 
	VALUES ("Natasha", 13, "2b", "Ana Maria Hoeppner", 10);
INSERT INTO tb_estudante(nome, idade, sala, escola, nota) 
	VALUES ("Julia", 16, "3A", "Ana Maria Hoeppner", 9);
    
SELECT * FROM tb_estudante;     
     
SELECT * FROM tb_estudante WHERE nota > 7;       
SELECT * FROM tb_estudante WHERE nota < 7; 