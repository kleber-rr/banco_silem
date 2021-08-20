-- v.01.01.21


-- tabela: silem.comissao_membro
create	table	silem.comissao_membro
(
	pkcomissaomembro		serial not null,
	fkusuario				integer,
	versao					integer,
	fkcomissao				integer,
	fkpessoa					integer,
	fkcargo					integer,
	titular					boolean,
	datadesignacao			timestamp(0) without time zone,
	fkmotivodesligamento	integer,
	datadesligamento		timestamp(0) without time zone,
	observacao				text,
	constraint	silem_comissao_membro_pkey							primary key(pkcomissaomembro),
	constraint	silem_comissao_membro_unq_fkcomissao_fkpessoa_data	unique(fkcomissao, fkpessoa, datadesignacao),
	constraint	silem_comissao_membro_fkusuario					foreign key(fkusuario)					references	sistema.usuario(pkusuario)								on delete restrict	on update cascade	not deferrable,
	constraint	silem_comissao_membro_fkcomissao					foreign key(fkcomissao) 				references	silem.comissao(pkcomissao)								on delete restrict	on update cascade	not deferrable,
	constraint	silem_comissao_membro_fkpessoa					foreign key(fkpessoa)					references	sistema.pessoa(pkpessoa)								on delete restrict	on update cascade	not deferrable,
	constraint	silem_comissao_membro_fkcargo						foreign key(fkcargo) 					references	silem.cargo(pkcargo)										on delete restrict	on update cascade	not deferrable,
	constraint	silem_comissao_membro_fkmotivodesligamento	foreign key(fkmotivodesligamento) 	references	silem.motivodesligamento(pkmotivodesligamento)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.comissao_membro.fkusuario			is 'not null';
comment	on	column	silem.comissao_membro.versao				is 'not null';
comment	on	column	silem.comissao_membro.fkcomissao			is	'not null';
comment	on	column	silem.comissao_membro.fkpessoa			is	'not null';
comment	on	column	silem.comissao_membro.fkcargo				is	'not null';
comment	on	column	silem.comissao_membro.titular				is	'not null';
comment	on	column	silem.comissao_membro.datadesignacao	is	'not null';
create	index	silem_comissao_membro_idx_fkusuario					on	silem.comissao_membro	using	btree (fkusuario);
create	index	silem_comissao_membro_idx_fkcomissao				on	silem.comissao_membro	using	btree (fkcomissao);
create	index	silem_comissao_membro_idx_fkpessoa					on	silem.comissao_membro	using	btree (fkpessoa);
create	index	silem_comissao_membro_idx_fkcargo					on	silem.comissao_membro	using	btree (fkcargo);
create	index	silem_comissao_membro_idx_titular					on	silem.comissao_membro	using	btree (titular);
create	index	silem_comissao_membro_idx_datadesignacao			on	silem.comissao_membro	using	btree (datadesignacao);
create	index	silem_comissao_membro_idx_fkmotivodesligamento	on	silem.comissao_membro	using	btree (fkmotivodesligamento);
create	index	silem_comissao_membro_idx_datadesligamento		on	silem.comissao_membro	using	btree (datadesligamento);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.21');