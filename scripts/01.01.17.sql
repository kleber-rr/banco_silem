-- v.01.01.17


-- Alterações na estrutura da tabela silem.autor
alter		table	silem.autor	drop	column	fkparlamentar;


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.17');