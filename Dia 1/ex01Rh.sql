create database db_rh;

use db_rh; 
 
CREATE TABLE tb_funcionarios(
		id bigint auto_increment,
        nome varchar (55) not null,
        idade int not null,
        salario decimal (55) not null,
        area varchar(55) not null,
        vt int not null,
        primary key (id)
);

INSERT INTO tb_funcionarios(nome, idade, salario, area, vt) 
	VALUES ("Danilo", 21, 2700.00, "Programador", 350);
INSERT INTO tb_funcionarios(nome, idade, salario, area, vt) 
	VALUES ("Leticia", 19, 1700.00, "Logistica", 350);
INSERT INTO tb_funcionarios(nome, idade, salario, area, vt) 
	VALUES ("Patricia", 16, 7800.00, "Gestor", 350);
INSERT INTO tb_funcionarios(nome, idade, salario, area, vt) 
	VALUES ("Douglas", 25, 1200.00, "Administrador", 350);
INSERT INTO tb_funcionarios(nome, idade, salario, area, vt) 
	VALUES ("Hélio", 20, 4000.00, "Supervisor", 350);
    
SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00; 

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;