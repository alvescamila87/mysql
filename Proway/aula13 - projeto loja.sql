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