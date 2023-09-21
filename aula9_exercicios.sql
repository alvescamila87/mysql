# exercicios

# 1 - selecionar uma lista com o nome de todas as gafanhotas:
select * from gafanhotos
where sexo = 'F';

# 2 - lista com dados dos que nasceram entre 01/01/2000 a 31/12/2015
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-15';

# 3 - lista com nome de todos os homens que trabalham como programadores
select * from gafanhotos
where sexo = 'M' and profissao = 'Programador';

# 4 - lista com dados das mulheres do Brasil e que tem nome iniciado com a letra 'j'
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%'

# 5 - lista com dados das mulheres do Brasil e que tem nome iniciado com a letra 'j'