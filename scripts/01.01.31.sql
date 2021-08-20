-- v.01.01.31


-- tabela: silem.tipodisposicao
create	table	silem.tipodisposicao
(
	pktipodisposicao	serial not null,
	fkusuario			integer,
	versao				integer,
	sigla					text,
	tipodisposicao		text,
	constraint	silem_tipodisposicao_pkey						primary key(pktipodisposicao),
	constraint	silem_tipodisposicao_unq_sigla				unique(sigla),
	constraint	silem_tipodisposicao_unq_tipodisposicao	unique(tipodisposicao),
	constraint	silem_tipodisposicao_fkusuario				foreign key(fkusuario)	references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.tipodisposicao.fkusuario		is 'not null';
comment	on	column	silem.tipodisposicao.versao			is 'not null';
comment	on	column	silem.tipodisposicao.sigla				is	'not null';
comment	on	column	silem.tipodisposicao.tipodisposicao	is	'not null';
create	index	silem_tipodisposicao_idx_fkusuario			on	silem.tipodisposicao	using	btree (fkusuario);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.31');