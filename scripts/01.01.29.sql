-- v.01.01.29


-- tabela: silem.statustramitacao
create	table	silem.statustramitacao
(
	pkstatustramitacao		serial not null,
	fkusuario					integer,
	versao						integer,
	fkindicadortramitacao	integer,
	sigla							text,
	statustramitacao			text,
	constraint	silem_statustramitacao_pkey						primary key(pkstatustramitacao),
	constraint	silem_statustramitacao_unq_sigla					unique(sigla),
	constraint	silem_statustramitacao_fkusuario					foreign key(fkusuario)					references	sistema.usuario(pkusuario)									on delete restrict	on update cascade	not deferrable,
	constraint	silem_statustramitacao_fkindicadortramitacao	foreign key(fkindicadortramitacao)	references	silem.indicadortramitacao(pkindicadortramitacao)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.statustramitacao.fkusuario					is 'not null';
comment	on	column	silem.statustramitacao.versao						is 'not null';
comment	on	column	silem.statustramitacao.fkindicadortramitacao	is 'not null';
comment	on	column	silem.statustramitacao.sigla						is	'not null';
comment	on	column	silem.statustramitacao.statustramitacao		is	'not null';
create	index	silem_statustramitacao_idx_fkusuario					on	silem.statustramitacao	using	btree (fkusuario);
create	index	silem_statustramitacao_idx_fkindicadortramitacao	on	silem.statustramitacao	using	btree (fkindicadortramitacao);
create	index	silem_statustramitacao_idx_statustramitacao			on	silem.statustramitacao	using	btree (statustramitacao);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.29');