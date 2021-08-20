-- v.01.01.22


-- tabela: silem.motivofimrelatoria
create	table	silem.motivofimrelatoria
(
	pkmotivofimrelatoria				serial not null,
	fkusuario				integer,
	versao					integer,
	motivofimrelatoria	text,
	constraint	silem_motivofimrelatoria_pkey							primary key(pkmotivofimrelatoria),
	constraint	silem_motivofimrelatoria_unq_motivofimrelatoria	unique(motivofimrelatoria),
	constraint	silem_motivofimrelatoria_fkusuario					foreign key(fkusuario)	references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.motivofimrelatoria.fkusuario				is 'not null';
comment	on	column	silem.motivofimrelatoria.versao					is 'not null';
comment	on	column	silem.motivofimrelatoria.motivofimrelatoria	is	'not null';
create	index	silem_motivofimrelatoria_idx_fkusuario	on	silem.motivofimrelatoria	using	btree (fkusuario);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.22');