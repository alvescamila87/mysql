/* RELACIONAR TABELAS DO PROJETO LOJA */

/* fk table atual / campo id / ref table com pk / id campo pk */
/* fk_cad_cidades_id_cad_estado_cad_estados_id_cad_estado */

alter table cad_cidades 
add constraint fk_cad_cidades_id_cad_estado_cad_estados_id_cad_estado 
foreign key (id_cad_estado) 
references cad_estados (id_cad_estado);

describe cad_cidades;

alter table cad_clientes 
add constraint fk_cad_clientes_id_cad_cidade_cad_cidades_id_cad_cidade 
foreign key (id_cad_cidade) 
references cad_cidades (id_cad_cidade);

describe cad_clientes;

alter table cad_funcionarios 
add constraint fk_cad_funcionarios_id_cad_cargo_cad_cargos_id_cad_cargo 
foreign key (id_cad_cargo)
references cad_cargos (id_cad_cargo);

describe cad_funcionarios;

alter table cad_cargos 
add constraint fk_cad_cargos_id_cad_setor_cad_setores_id_cad_setor
foreign key (id_cad_setor)
references cad_setores (id_cad_setor);

describe cad_cargos;

alter table cad_vendas 
add constraint fk_cad_vendas_id_cad_cliente_cad_clientes_id_cad_cliente
foreign key (id_cad_cliente)
references cad_clientes (id_cad_cliente);

describe cad_vendas;

alter table cad_vendas 
add constraint fk_cad_vendas_id_cad_fun_cad_funcionarios_id_cad_fun
foreign key (id_cad_funcionario)
references cad_funcionarios (id_cad_funcionario);

describe cad_vendas;

alter table cad_itens_venda 
add constraint fk_cad_itens_venda_id_cad_item_cad_itens_id_cad_item
foreign key (id_cad_item)
references cad_itens (id_cad_item);

describe cad_itens_venda;

alter table cad_itens_venda
add constraint fk_cad_itens_venda_id_cad_venda_cad_vendas_id_cad_venda
foreign key (id_cad_venda)
references cad_vendas (id_cad_venda);

describe cad_itens_venda;

alter table cad_itens 
add constraint fk_cad_itens_id_cad_categoria_cad_categorias_id_cad_categoria
foreign key (id_cad_categoria)
references cad_categorias (id_cad_categoria);

describe cad_itens;
