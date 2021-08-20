-- v.01.01.47


-- tabela: sistema.menus

-- INSERE NOVOS MENUS
INSERT INTO sistema.menu(
            pkmenu, fkusuario, versao, fksistema, fkmenu, router_url, icon_code, 
            icon_class, menu)
			VALUES (10,1,1,1,28,'/main/institucional/constituicaoestadual',null,null,'Constituição Estadual'),
					(11,1,1,1,28,'/main/institucional/constituicaofederal',null,null,'Constituição Federal'),
					(12,1,1,1,28,'/main/institucional/codigotributariomunicipal',null,null,'Código Tributário Municipal');
					
-- INCLUI AS FUNCIONALIDADES CORRESPONDENTES
INSERT INTO sistema.funcionalidade(pkfuncionalidade, fkusuario, versao, fkmenu, funcionalidade) VALUES (39, 1, 1, 10, 'teste'),(40,1, 1, 11, 'teste'),(41, 1, 1, 12, 'teste');

INSERT INTO sistema.funcionalidade_config(fkusuario, versao, fkfuncionalidade, fkgrupousuario)
    VALUES (1,1,39,2),(1,1,40,2),(1,1,41,2),(1,1,39,1),(1,1,40,1),(1,1,41,1);
					
-- ATUALIZA OS EXISTENTES E SUAS VERSOES
UPDATE sistema.menu SET versao = versao + 1, fkmenu = NULL, router_url = '/main/dashboard', menu = 'Inicial' WHERE pkmenu = 1;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = NULL, router_url = NULL, menu = 'Câmara' WHERE pkmenu = 2;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/camara/pessoa', menu = 'Pessoa' WHERE pkmenu = 3;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = NULL, router_url = NULL, menu = 'Admin' WHERE pkmenu = 4;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 4, router_url = '/main/admin/usuario', menu = 'Usuarios' WHERE pkmenu = 5;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 4, router_url = '/main/admin/casa-legislativa', menu = 'Casa Legislativa' WHERE pkmenu = 6;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 4, router_url = '/main/admin/local', menu = 'Locais' WHERE pkmenu = 7;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/camara/mesadiretoraparlamentar', menu = 'Membros da Mesa' WHERE pkmenu = 8;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/camara/coligacao', menu = 'Coligação' WHERE pkmenu = 9;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/camara/servidor', menu = 'Servidor' WHERE pkmenu = 23;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = NULL, router_url = NULL, menu = 'Institucional' WHERE pkmenu = 28;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 28, router_url = '/main/institucional/listapresidentes', menu = 'Lista de Presidentes' WHERE pkmenu = 29;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 28, router_url = '/main/institucional/leimunicipal', menu = 'Lei Municipal' WHERE pkmenu = 30;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 28, router_url = '/main/institucional/regimentointerno', menu = 'Regimento Interno' WHERE pkmenu = 31;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = NULL, router_url = NULL, menu = 'Agenda de Eventos' WHERE pkmenu = 32;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 32, router_url = NULL, menu = 'Atendimento Público' WHERE pkmenu = 33;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 32, router_url = NULL, menu = 'Dúvidas' WHERE pkmenu = 34;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 32, router_url = NULL, menu = 'Eventos' WHERE pkmenu = 35;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = NULL, router_url = NULL, menu = 'Parlamentares' WHERE pkmenu = 37;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/camara/parlamentar', menu = 'Parlamentar' WHERE pkmenu = 39;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/camara/partido', menu = 'Partido' WHERE pkmenu = 41;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/camara/mandato', menu = 'Mandato' WHERE pkmenu = 42;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/camara/mesadiretora', menu = 'Mesa Diretora' WHERE pkmenu = 43;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/camara/vereador-comissao', menu = 'Vereador/Comissões' WHERE pkmenu = 44;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 37, router_url = '/main/parlamentares/proposicao', menu = 'Proposições' WHERE pkmenu = 47;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = NULL, router_url = NULL, menu = 'Atividades Legislativas' WHERE pkmenu = 49;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/camara/expediente', menu = 'Expediente' WHERE pkmenu = 52;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/camara/comissao', menu = 'Comissões' WHERE pkmenu = 53;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 49, router_url = NULL, menu = 'Oradores' WHERE pkmenu = 57;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = NULL, router_url = NULL, menu = 'Transparência' WHERE pkmenu = 61;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = NULL, router_url = NULL, menu = 'Serviços' WHERE pkmenu = 62;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 62, router_url = NULL, menu = 'Empresas' WHERE pkmenu = 63;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 4, router_url = '/main/admin/legislatura', menu = 'Legislatura' WHERE pkmenu = 67;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 4, router_url = '/main/admin/cargo', menu = 'Cargo' WHERE pkmenu = 69;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 57, router_url = '/main/legislativas/cadastrar-orador', menu = 'Cadastrar' WHERE pkmenu = 71;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 57, router_url = '/main/legislativas/oradores-sessao', menu = 'Por Sessão' WHERE pkmenu = 72;
UPDATE sistema.menu SET versao = versao + 1, fkmenu = 2, router_url = '/main/legislativas/plenaria', menu = 'Sessão' WHERE pkmenu = 73;



-- Controle de versão
insert	into	sistema.versao(versao) values	('01.01.47');