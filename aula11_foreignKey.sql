select * from gafanhotos;

desc gafanhotos;

# criando nova tabela
alter table gafanhotos
add column cursopreferido int;

# criando chave estrangeiro FK
alter table gafanhotos
add foreign key(cursopreferido)
references cursos(idcurso);

# incluir curso preferido para um aluno
update gafanhotos
set cursopreferido = '6'
where id = '1';

# integridade referencial - apagar o curso de my sql referenciado como fk para aluno
delete from cursos 
where idcurso = '6';

# integridade referencial - apagar o curso de my sql NÃO referenciado
delete from cursos
where idcurso = '28';
 