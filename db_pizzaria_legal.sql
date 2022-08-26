CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    
    /* POSSO TER VÁRIAS CHAVES ESTRANGEIRAS, PORÉM SOMENTE UMA CHAVE PRIMÁRIA*/
    
    /*SÓ SERÁ POSSÍVEL CRIAR OUTRA CHAVE PRIMÁRIA DENTRO DE OUTRO BANCO*/
	id bigint auto_increment primary key,
    descricao varchar(50),
    tamanho varchar(255),
    borda_recheada boolean
);
CREATE TABLE tb_pizzas(
	id bigint auto_increment primary key,
    sabor varchar(255),
    preco decimal(6,2),
    massa varchar(255),
    quantidade int,
    /*CATEGORIZANDO/REFERENCIANDO O ID NESSA TABELA*/
    categoria_id bigint,
    /*CRIANDO CHAVE ESTRANGEIRA PARA REFERENCIAR DE DADOS DE OUTRA TABELA*/
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho",true);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Frango c/ Catupiry", 45.99,"tradicional",5,1);

SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY sabor DESC;    /*mostrando o sabor em ordem decrescente*/
SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco ASC;    /*mostrando o valor em ordem crescente*/
SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <=100;     /*mostrando os valores de 50 a 100*/
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;          /*mostrando os valores de 50 a 100 de uma outra maneira*/
SELECT * FROM tb_pizzas WHERE sabor LIKE "m%";                 /*monstrando todes as pizzas que começam com a letra m*/
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";               /*monstrando todes as pizzas que possuem a letra m*/
SELECT sabor FROM tb_pizzas WHERE preco BETWEEN 50 AND 100; /*mostrando SOMENTE os SABORES das pizzas que entre 50 e 100 */

/* UNIFICANDO DUAS TABELAS COM O JOIN */
/*ESQUERDA TABELA DE PIZZA E DIREITO TABELA DE CATEGORIAS */
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;/* ON É COMO SE FOSSE O WHERE */

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.tamanho = "Brotinho";-- 

/* 
desafio !!!!!!!!!!!!!!!!! Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, 
onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).*/
/* 
alter table tb_pizzas 
ADD FOREIGN KEY (categoria_id_fk) 
REFERENCES tb_categoria(id);
*/
