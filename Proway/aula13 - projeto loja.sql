/* CRIAR TABELAS DO PROJETO LOJA */

show tables;

create table cad_estados (
	id_cad_estado int not null primary key auto_increment,
    nome_cad_estado varchar(50) not null    
);

create table cad_cidades (
	id_cad_cidade int not null primary key auto_increment,
    nome_cad_cidade varchar(50) not null,
    id_cad_estado int not null	
);

create table cad_clientes (
	id_cad_cliente int not null primary key auto_increment,
    nome_cad_cliente varchar(50) not null,
    email_cad_cliente varchar(100),
    id_cad_cidade int
);

create table cad_vendas (
	id_cad_venda int not null primary key auto_increment,
    id_cad_cliente int not null,
    id_cad_funcionario int not null
);

create table cad_funcionarios (
	id_cad_funcionario int not null primary key auto_increment,
    nome_cad_funcionario varchar(50) not null,
    id_cad_cargo int not null
);

create table cad_cargos (
	id_cad_cargo int not null primary key auto_increment,
    nome_cad_cargo varchar(50) not null,
    id_cad_setor int not null
);

create table cad_setores (
	id_cad_setor int not null primary key auto_increment,
    nome_cad_setor varchar(50) not null
);

create table cad_itens_venda (
	id_cad_item_venda int not null primary key auto_increment,
    id_cad_item int not null,
    id_cad_venda int not null
);

create table cad_itens (
	id_cad_item int not null primary key auto_increment,
    nome_cad_item varchar(50) not null,
    valor_cad_item decimal(5,2) not null,
    qtde_estoque_cad_item int not null,
    id_cad_categoria int not null
);

create table cad_categorias (
	id_cad_categoria int not null primary key auto_increment,
    nome_cad_categoria varchar(50) not null
);