-- v.01.01.13


-- Alterações na estrutura da tabela silem.sessaoplenaria
alter		table	silem.sessaoplenaria	rename	column	fksessaolegislativa	to	fkperiodolegislativo;
alter		index	silem.silem_sessaoplenaria_idx_fksessaolegislativa	rename	to	silem_sessaoplenaria_idx_fkperiodolegislativo;
alter		table	silem.sessaoplenaria	drop	constraint	silem_sessaoplenaria_fksessaolegislativa restrict;
alter		table	silem.sessaoplenaria	add	constraint	silem_sessaoplenaria_fkperiodolegislativo foreign key(fkperiodolegislativo)	references silem.periodolegislativo(pkperiodolegislativo)	on delete restrict	on update cascade	not deferrable;

alter		table	silem.sessaoplenaria	add	column	ata				text;

alter		table	silem.sessaoplenaria	add	column	fktaquigrafo	integer;
create	index	silem_sessaoplenaria_idx_fktaquigrafo	on silem.sessaoplenaria	using btree (fktaquigrafo);
alter		table	silem.sessaoplenaria	add	constraint	silem_sessaoplenaria_fktaquigrafo	foreign key(fktaquigrafo)	references	silem.servidor(pkservidor)	on delete restrict	on update cascade	not deferrable;


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.13');