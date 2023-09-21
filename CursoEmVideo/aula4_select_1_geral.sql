# selecionar colunas específicas
select nome, carga, ano from cursos
order by nome;

# selecionar colunas específicas
select ano, nome, carga from cursos
order by ano;

# selecionar colunas específicas, ordenar por colunas
select ano, nome, carga from cursos
order by ano, nome;

# filtrar linhas
select * from cursos
where ano = '2016'
order by nome;

# filtrar linhas sem 'result set' de ano
select nome, carga from cursos
where ano = '2016'
order by nome;

# filtrar linhas e colunas (eliminou colunas que não faziam parte da query)
select nome, descricao, carga from cursos
where ano = '2016'
order by nome;

# filtrar com condicionais 2
select nome, descricao, carga from cursos
where ano <= '2015'
order by nome;

# filtrar com condicionais 3
select nome, descricao, ano from cursos
where ano <= '2015'
order by ano, nome;

# filtrar com condicionais 4 
select nome, descricao, ano from cursos
where ano != '2010'
order by ano, nome;

# filtrar com condicionais 5
select nome, descricao, ano from cursos
where ano != '2010'
order by ano, nome;

# selecionando intervalos 1 
select * from cursos
where totaulas between '20' and '30'
order by nome;

# selecionando intervalos 2
select * from cursos
where ano between 2014 and 2015
order by nome; 

# selecionando intervalos 3
select * from cursos
where ano between 2014 and 2016;

# selecionando intervalos 4
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome;

# selecionando intervalos 5
select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc, nome asc;

# selecionando valores específicos 1
select nome, descricao, ano from cursos
where ano in (2014, 2016, 2020)
order by ano;

# combinando valores 1 
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

# combinando valores 2
select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30;


