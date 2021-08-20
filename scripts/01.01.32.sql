-- v.01.01.32


-- tabela: silem.tipoproposicao
create	table	silem.tipoproposicao
(
	pktipoproposicao	serial not null,
	fkusuario			integer,
	versao				integer,
	sigla					text,
	tipoproposicao		text,
	constraint	silem_tipoproposicao_pkey						primary key(pktipoproposicao),
	constraint	silem_tipoproposicao_unq_sigla				unique(sigla),
	constraint	silem_tipoproposicao_unq_tipoproposicao	unique(tipoproposicao),
	constraint	silem_tipoproposicao_fkusuario				foreign key(fkusuario)	references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.tipoproposicao.fkusuario		is 'not null';
comment	on	column	silem.tipoproposicao.versao			is 'not null';
comment	on	column	silem.tipoproposicao.sigla				is	'not null';
comment	on	column	silem.tipoproposicao.tipoproposicao	is	'not null';
create	index	silem_tipoproposicao_idx_fkusuario			on	silem.tipoproposicao	using	btree (fkusuario);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.32');