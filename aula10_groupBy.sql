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

# agrupamento com where
select carga, count(nome) from cursos where totaulas = '30'
group by carga;

# agrupando e agregando (having) 1
select ano, count(ano) from cursos
group by ano
having count(ano) >= '5'
order by count(*) desc;

# agrupando e agregando (having) 2
select ano, count(ano) from cursos
group by ano
having ano > '2016'
order by count(*) desc;

# juntas selects ()
select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > '2015'
group by carga
having carga > (select avg(carga) from cursos);