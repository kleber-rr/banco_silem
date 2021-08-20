-- v.01.01.05


-- Excluindo tabela de documento e vinculando os dados na tabela pessoa_documento
alter		table	sistema.pessoa_documento	drop	column			fkdocumento;

alter		table	sistema.pessoa_documento	add	column			fktipodocumento	integer;
comment	on	column	sistema.pessoa_documento.fktipodocumento	is 'not null';
alter		table	sistema.pessoa_documento	add	constraint		sistema_pessoa_documento_fktipodocumento	foreign key(fktipodocumento)	references	sistema.tipodocumento(pktipodocumento)	on delete restrict	on update cascade	not deferrable;
create	index	sistema_pessoa_documento_idx_fktipodocumento		on	sistema.pessoa_documento	using btree(fktipodocumento);

alter		table	sistema.pessoa_documento	add	column			documento	text;
comment	on	column	sistema.pessoa_documento.documento			is 'not null';
create	index	sistema_pessoa_documento_idx_documento				on	sistema.pessoa_documento	using btree(documento);

alter		table	sistema.pessoa_documento	add	column			emissao	date;
create	index	sistema_pessoa_documento_idx_emissao				on	sistema.pessoa_documento	using btree(emissao);

alter		table	sistema.pessoa_documento	add	column			fkorgaoemissor	integer;
alter		table	sistema.pessoa_documento	add	constraint		sistema_pessoa_documento_fkorgaoemissor	foreign key(fkorgaoemissor)	references	sistema.orgaoemissor(pkorgaoemissor)	on delete restrict	on update cascade	not deferrable;
create	index	sistema_pessoa_documento_idx_fkorgaoemissor		on	sistema.pessoa_documento	using btree(fkorgaoemissor);

alter		table	sistema.pessoa_documento	add	column			fkufemissor	integer;
alter		table	sistema.pessoa_documento	add	constraint		sistema_pessoa_documento_fkufemissor	foreign key(fkufemissor)	references	sistema.uf(pkuf)	on delete restrict	on update cascade	not deferrable;
create	index	sistema_pessoa_documento_idx_fkufemissor			on	sistema.pessoa_documento	using btree(fkufemissor);

alter		table	sistema.pessoa_documento	add	column			validade	date;
create	index	sistema_pessoa_documento_idx_validade				on	sistema.pessoa_documento	using btree(validade);

alter		table	sistema.pessoa_documento	add	constraint		sistema_pessoa_documento_unq	unique(fktipodocumento, documento, emissao, fkorgaoemissor, fkufemissor, validade) not deferrable;

drop		table	sistema.documento;


-- Controle de versão
insert	into	sistema.versao(versao)	values	('01.01.05');