-- v.01.01.27


-- tabela: silem.regimetramitacao
create	table	silem.regimetramitacao
(
	pkregimetramitacao	serial not null,
	fkusuario				integer,
	versao					integer,
	regimetramitacao		text,
	prazomaximo				integer,
	constraint	silem_regimetramitacao_pkey						primary key(pkregimetramitacao),
	constraint	silem_regimetramitacao_unq_regimetramitacao	unique(regimetramitacao),
	constraint	silem_regimetramitacao_fkusuario					foreign key(fkusuario)	references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.regimetramitacao.fkusuario				is 'not null';
comment	on	column	silem.regimetramitacao.versao					is 'not null';
comment	on	column	silem.regimetramitacao.regimetramitacao	is	'not null';
create	index	silem_regimetramitacao_idx_fkusuario	on	silem.regimetramitacao	using	btree (fkusuario);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.27');