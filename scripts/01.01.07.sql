-- v.01.01.07


-- Vinculando nível de instrução a tabela sistema.pessoa
alter		table	sistema.pessoa		add	column		fknivelinstrucao	integer;
alter		table	sistema.pessoa		add	constraint	sistema_pessoa_fknivelinstrucao	foreign key(fknivelinstrucao)	references	sistema.nivelinstrucao(pknivelinstrucao)	on delete restrict	on update cascade	not deferrable;
create	index	sistema_pessoa_idx_fknivelinstrucao	on	sistema.pessoa	using btree(fknivelinstrucao);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.07');