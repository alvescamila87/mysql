# operador like 1 (case sensitive)
select * from cursos
where nome like 'P%';

# operador like 2 (case sensitive)
select * from cursos
where nome like 'a%';

# wildcard 1
select * from cursos
where nome like '%A';

# wildcard 2
select * from cursos
where nome like '%A%';

# not like
select * from cursos
where nome not like '%A%';

# wildcard 3
select * from cursos
where nome like 'PH%P';

# wildcard 4
select * from cursos
where nome like 'PH%P%';

# wildcard 5
select * from cursos
where nome like 'PH%P_';

# wildcard 6
select * from cursos
where nome like 'p_p%';

select * from gafanhotos
where nome like '%silva%';

insert into gafanhotos values
(default, 'Silvana Albuquerque', 'Programador', '1999-05-22', 'F', '56', '1.50', 'Brasil');

delete from gafanhotos
where id = '62';