-- v.01.01.28


-- tabela: silem.indicadortramitacao
create	table	silem.indicadortramitacao
(
	pkindicadortramitacao	serial not null,
	fkusuario					integer,
	versao						integer,
	indicadortramitacao		text,
	constraint	silem_indicadortramitacao_pkey							primary key(pkindicadortramitacao),
	constraint	silem_indicadortramitacao_unq_indicadortramitacao	unique(indicadortramitacao),
	constraint	silem_indicadortramitacao_fkusuario						foreign key(fkusuario)	references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.indicadortramitacao.fkusuario					is 'not null';
comment	on	column	silem.indicadortramitacao.versao						is 'not null';
comment	on	column	silem.indicadortramitacao.indicadortramitacao	is	'not null';
create	index	silem_indicadortramitacao_idx_fkusuario	on	silem.indicadortramitacao	using	btree (fkusuario);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.28');