-- v.01.01.04


-- Criando a tabela orgao emissor
create	table	sistema.orgaoemissor
(
	pkorgaoemissor	serial,
	fkusuario		integer,
	versao			integer,
	orgaoemissor	text,
	constraint	sistema_orgaoemissor_pkey					primary key(pkorgaoemissor),
	constraint	sistema_orgaoemissor_unq_orgaoemissor	unique(orgaoemissor),
	constraint	sistema_orgaoemissor_fkusuario			foreign key(fkusuario)	references	sistema.usuario(pkusuario)		on delete restrict	on update cascade	not deferrable
);
comment	on	column	sistema.orgaoemissor.fkusuario		is	'not null';
comment	on	column	sistema.orgaoemissor.versao			is	'not null';
comment	on	column	sistema.orgaoemissor.orgaoemissor	is	'not null';
create	index	sistema_orgaoemissor_idx_fkusuario			on	sistema.orgaoemissor	using btree(fkusuario);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.04');