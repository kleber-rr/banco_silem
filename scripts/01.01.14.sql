-- v.01.01.14


-- tabela: silem.expediente
create	table	silem.expediente
(
	pkexpediente	serial not null,
	fkusuario		integer,
	versao			integer,
	tempo				integer,
	expediente		text,
	constraint	silem_expediente_pkey				primary key(pkexpediente),
	constraint	silem_expediente_unq_expediente	unique(expediente),
	constraint	silem_expediente_fkusuario			foreign key(fkusuario)	references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.expediente.fkusuario		is 'not null';
comment	on	column	silem.expediente.versao			is 'not null';
comment	on	column	silem.expediente.tempo			is	'not null';
comment	on	column	silem.expediente.expediente	is	'not null';
create	index	silem_expediente_idx_fkusuario				on	silem.expediente	using	btree (fkusuario);
create	index	silem_expediente_idx_expediente				on	silem.expediente	using	btree (expediente);



-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.14');