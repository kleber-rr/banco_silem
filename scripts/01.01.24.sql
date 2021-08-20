-- v.01.01.24


-- tabela: silem.comissaotemporaria
create	table	silem.comissaotemporaria
(
	pkcomissaotemporaria	serial not null,
	fkusuario				integer,
	versao					integer,
	fkcomissao				integer,
	fklocal					integer,
	comissao					text,
	datainstalacao			timestamp(0) without time zone,
	dataprevistatermino	timestamp(0) without time zone,
	datainicionovoprazo	timestamp(0) without time zone,
	dataefetivatermino	timestamp(0) without time zone,
	constraint	silem_comissaotemporaria_pkey							primary key(pkcomissaotemporaria),
	constraint	silem_comissaotemporaria_unq_fkcomissao_fkpessoa_comissao	unique(fkcomissao, fklocal, comissao),
	constraint	silem_comissaotemporaria_fkusuario					foreign key(fkusuario)	references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable,
	constraint	silem_comissaotemporaria_fkcomissao					foreign key(fkcomissao) references	silem.comissao(pkcomissao)	on delete restrict	on update cascade	not deferrable,
	constraint	silem_comissaotemporaria_fklocal						foreign key(fklocal) 	references	silem.local(pklocal)			on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.comissaotemporaria.fkusuario			is 'not null';
comment	on	column	silem.comissaotemporaria.versao				is 'not null';
comment	on	column	silem.comissaotemporaria.fkcomissao			is	'not null';
comment	on	column	silem.comissaotemporaria.fklocal				is	'not null';
comment	on	column	silem.comissaotemporaria.comissao			is	'(apelido) - not null';
create	index	silem_comissaotemporaria_idx_fkusuario					on	silem.comissaotemporaria	using	btree (fkusuario);
create	index	silem_comissaotemporaria_idx_fkcomissao				on	silem.comissaotemporaria	using	btree (fkcomissao);
create	index	silem_comissaotemporaria_idx_fklocal					on	silem.comissaotemporaria	using	btree (fklocal);
create	index	silem_comissaotemporaria_idx_comissao					on	silem.comissaotemporaria	using	btree (comissao);
create	index	silem_comissaotemporaria_idx_datainstalacao			on	silem.comissaotemporaria	using	btree (datainstalacao);
create	index	silem_comissaotemporaria_idx_dataprevistatermino	on	silem.comissaotemporaria	using	btree (dataprevistatermino);
create	index	silem_comissaotemporaria_idx_datainicionovoprazo	on	silem.comissaotemporaria	using	btree (datainicionovoprazo);
create	index	silem_comissaotemporaria_idx_dataefetivatermino		on	silem.comissaotemporaria	using	btree (dataefetivatermino);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.24');