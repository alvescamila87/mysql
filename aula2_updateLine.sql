alter table clientes
drop column codigo;

select * from clientes;

select * from cursos;

insert into cursos values
(default, 'HTML5', 'Curso de HTML 5 WEB', '40', '37', '2022'),
(default, 'CSS', 'Curso de CSS 5 Style', '60', '40', '2022'),
(default, 'Javascript', 'Curso de Javascript com NodeJS do básico ao avançado', '60', '50', default),
(default, 'Python', 'Curso de diretamente do Pythonland', '70', '50', default);

describe cursos;

# modificar linha
update cursos
set nome = 'HTML 5'
where idcurso = '1';

update cursos
set nome = 'CSS 3'
where idcurso = '2';

update cursos
set nome = 'JavaScript', ano = '2022'
where idcurso = '3';

# update com limitação de linhas afetadas
update cursos
set nome = 'Python 3.0', ano = '2022', carga = '85'
where idcurso = '4'
limit 1;

# update SEM a limitação de linhas afetadas
update cursos
set ano = '2030', carga = '250', totalaulas = '80'
where ano = '2022';

# update utilizando a limitação de linhas afetadas com segurança
update cursos
set ano = '2022'
where ano = '2030'
limit 1;


