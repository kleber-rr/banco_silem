-- v.01.01.09


-- Alterações na estrutura da tabela silem.mesadiretora
alter		table	silem.mesadiretora	rename	column	fksessaolegislativa	to	fklegislatura;
alter		index	silem.silem_mesadiretora_idx_fksessaolegislativa	rename	to	silem_mesadiretora_idx_fklegislatura;
alter		table	silem.mesadiretora	drop	constraint	silem_mesadiretora_fksessaolegislativa restrict;
alter		table	silem.mesadiretora	add	constraint	silem_mesadiretora_fklegislatura foreign key(fklegislatura)	references silem.legislatura(pklegislatura)	on delete restrict	on update cascade	not deferrable;


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.09');