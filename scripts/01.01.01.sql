-- v.01.01.01


-- Criação da tabela de controle de versionamento
create	table	sistema.versao
(
	pkversao			serial,
	versao			text,
	dataregistro	timestamp default now(),
	constraint		sistema_versao_pkey			primary key(pkversao),
	constraint		sistema_versao_unq_versao	unique(versao)
);
comment	on	column	sistema.versao.versao			is	'not null';
comment	on	column	sistema.versao.dataregistro	is	'not null';
create	index	sistema_versao_idx_versao				on	sistema.versao	using	btree(versao);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.01');