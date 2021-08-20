-- v.01.01.06


-- Renomeando campo tipo de contato na tabela sistema.tipocontato
alter		table	sistema.tipocontato										rename	column		descricao	to	tipocontato;
alter		index	sistema.sistema_tipocontato_unq_descricao			rename	to	sistema_tipocontato_unq_tipocontato;


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.06');