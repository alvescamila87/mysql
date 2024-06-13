/* INSERIR REGISTROS TABELAS DO PROJETO LOJA */

insert into cad_estados (nome_cad_estado) values ('SANTA CATARINA');

insert into cad_setores (id_cad_setor, nome_cad_setor) values (1, 'Vendas');

insert into cad_categorias values (1, 'Hardware');

/* VISUALIZAR REGISTROS TABELAS DO PROJETO LOJA */

SELECT * FROM CAD_ESTADOS;

SELECT NOME_CAD_SETOR FROM CAD_SETORES;

select id_cad_categoria, nome_cad_categoria from cad_categorias;

select nome_cad_categoria from cad_categorias;

select nome_cad_categoria nome, id_cad_categoria as categoria from cad_categorias;

select nome_cad_estado 'Nome estado', id_cad_estado as código from cad_estados;