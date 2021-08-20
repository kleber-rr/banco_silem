-- v.01.01.03


-- removendo duplicidade da tabela tipodocumento
alter	table	silem.documentoacessorio	drop	constraint	silem_documentoacessorio_fktipodocumento	restrict;
alter	table	silem.documentoacessorio	add	constraint	silem_documentoacessorio_fktipodocumento	foreign key(fktipodocumento)	references	sistema.tipodocumento(pktipodocumento)	on delete restrict	on update cascade	not deferrable;
alter	table	sistema.tipodocumento		rename	column	descricao	to	tipodocumento;
alter	index	sistema.sistema_tipodocumento_unq_descricao	rename		to	sistema_tipodocumento_unq_tipodocumento;
drop	table	silem.tipodocumento;


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.03');