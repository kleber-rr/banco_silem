-- v.01.01.26


-- tabela: silem.parlamentar_dependente
create	table	silem.parlamentar_dependente
(
	pkparlamentardependente	serial not null,
	fkusuario					integer,
	versao						integer,
	fkparlamentar				integer,
	fkpessoa						integer,
	fktipodependente			integer,
	legal							boolean,
	constraint	silem_parlamentar_dependente_pkey								primary key(pkparlamentardependente),
	constraint	silem_parlamentar_dependente_unq_fkparlamentar_fkpessoa	unique(fkparlamentar, fkpessoa),
	constraint	silem_parlamentar_dependente_fkusuario							foreign key(fkusuario)			references	sistema.usuario(pkusuario)					on delete restrict	on update cascade	not deferrable,
	constraint	silem_parlamentar_dependente_fkparlamentar					foreign key(fkparlamentar) 	references	silem.parlamentar(pkparlamentar)			on delete restrict	on update cascade	not deferrable,
	constraint	silem_parlamentar_dependente_fkpessoa							foreign key(fkpessoa)			references	sistema.pessoa(pkpessoa)					on delete restrict	on update cascade	not deferrable,
	constraint	silem_parlamentar_dependente_fktipodependente				foreign key(fktipodependente)	references	silem.tipodependente(pktipodependente)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.parlamentar_dependente.fkusuario				is 'not null';
comment	on	column	silem.parlamentar_dependente.versao					is 'not null';
comment	on	column	silem.parlamentar_dependente.fkparlamentar		is	'not null';
comment	on	column	silem.parlamentar_dependente.fkpessoa				is	'not null';
comment	on	column	silem.parlamentar_dependente.fktipodependente	is	'not null';
comment	on	column	silem.parlamentar_dependente.legal					is	'not null';
create	index	silem_parlamentar_dependente_idx_fkusuario				on	silem.parlamentar_dependente	using	btree (fkusuario);
create	index	silem_parlamentar_dependente_idx_fkparlamentar			on	silem.parlamentar_dependente	using	btree (fkparlamentar);
create	index	silem_parlamentar_dependente_idx_fkpessoa					on	silem.parlamentar_dependente	using	btree (fkpessoa);
create	index	silem_parlamentar_dependente_idx_fktipodependente		on	silem.parlamentar_dependente	using	btree (fktipodependente);
create	index	silem_parlamentar_dependente_idx_legal						on	silem.parlamentar_dependente	using	btree (legal);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.26');