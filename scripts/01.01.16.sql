-- v.01.01.16


-- Altera��es na estrutura da tabela silem.parlamentar
alter		table	silem.parlamentar	drop	column	fknivelinstrucao;

alter		table	silem.parlamentar	add	column	suplente	boolean;
comment	on	column	silem.parlamentar.suplente	is 'not null';
create	index	silem_parlamentar_idx_suplente	on silem.parlamentar using btree (suplente);


-- Controle de vers�o
insert	into	sistema.versao(versao)	values	('01.01.16');