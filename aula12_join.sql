# join não inteligente - exemplo 1
select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos;

# join inteligente usando ON - exemplo 2
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos
on gafanhotos.cursopreferido = cursos.idcurso;

# inner join
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos inner join cursos
on gafanhotos.cursopreferido = cursos.idcurso
order by gafanhotos.nome;

# as - apelidos em colunas
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on g.cursopreferido = c.idcurso
order by g.nome;

# outer join - mostrando todos no join, considerando o left (de gafanhotos, não de cursos)
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on g.cursopreferido = c.idcurso;

# outer join - mostrando todos no join, considerando o left (de cursos, não de gafanhotos)
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g right outer join cursos as c
on g.cursopreferido = c.idcurso
