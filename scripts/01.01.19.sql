-- v.01.01.19


-- Alterações na estrutura da tabela silem.tipocomissao
alter		table	silem.tipocomissao	drop	column		dataregistro;
alter		table	silem.tipocomissao	add	column		fknatureza	integer;
comment	on	column	silem.tipocomissao.fknatureza		is 'not null';
alter		table	silem.tipocomissao	add	constraint	silem_tipocomissao_fknatureza	foreign key(fknatureza)	references	silem.natureza(pknatureza)	on delete restrict	on update cascade	not deferrable;
create	index	silem_tipocomissao_idx_fknatureza	on	silem.tipocomissao	using btree (fknatureza);

	
-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.19');