-- v.01.01.08


-- Altera��es na estrutura da tabela silem.casalegislativa
alter		table	silem.casalegislativa	add	column	logotipo	bytea;


-- Controle de vers�o
insert	into	sistema.versao(versao)	values	('01.01.08');