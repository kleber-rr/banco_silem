-- v.01.01.15


-- Alterações na estrutura da tabela  silem.sessaoplenaria_orador
alter		table	silem.sessaoplenaria_orador	add	column	fkexpediente	integer;
comment	on	column	silem.sessaoplenaria_orador.fkexpediente	is	'not null';
alter		table	silem.sessaoplenaria_orador	add	constraint	silem_sessaoplenaria_orador_fkexpediente foreign key (fkexpediente)	references silem.expediente(pkexpediente)	on delete restrict	on update cascade not deferrable;
create	index	silem_sessaoplenaria_orador_idx_fkexpediente		on	silem.sessaoplenaria_orador	using btree (fkexpediente);

alter		table	silem.sessaoplenaria_orador	drop	constraint	silem_sessaoplenaria_orador_unq_fksessaoplenaria_fkparlamentar restrict;
alter		table	silem.sessaoplenaria_orador	add	constraint	silem_sessaoplenaria_orador_unq_fksessaoplenaria_fkparlamentar unique(fksessaoplenaria, fkparlamentar, fkexpediente) not deferrable;

alter		table	silem.sessaoplenaria_orador	add	column	hora				time(0) without time zone;
comment	on	column	silem.sessaoplenaria_orador.hora				is	'not null';


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.15');