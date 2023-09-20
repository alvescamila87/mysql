# agrupamento de registros 1
select carga from cursos
group by carga;

# agrupamento de registros + função de agregação 1
select carga, count(nome) from cursos
group by carga;

# agrupamento de registros + função de agregação 2
select nacionalidade, count(nome) from gafanhotos
group by nacionalidade;

# agrupamento de registros + função de agregação 3
select totaulas, count(*) from cursos
group by totaulas;