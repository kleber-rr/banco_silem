-- v.01.01.25


-- tabela: silem.tipodependente
create	table	silem.tipodependente
(
	pktipodependente		serial not null,
	fkusuario				integer,
	versao					integer,
	tipodependente			text,
	constraint	silem_tipodependente_pkey						primary key(pktipodependente),
	constraint	silem_tipodependente_unq_tipodependente	unique(tipodependente),
	constraint	silem_tipodependente_fkusuario				foreign key(fkusuario)	references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.tipodependente.fkusuario		is 'not null';
comment	on	column	silem.tipodependente.versao			is 'not null';
comment	on	column	silem.tipodependente.tipodependente	is	'not null';
create	index	silem_tipodependente_idx_fkusuario	on	silem.tipodependente	using	btree (fkusuario);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.25');