-- v.01.01.33


-- tabela: silem.proposicao
create table silem.proposicao
(
	pkproposicao SERIAL NOT NULL,
	fkusuario INTEGER,
	versao INTEGER,
	dataregistro TIMESTAMP(0) WITHOUT TIME ZONE,
	fkcomissao INTEGER,
	fktipoproposicao INTEGER,
	fkregimetramitacao INTEGER,
	fkorigem INTEGER,
	destinatario TEXT,
	proposicao TEXT,
	numero TEXT,
	ano TEXT,
	texto TEXT,
	xml BOOLEAN,
	externo BOOLEAN,
	apresentacaooral BOOLEAN,
	dataapresentacao TIMESTAMP(0) WITHOUT TIME ZONE,
	fkmotivofimrelatoria INTEGER,
	observacao TEXT,
	constraint	silem_proposicao_pkey						primary key(pkproposicao),
	constraint	silem_proposicao_fkusuario					foreign key(fkusuario)					references	sistema.usuario(pkusuario)								on delete restrict	on update cascade	not deferrable,
	constraint	silem_proposicao_fkcomissao				foreign key(fkcomissao)					references	silem.comissao(pkcomissao)								on delete restrict	on update cascade	not deferrable,
	constraint	silem_proposicao_fktipoproposicao		foreign key(fktipoproposicao)			references	silem.tipoproposicao(pktipoproposicao)				on delete restrict	on update cascade	not deferrable,
	constraint	silem_proposicao_fkregimetramitacao		foreign key(fkregimetramitacao)		references	silem.regimetramitacao(pkregimetramitacao)		on delete restrict	on update cascade	not deferrable,
	constraint	silem_proposicao_fkorigem					foreign key(fkorigem)					references	silem.local(pklocal)										on delete restrict	on update cascade	not deferrable,
	constraint	silem_proposicao_fkmotivofimrelatoria	foreign key(fkmotivofimrelatoria)	references	silem.motivofimrelatoria(pkmotivofimrelatoria)	on delete restrict	on update cascade	not deferrable

);
comment	on	column	silem.proposicao.fkusuario				is	'not null';
comment	on	column	silem.proposicao.versao					is	'not null';
comment	on	column	silem.proposicao.dataregistro			is	'not null';
comment	on	column	silem.proposicao.fktipoproposicao	is	'not null';
comment	on	column	silem.proposicao.fkregimetramitacao	is	'not null';
comment	on	column	silem.proposicao.fkorigem				is	'not null';
comment	on	column	silem.proposicao.destinatario			is	'not null';
comment	on	column	silem.proposicao.proposicao			is	'not null';
comment	on	column	silem.proposicao.numero					is	'not null';
comment	on	column	silem.proposicao.ano						is	'not null';
comment	on	column	silem.proposicao.texto					is	'not null';
comment	on	column	silem.proposicao.xml						is	'not null';
comment	on	column	silem.proposicao.externo				is	'not null';
comment	on	column	silem.proposicao.apresentacaooral	is	'not null';
create	index	silem_proposicao_idx_fkusuario					on	silem.proposicao	using	btree (fkusuario);
create	index	silem_proposicao_idx_dataregistro				on	silem.proposicao	using	btree (dataregistro);
create	index	silem_proposicao_idx_fkcomissao					on	silem.proposicao	using	btree (fkcomissao);
create	index	silem_proposicao_idx_fktipoproposicao			on	silem.proposicao	using	btree (fktipoproposicao);
create	index	silem_proposicao_idx_fkregimetramitacao		on	silem.proposicao	using	btree (fkregimetramitacao);
create	index	silem_proposicao_idx_fkorigem						on	silem.proposicao	using	btree (fkorigem);
create	index	silem_proposicao_idx_destinatario				on	silem.proposicao	using	btree (destinatario);
create	index	silem_proposicao_idx_proposicao					on	silem.proposicao	using	btree (proposicao);
create	index	silem_proposicao_idx_numero						on	silem.proposicao	using	btree (numero);
create	index	silem_proposicao_idx_ano							on	silem.proposicao	using	btree (ano);
create	index	silem_proposicao_idx_texto							on	silem.proposicao	using	btree (texto);
create	index	silem_proposicao_idx_dataapresentacao			on	silem.proposicao	using	btree (dataapresentacao);
create	index	silem_proposicao_idx_fkmotivofimrelatoria		on	silem.proposicao	using	btree (fkmotivofimrelatoria);
create	index	silem_proposicao_idx_observacao					on	silem.proposicao	using	btree (observacao);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.33');