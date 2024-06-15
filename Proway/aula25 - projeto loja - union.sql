/* UNION (FULL ALTER JOIN) ou JOIN TABELAS DO PROJETO LOJA */

/* POPULAR DADOS */
desc cad_funcionarios;
desc cad_clientes;

select * from cad_cargos;
select * from cad_setores;

select * from cad_funcionarios;
insert into cad_funcionarios (nome_cad_funcionario, id_cad_cargo) values
('João', 3),
('Zebedeu', 3),
('Davi', 3),
('Salomão', 3),
('Isabel', 2);

select * from cad_clientes;
select * from cad_cidades;
insert into cad_clientes (nome_cad_cliente, id_cad_cidade) values
('Rute', 7),
('Varti', 8),
('Tobias', 7),
('Judite', 8),
('Ester', 9);

/* UNION */
/* Campo virtual '' Tipo */

select nome_cad_cliente Pessoas , 'CLIENTE' Tipo from cad_clientes
union
select nome_cad_funcionario, 'FUNCIONÁRIO' Tipo from cad_funcionarios;



