-- v.01.01.18


-- tabela: silem.natureza
create	table	silem.natureza
(
	pknatureza				serial not null,
	fkusuario				integer,
	versao					integer,
	natureza					text,
	constraint	silem_natureza_pkey				primary key(pknatureza),
	constraint	silem_natureza_unq_natureza	unique(natureza),
	constraint	silem_natureza_fkusuario		foreign key(fkusuario)	references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.natureza.fkusuario				is 'not null';
comment	on	column	silem.natureza.versao					is 'not null';
comment	on	column	silem.natureza.natureza					is	'not null';
create	index	silem_natureza_idx_fkusuario				on	silem.natureza	using	btree (fkusuario);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.18');