-- v.01.01.17


-- Altera��es na estrutura da tabela silem.autor
alter		table	silem.autor	drop	column	fkparlamentar;


-- Controle de vers�o
insert	into	sistema.versao(versao)	values	('01.01.17');