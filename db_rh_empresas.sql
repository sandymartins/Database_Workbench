/* EXERCÍCIO RH DA EMPRESA*/
CREATE DATABASE db_rh_empresas;

USE db_rh_empresas;

CREATE TABLE tb_funcionario(
	id bigint auto_increment primary key,
    nome varchar (150),
    data_nascimento date,
    numero_cracha int,
    salario decimal(6,2)
);
SELECT * FROM tb_funcionario;

INSERT INTO tb_funcionario(nome,data_nascimento,numero_cracha,salario)VALUES("Bruna Bianca","2000-02-01",154,4500);

SELECT * FROM  tb_funcionario WHERE salario > 2000;

SELECT * FROM tb_funcionario WHERE salario < 2000;


