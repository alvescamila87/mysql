# exercicios

# 1) Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos.
select profissao, count(*) from gafanhotos
group by profissao;


# 2) Quantos gafanhotos Homens (M) e quantas gafanhotos Mulheres (F) nasceram após 01/01/2005?
# 3) Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o páis de origem e total de pessoas nascidas lá. Só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade.
# 4) Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg e que estão acima da média de altura de todos os cadastrados.