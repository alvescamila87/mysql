/* CRIAÇÃO DE TABELA */

CREATE TABLE nome_tabela (
	campo1 SMALLINT,
    campo2 NUMERIC(5,2),
    campo3 VARCHAR(20),
    campo4 CHAR(3)
);

/* VISUALIZAR ESTRUTURA DE TABELA */

DESCRIBE nome_tabela;

/* MODIFICAR ESTRUTURA DE TABELA */

ALTER TABLE nome_tabela MODIFY campo1 SMALLINT NOT NULL;

ALTER TABLE nome_tabela MODIFY campo3 VARCHAR(20) DEFAULT 'Valor Padrão';

ALTER TABLE nome_tabela MODIFY campo4 CHAR(5) DEFAULT 'ABCDE';

/* RENOMEAR CAMPOS DA ESTRUTURA DE TABELA */

ALTER TABLE nome_tabela CHANGE COLUMN campo4 novo_campo CHAR(5);

/* ADD CAMPOS DA ESTRUTURA DE TABELA */

ALTER TABLE nome_tabela ADD COLUMN nova_coluna VARCHAR(10) NOT NULL;

/* EXCLUIR CAMPOS DA ESTRUTURA DE TABELA */

ALTER TABLE nome_tabela DROP COLUMN nova_coluna;

/* EXCLUIR A TABELA */

DROP TABLE nome_tabela;

SHOW TABLES;

