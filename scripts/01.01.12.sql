-- v.01.01.12


-- tabela: silem.servidor
create	table	silem.servidor
(
	pkservidor				serial not null,
	fkusuario				integer,
	versao					integer,
	fkcargo					integer,
	fklotacao				integer,
	matricula				text,
	servidor					text,
	dataregistro			timestamp(0) without time zone,
	datanomeacao			timestamp(0) without time zone,
	dataposse				timestamp(0) without time zone,
	ativo						boolean,
	constraint	silem_servidor_pkey				primary key(pkservidor),
	constraint	silem_servidor_unq_matricula	unique(matricula),
	constraint	silem_servidor_fkusuario		foreign key(fkusuario)	references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable,
	constraint	silem_servidor_fkcargo			foreign key(fkcargo) 	references	silem.cargo(pkcargo)			on delete restrict	on update cascade	not deferrable,
	constraint	silem_servidor_fklotacao		foreign key(fklotacao) 	references	silem.local(pklocal)			on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.servidor.fkusuario				is 'not null';
comment	on	column	silem.servidor.versao					is 'not null';
comment	on	column	silem.servidor.fkcargo					is	'not null';
comment	on	column	silem.servidor.fklotacao				is	'not null';
comment	on	column	silem.servidor.matricula				is	'not null';
comment	on	column	silem.servidor.servidor					is	'not null';
comment	on	column	silem.servidor.dataregistro			is	'not null';
comment	on	column	silem.servidor.ativo						is	'not null';
create	index	silem_servidor_idx_fkusuario				on	silem.servidor	using	btree (fkusuario);
create	index	silem_servidor_idx_fkcargo					on	silem.servidor	using	btree (fkcargo);
create	index	silem_servidor_idx_fklotacao				on	silem.servidor	using	btree (fklotacao);
create	index	silem_servidor_idx_servidor				on	silem.servidor	using	btree (servidor);
create	index	silem_servidor_idx_dataregistro			on	silem.servidor	using	btree (dataregistro);
create	index	silem_servidor_idx_datanomeacao			on	silem.servidor	using	btree (datanomeacao);
create	index	silem_servidor_idx_dataposse				on	silem.servidor	using	btree (dataposse);
create	index	silem_servidor_idx_ativo					on	silem.servidor	using	btree (ativo);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.12');