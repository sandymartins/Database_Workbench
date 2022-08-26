CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment primary key,
    nome_jogador varchar(80),
    idade_jogador int
);
CREATE TABLE tb_personagens(
	id bigint auto_increment primary key,
    tipo_jogador varchar(50),
	quant_jogadores int,
	quant_vidas int,
    poder_defesa decimal (4,0),
    poder_ataque decimal (4,0),
    categoria_id bigint,
    FOREIGN KEY(categoria_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;
INSERT INTO tb_classes(nome_jogador,idade_jogador)VALUES("Pedro Henrique", 1);

SELECT * FROM tb_personagens;
INSERT INTO tb_personagens(tipo_jogador,quant_jogadores,quant_vidas,poder_defesa,poder_ataque,categoria_id)VALUES("Fada",4,2,5000,1200,5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa >= 1000 AND poder_defesa <= 2000;
SELECT * FROM tb_personagens WHERE tipo_jogador LIKE "%c%";
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.categoria_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.categoria_id
WHERE tb_classes.nome_jogador = "Caio Luis";


