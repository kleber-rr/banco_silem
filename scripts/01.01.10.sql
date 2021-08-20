-- v.01.01.10


-- Alterações na estrutura da tabela silem.sessaolegislativa
alter		table	silem.sessaolegislativa	rename	column	fklegislatura	to	fkmesadiretora;
alter		index	silem.silem_sessaolegislativa_idx_fklegislatura	rename	to	silem_sessaolegislativa_idx_fkmesadiretora;
alter		table	silem.sessaolegislativa	drop	constraint	silem_sessaolegislativa_fklegislatura restrict;
alter		table	silem.sessaolegislativa	add	constraint	silem_sessaolegislativa_fkmesadiretora foreign key(fkmesadiretora)	references silem.mesadiretora(pkmesadiretora)	on delete restrict	on update cascade	not deferrable;


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.10');