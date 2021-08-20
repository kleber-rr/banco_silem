-- v.01.01.11


-- tabela: silem.periodolegislativo
create	table	silem.periodolegislativo
(
	pkperiodolegislativo	serial not null,
	fkusuario				integer,
	versao					integer,
	periodolegislativo	text,
	datainicial				timestamp(0) without time zone,
	datafinal				timestamp(0) without time zone,
	constraint	silem_periodolegislativo_pkey primary key(pkperiodolegislativo),
	constraint	silem_periodolegislativo_fkusuario foreign key(fkusuario) references	sistema.usuario(pkusuario)	on delete restrict	on update cascade	not deferrable
);
comment	on	column	silem.periodolegislativo.fkusuario				is 'not null';
comment	on	column	silem.periodolegislativo.versao					is 'not null';
comment	on	column	silem.periodolegislativo.periodolegislativo	is	'not null';
create	index	silem_periodolegislativo_idx_fkusuario				on	silem.periodolegislativo	using	btree (fkusuario);
create	index	silem_periodolegislativo_idx_periodolegislativo	on	silem.periodolegislativo	using	btree (periodolegislativo);
create	index	silem_periodolegislativo_idx_datainicial			on	silem.periodolegislativo	using	btree (datainicial);
create	index	silem_periodolegislativo_idx_datafinal				on	silem.periodolegislativo	using	btree (datafinal);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.11');