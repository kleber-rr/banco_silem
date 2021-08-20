-- v.01.01.20


-- tabela: silem.motivodesligamento
create	table	silem.motivodesligamento
(
	pkmotivodesligamento				serial not null,
	fkusuario				integer,
	versao					integer,
	motivodesligamento	text,
	constraint	silem_motivodesligamento_pkey							primary key(pkmotivodesligamento),
	constraint	silem_motivodesligamento_unq_motivodesligamento	unique(motivodesligamento),
	constraint	silem_motivodesligamento_fkusuario					foreign key(fkusuario)	references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.motivodesligamento.fkusuario				is 'not null';
comment	on	column	silem.motivodesligamento.versao					is 'not null';
comment	on	column	silem.motivodesligamento.motivodesligamento	is	'not null';
create	index	silem_motivodesligamento_idx_fkusuario	on	silem.motivodesligamento	using	btree (fkusuario);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.20');