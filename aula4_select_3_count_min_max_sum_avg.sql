# count (função agregadora)
select count(*) from cursos;

# count 2
select count(nome) from cursos;

# count 3
select * from cursos 
where carga > 40;

select count(*) from cursos 
where carga > 40;


# max (função agregadora)
select * from cursos
order by carga;

select max(carga) from cursos;

select max(totaulas) from cursos 
where ano = '2016';

# min (função agregadora)
select * from cursos
order by totaulas;

select min(totaulas) from cursos;

# esse comando não funcionou conforme vídeo da aula
#select nome, min(totaulas) from cursos where ano = '2016';

select nome, totaulas from cursos
where ano = '2016'
order by totaulas;

# sum (função agregadora)
select sum(totaulas) from cursos
where ano = '2016';

# avg (função agregadora)
select avg(totaulas) from cursos
where ano = '2016';