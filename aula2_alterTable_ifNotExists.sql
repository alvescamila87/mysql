
# if not exists
create table if not exists clientes (teste int);

# if exists
drop table if exists gafanhotos;

# criar nova tabela
create table if not exists cursos (
nome varchar (30) not null unique,
descricao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2023'
) default charset = utf8;

# adicionar nova tabela
alter table cursos 
add column idcurso int first;

# criar chave-primária
alter table cursos
add primary key (idcurso);

desc cursos;

# adicionar constraints
alter table cursos 
modify column idcurso int auto_increment first;