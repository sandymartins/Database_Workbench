/* Exemplo Comentário */
/**
Primeiro criar o banco de dados, depois criar a tabela.
/*EXERCÍCIOS DA ESCOLA*/


/* Comando de criação de banco de dados                      db=database SEMPRE COM NOME MINÚSCULO  dt=datatable*/
CREATE DATABASE db_escola_generation;

/* Seleciona o banco de dados a ser usado*/
USE db_escola_generation;

/* Comando para criação de tabela*/ 
CREATE TABLE tb_alunes(

	/* bigint equivale ao long no java*/
	id bigint auto_increment primary key,
    
    /*VARCHAR EQUIVALE O TIPO STRING tb_alunes
    (255) É A QUANTIDADE DE CARACTER QUE PODE SER DIGITADO PELO USUARIO*/ 
    nome varchar (255),
    
    /* TIPO DATE ACEITA ANO, MES E DIA*/ 
    data_nascimento date,
    
    /* TIPO INTEIRO POR SE TRATAR DE POUCAS TURMAS */ 
    turma int,
    
    /* 8 É O NUMERO TOTAL ACEITO NO CAMPO DE NOTAS E O 2 É A QUANTIDADE DE NÚMEROS DEPOIS DA VÍRGULA*/ 
    nota decimal(8,2)

);
/* COMANDO PARA SELECIONAR TODOS OS DADOS DA TABELA DE ALUNES */
SELECT * FROM tb_alunes;

/* NÃO É NECESSÁRIO COLOCAR O ID, POIS ELE É UM NÚMERO INFINITO*/
INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Ruriê Miguel","1997-02-05",57, 9.9);

INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Isabella Brandão","1999-10-31",57, 10);

INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jessica Lopes","1997-09-17",57,5);

INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Sandy Martins","2001-04-20",57,8.9);

/*SELECIONA TODOS OS DADOS DA TABELA DE ALUNES ONDE A NOTA FOR MAIOR QUE 7 */
SELECT * FROM tb_alunes WHERE nota > 7;

SELECT * FROM tb_alunes WHERE nota < 7;

UPDATE tb_alunes SET nota = 7 WHERE id=3;