CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;
-- 1-Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
	CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_acougue VARCHAR(80),
    quant_atendentes int
);
-- 2-Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
-- 3-Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
    CREATE TABLE tb_produtos(
		id bigint AUTO_INCREMENT PRIMARY KEY,
		kg decimal(4,2),
		valor_carne decimal(4,2),
        tipos_carne varchar(40),
        cod_carne decimal(4,0),
        categoria_id bigint,
        FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
    );
-- 4-Insira 5 registros na tabela tb_categorias.
SELECT * FROM tb_categorias;
INSERT INTO tb_categorias(nome_acougue,quant_atendentes)VALUES("CARNES & CIA",1);
INSERT INTO tb_categorias(nome_acougue,quant_atendentes)VALUES("AÇOUGUE MANIA",2);
INSERT INTO tb_categorias(nome_acougue,quant_atendentes)VALUES("CARNES BOVINAS",3);
INSERT INTO tb_categorias(nome_acougue,quant_atendentes)VALUES("BOVINOS",4);
INSERT INTO tb_categorias(nome_acougue,quant_atendentes)VALUES("ACOUGUE DA VILA",5);
-- 5-Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(kg, valor_carne,tipos_carne,cod_carne,categoria_id)VALUES(25.00,45.00,"Frango",2541,1);
INSERT INTO tb_produtos(kg, valor_carne,tipos_carne,cod_carne,categoria_id)VALUES(52.00,50.00,"Peixe",2711,2);
INSERT INTO tb_produtos(kg, valor_carne,tipos_carne,cod_carne,categoria_id)VALUES(14.00,80.00,"Filé de peito",2574,3);
INSERT INTO tb_produtos(kg, valor_carne,tipos_carne,cod_carne,categoria_id)VALUES(10.00,50.00,"Lombo suíno",2425,4);
INSERT INTO tb_produtos(kg, valor_carne,tipos_carne,cod_carne,categoria_id)VALUES(02.00,60.00,"Bacon",2541,2);
INSERT INTO tb_produtos(kg, valor_carne,tipos_carne,cod_carne,categoria_id)VALUES(09.00,10.00,"Coxa",2424,1);
INSERT INTO tb_produtos(kg, valor_carne,tipos_carne,cod_carne,categoria_id)VALUES(30.00,30.00,"Coxa e sobrecoxa",0214,2);
INSERT INTO tb_produtos(kg, valor_carne,tipos_carne,cod_carne,categoria_id)VALUES(50.00,90.00,"Costela",1452,3);
-- 6-Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE valor_carne > 50;
-- 7-Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
SELECT * FROM tb_produtos WHERE valor_carne > 50 AND valor_carne < 150;
-- 8-Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_produtos WHERE tipos_carne LIKE "%c%";
-- 9-Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;
-- 10-Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.nome_acougue = "BOVINOS";
