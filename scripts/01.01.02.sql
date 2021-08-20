-- v.01.01.02


-- criação do campo fktipocomissao
alter		table	silem.comissao	add	column		fktipocomissao	integer;
comment	on	column	silem.comissao.fktipocomissao	is	'not null';
alter		table	silem.comissao	add	constraint	silem_comissao_fktipocomissao	foreign key(fktipocomissao)	references	silem.tipocomissao(pktipocomissao)	on	delete	restrict	on	update	cascade	not	deferrable;
create	index	silem_comissao_idx_fktipocomissao	on	silem.comissao	using	btree(fktipocomissao);


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.02');