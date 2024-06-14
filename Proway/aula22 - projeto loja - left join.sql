/* LEFT JOIN TABELAS DO PROJETO LOJA */

select * from cad_cidades;
select * from cad_estados;

insert into cad_estados (nome_cad_estado) values 
('Paraná'),
('São Paulo'),
('Rio de Janeiro')
;

/* join: NÃO aparecem estados com cidades nulas, somente o que é em comum */
select c.nome_cad_cidade, e.nome_cad_estado
from cad_cidades c
join cad_estados e on e.id_cad_estado = c.id_cad_estado
order by e.nome_cad_estado;

/* importante o estado ficar na esquerda */
/* left join: aparecem estados com cidades nulas */
select e.nome_cad_estado, c.nome_cad_cidade
from cad_estados e
left join cad_cidades c on c.id_cad_estado = e.id_cad_estado;

select * from cad_cargos;
select * from cad_setores;
delete from cad_setores;

insert into cad_setores (nome_cad_setor) values
('RH'),
('TI'),
('Compras'),
('Treinamentos');

insert into cad_cargos (nome_cad_cargo, id_cad_setor) values
('Assistente', 14),
('Coordenador', 15),
('Programador', 15);

select s.nome_cad_setor, c.nome_cad_cargo
from cad_setores s
left join cad_cargos c on c.id_cad_setor = s.id_cad_setor;








