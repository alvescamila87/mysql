# inner join - n-n (cardinalidade multipla)

use cadastro;

create table gafanhoto_assiste_curso (
id_assiste int not null auto_increment,
data date,
id_gafanhoto_assiste int,
id_curso_assiste int,
primary key (id_assiste),
foreign key (id_gafanhoto_assiste) references gafanhotos (id),
foreign key (id_curso_assiste) references cursos (idcurso)
) default charset = 'utf8';

select * from gafanhoto_assiste_curso;

insert into gafanhoto_assiste_curso values 
(default, '2014-03-01', '2', '5'),
(default, '2014-03-01', '4', '6'),
(default, '2014-03-01', '6', '7');


delete from gafanhoto_assiste_curso
where id_curso_assiste = '8';

# inner join 1
select * from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.id_gafanhoto_assiste
order by g.nome;

# inner join 2: mostra nome colunas
select g.id, g.nome, a.id_gafanhoto_assiste, id_curso_assiste from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.id_gafanhoto_assiste
order by g.nome;

# join com join em n-n 1 
select * from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.id_gafanhoto_assiste
join cursos c
on c.idcurso = a.id_curso_assiste;

# join com join em n-n 2: mostra nome colunas
select g.nome, c.nome from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.id_gafanhoto_assiste
join cursos c 
on c.idcurso = a.id_curso_assiste;