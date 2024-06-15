/* CRIAR ÍNDICES NAS TABELAS DO PROJETO LOJA */

/* CRIAR ÍNDICES E TABELA DO PROJETO LOJA */
create table cad_servicos (
	id_cad_servico int not null primary key auto_increment,
    descricao_cad_servico varchar(50) not null,
    index (id_cad_servico)
);

/* ADICIONAR ÍNDICE EM TABELA JÁ EXISTENTE DO PROJETO LOJA */
alter table cad_clientes add index idx_idcliente (id_cad_cliente);

/* VISUALIZAR ÍNDICE EM TABELA JÁ EXISTENTE DO PROJETO LOJA */
show index from cad_clientes;