create database exemplo;

create table amigos (
id int not null auto_increment,
nome varchar (30) not null unique,
telefone varchar (11) default '',
primary key (id)
) default charset = utf8;

alter table amigos
modify column telefone varchar (15);

desc amigos;
select * from amigos;

alter table amigos
change column telefone tel varchar (10);

alter table amigos
add column idade date after nome;

insert into amigos
values (default, 'Maria', '2020-12-13', '0000-4444');

update amigos
set tel = '3333-4444'
where id = '1';
