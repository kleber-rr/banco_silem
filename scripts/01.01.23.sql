-- v.01.01.23


-- tabela: silem.relatoria
create	table	silem.relatoria
(
	pkrelatoria				serial not null,
	fkusuario				integer,
	versao					integer,
	dataregistro			timestamp(0) without time zone,
	fkcomissao				integer,
	fkparlamentar			integer,
	datadesignacao			timestamp(0) without time zone,
	fkmotivofimrelatoria	integer,
	datafimrelatoria		timestamp(0) without time zone,
	constraint	silem_relatoria_pkey							primary key(pkrelatoria),
	constraint	silem_relatoria_unq_fkcomissao_fkparlamentar_data	unique(fkcomissao, fkparlamentar, datadesignacao),
	constraint	silem_relatoria_fkusuario					foreign key(fkusuario)					references	sistema.usuario(pkusuario)								on delete restrict	on update cascade	not deferrable,
	constraint	silem_relatoria_fkcomissao					foreign key(fkcomissao) 				references	silem.comissao(pkcomissao)								on delete restrict	on update cascade	not deferrable,
	constraint	silem_relatoria_fkparlamentar				foreign key(fkparlamentar)				references	silem.parlamentar(pkparlamentar)						on delete restrict	on update cascade	not deferrable,
	constraint	silem_relatoria_fkmotivofimrelatoria	foreign key(fkmotivofimrelatoria) 	references	silem.motivofimrelatoria(pkmotivofimrelatoria)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.relatoria.fkusuario			is 'not null';
comment	on	column	silem.relatoria.versao				is 'not null';
comment	on	column	silem.relatoria.dataregistro		is 'not null';
comment	on	column	silem.relatoria.fkcomissao			is	'not null';
comment	on	column	silem.relatoria.fkparlamentar		is	'not null';
comment	on	column	silem.relatoria.datadesignacao	is	'not null';
create	index	silem_relatoria_idx_fkusuario					on	silem.relatoria	using	btree (fkusuario);
create	index	silem_relatoria_idx_dataregistro				on	silem.relatoria	using	btree (dataregistro);
create	index	silem_relatoria_idx_fkcomissao				on	silem.relatoria	using	btree (fkcomissao);
create	index	silem_relatoria_idx_fkparlamentar			on	silem.relatoria	using	btree (fkparlamentar);
create	index	silem_relatoria_idx_datadesignacao			on	silem.relatoria	using	btree (datadesignacao);
create	index	silem_relatoria_idx_fkmotivofimrelatoria	on	silem.relatoria	using	btree (fkmotivofimrelatoria);
create	index	silem_relatoria_idx_datafimrelatoria		on	silem.relatoria	using	btree (datafimrelatoria);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.23');