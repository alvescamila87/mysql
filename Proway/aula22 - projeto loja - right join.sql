/* RIGHT JOIN TABELAS DO PROJETO LOJA */

select * from cad_cidades;
select * from cad_estados;

insert into cad_cidades (nome_cad_cidade, id_cad_estado) values
('Curitiba', 7),
('Umuarama', 7);


select e.nome_cad_estado, c.nome_cad_cidade
from cad_estados e
left join cad_cidades c on c.id_cad_estado = e.nome_cad_estado;

select e.nome_cad_estado, c.nome_cad_cidade
from cad_estados e
right join cad_cidades c on c.id_cad_estado = e.id_cad_estado;

select * from cad_cargos;
select * from cad_setores;

select s.nome_cad_setor, c.nome_cad_cargo
from cad_setores s
right join cad_cargos c on c.id_cad_setor = s.id_cad_setor;
