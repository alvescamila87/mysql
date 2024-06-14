/* INNER JOIN ou JOIN TABELAS DO PROJETO LOJA */

select * from cad_estados;
insert into cad_estados (nome_cad_estado) values ('Rio Grande do Sul');

select * from cad_cidades;
insert into cad_cidades (nome_cad_cidade, id_cad_estado) values
('Blumenau', 5),
('Pelotas', 6),
('Pomerode', 5),
('Gramado', 6);

select c.nome_cad_cidade, e.nome_cad_estado
from cad_cidades c
inner join cad_estados e on e.id_cad_estado = c.id_cad_estado
order by e.nome_cad_estado;