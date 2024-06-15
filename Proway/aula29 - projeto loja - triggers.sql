/* TRIGGER NO PROJETO LOJA */

/* cenário */
describe cad_categorias;
select id_cad_categoria, nome_cad_categoria from cad_categorias;

describe cad_itens;
select id_cad_item, nome_cad_item, valor_cad_item, qtde_estoque_cad_item, id_cad_categoria from cad_itens;
insert into cad_itens (nome_cad_item, valor_cad_item, qtde_estoque_cad_item, id_cad_categoria) values
('Mouse', 35, 10, 1),
('Teclado', 75, 15, 1);

desc cad_vendas;
select id_cad_venda, id_cad_cliente, id_cad_funcionario from cad_vendas;
desc cad_funcionarios;
desc cad_clientes;
desc cad_cidades;
desc cad_estados;
select id_cad_estado, nome_cad_estado from cad_estados;
select id_cad_cidade, nome_cad_cidade, id_cad_estado from cad_cidades;
select id_cad_cliente, nome_cad_cliente, id_cad_cidade from cad_clientes;
select id_cad_funcionario, nome_cad_funcionario, id_cad_cargo from cad_funcionarios;
describe cad_itens_venda;
select id_cad_item_venda, id_cad_item, id_cad_venda from cad_itens_venda;
select * from cad_vendas;
insert into cad_vendas (id_cad_cliente, id_cad_funcionario) values
(1,2);
select * from cad_itens;

/* criar trigger */
/* Quando ocorrer um insert no cad_itens_venda, ocorra decremento do estoque o item vendido na tabela cad_itens*/
delimiter $
create trigger tg_venda_item after insert on cad_itens_venda
for each row
begin
	update cad_itens set qtde_estoque_cad_item = qtde_estoque_cad_item - 1
	where id_cad_item = new.id_cad_item;
end$
delimiter ;

/* venda do teclado */
insert into cad_itens_venda (id_cad_item, id_cad_venda) values
(2, 1);
select * from cad_itens;

/* nova venda */
insert into cad_itens_venda (id_cad_item, id_cad_venda) values
(1, 1);
select * from cad_itens;