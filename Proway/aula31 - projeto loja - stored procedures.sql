/* STORED PROCEDURES NO PROJETO LOJA */

/* criar procedure 'exibir clientes' */
DELIMITER $
create procedure sp_exibe_clientes()
begin
	select cli.id_cad_cliente codigo, cli.nome_cad_cliente nome, cli.email_cad_cliente email, ci.nome_cad_cidade cidade
	from cad_clientes cli 
	left join cad_cidades ci on cli.id_cad_cidade = ci.id_cad_cidade; 
end$
DELIMITER ;

/* exibir procedure 'exibir clientes' */
call sp_exibe_clientes();

/* criar procedure com parâmetros 'cadastra clientes' */

delimiter $
create procedure sp_cadastra_cliente (in nome varchar(50), in email varchar(100), in cod_cidade int)
begin
	insert into cad_clientes (nome_cad_cliente, email_cad_cliente, id_cad_cidade) 
    values (nome, email, cod_cidade);
end$
delimiter ;

/* exibir procedure 'cadastra clientes' */