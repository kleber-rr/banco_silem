-- v.01.01.08


-- Alterações na estrutura da tabela silem.casalegislativa
alter		table	silem.casalegislativa	add	column	logotipo	bytea;


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.08');