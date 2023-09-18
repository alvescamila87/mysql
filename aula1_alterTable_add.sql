# adicionar coluna em uma sequência
alter table pessoas
add column profissao varchar (10) after nome;

# adicionar coluna como primeira coluna
alter table pessoas
add column codigo int first;

# adicionar coluna como última
alter table pessoas
add column profissao varchar(10);

# consultar resultado das colunas
select * from pessoas;