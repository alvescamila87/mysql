# modificar definições dos campos (tipo primitivo)
alter table pessoas
modify column profissao varchar (20);

# modificar definições dos campos (constraints)
alter table pessoas
modify column profissao varchar (20) not null;

select * from pessoas;