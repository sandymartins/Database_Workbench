CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment primary key,
    codigo_produto int,
    tipo_produto varchar(50),
    cor_produto varchar(30),
    valor_produto decimal(5,2)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(codigo_produto,tipo_produto,cor_produto,valor_produto)VALUE(152,"Mesa","preto",50.000);
