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

/* ALTERAR REGISTROS TABELAS DO PROJETO LOJA */

select id_cad_estado, nome_cad_estado from cad_estados;
select id_cad_setor, nome_cad_setor from cad_setores;
select id_cad_categoria, nome_cad_categoria from cad_categorias;

update cad_estados set nome_cad_estado = 'Rio Grande do Sul' where id_cad_estado = 1;
update cad_estados set nome_cad_estado = 'Santa Catarina' where id_cad_estado = 2;
select nome_cad_estado from cad_estados where id_cad_estado = 1;

