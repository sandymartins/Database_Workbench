CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

/*1 - Crie a tabela tb_categorias e determine pelo menos 2 atributos, 
além da Chave Primária, relevantes para classificar os produtos.*/
CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
    nome_funcionarios varchar(80),
    codigo_produtos decimal(4,0)
);
/*2 - Crie a tabela tb_produtos e determine 4 atributos,
além da Chave Primária, relevantes aos produtos da farmácia.*/

/*3 - Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos. */
CREATE TABLE tb_produtos(
	id bigint auto_increment primary key,
    nome_med varchar(50),
    valor_med decimal(4,2),
    categoria_med varchar(50),
    quant_vendas int,
    categoria_id bigint,
    FOREIGN KEY(categoria_id)REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
/*4 - Insira 5 registros na tabela tb_categorias.*/
INSERT INTO tb_categorias(nome_funcionarios,codigo_produtos)VALUES("José Alberto de Souza",2541);
INSERT INTO tb_categorias(nome_funcionarios,codigo_produtos)VALUES("João Marcio Silva",8745);
INSERT INTO tb_categorias(nome_funcionarios,codigo_produtos)VALUES("Ana Beatriz Dourado",2587);
INSERT INTO tb_categorias(nome_funcionarios,codigo_produtos)VALUES("Rebeca de Andrade",3657);
INSERT INTO tb_categorias(nome_funcionarios,codigo_produtos)VALUES("Rodrigo Martins",8521);

SELECT * FROM tb_produtos;
/*5 - Insira 8 registros na tabela tb_produtos,
 preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.*/
INSERT INTO tb_produtos(nome_med,valor_med,categoria_med,quant_vendas,categoria_id)VALUES("Dipirona",10.00,"Analgésico",25,1);
INSERT INTO tb_produtos(nome_med,valor_med,categoria_med,quant_vendas,categoria_id)VALUES("Diclofenaco",20.00,"Anti-inflamatório",29,2);
INSERT INTO tb_produtos(nome_med,valor_med,categoria_med,quant_vendas,categoria_id)VALUES("Naproxeno",40.00,"Anti-inflamatório",10,3);
INSERT INTO tb_produtos(nome_med,valor_med,categoria_med,quant_vendas,categoria_id)VALUES("Quinolonas",30.00,"Antibióticos",24,4);
INSERT INTO tb_produtos(nome_med,valor_med,categoria_med,quant_vendas,categoria_id)VALUES("Nimesulida",28.00,"Anti-inflamatório",4,5);
INSERT INTO tb_produtos(nome_med,valor_med,categoria_med,quant_vendas,categoria_id)VALUES("Polipeptídicos",24.00,"Antibióticos",5,6);
INSERT INTO tb_produtos(nome_med,valor_med,categoria_med,quant_vendas,categoria_id)VALUES("Cetoprofeno",24.20,"Anti-inflamatório",21,7);
INSERT INTO tb_produtos(nome_med,valor_med,categoria_med,quant_vendas,categoria_id)VALUES("Dipirona",10.00,"Analgésico",17,8);

/*6 - Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.*/
SELECT * FROM tb_produtos WHERE valor_med > 30;
/*7 - Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.*/
SELECT * FROM tb_produtos WHERE valor_med >= 05 AND valor_med <= 60;
/*8 - Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome. */
SELECT * FROM tb_produtos WHERE nome_med LIKE "%c%";
/*9 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias. */
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;
/*10 -  Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).*/
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.nome_funcionarios = "Rebeca de Andrade";
