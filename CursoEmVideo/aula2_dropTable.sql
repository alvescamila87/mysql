# apagar tabela
drop table if exists teste;

create table if not exists teste (
id int,
nome varchar (10)
);

insert into teste values
(default, 'Paulo'),
(default, 'Maricota');

select * from teste;

