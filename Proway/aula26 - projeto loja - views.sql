/* VIEW TABELAS DO PROJETO LOJA */

/* CRIAR VIEW TABELAS DO PROJETO LOJA */

create view vw_lista_pessoas as
select nome_cad_cliente Pessoas, 'CLIENTE' Tipo from cad_clientes
union
select nome_cad_funcionario, 'FUNCIONÁRIO' from cad_funcionarios;

/* USAR VIEW TABELAS DO PROJETO LOJA */
select * from vw_lista_pessoas;

create view vw_lista_lugares as
select nome_cad_cidade Lugares, 'Cidade' Tipo from cad_cidades
union all
select nome_cad_estado, 'Estado' from cad_estados;

select * from vw_lista_lugares;


