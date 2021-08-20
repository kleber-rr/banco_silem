--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 10.5

-- Started on 2018-10-11 21:48:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2573 (class 0 OID 65978)
-- Dependencies: 303
-- Data for Name: menu; Type: TABLE DATA; Schema: sistema; Owner: postgres
--

COPY sistema.menu (pkmenu, fkusuario, versao, fksistema, fkmenu, router_url, icon_code, icon_class, menu) FROM stdin;
1	1	1	1	\N	/main/dashboard	dashboard	material-icons	Inicial
2	1	1	1	\N	\N	people	material-icons	Câmara
28	1	1	1	\N	\N	location_city	material-icons	Institucional
29	1	1	1	28	\N	\N	\N	Lista de Presidentes
30	1	1	1	28	\N	\N	\N	Lei Municipal
31	1	1	1	28	\N	\N	\N	Regimento Interno
32	1	1	1	\N	\N	date_range	material-icons	Agenda de Eventos
33	1	1	1	32	\N	\N	\N	Atendimento Público
34	1	1	1	32	\N	\N	\N	Dúvidas
35	1	1	1	32	\N	\N	\N	Eventos
49	1	1	1	\N	\N	account_balance	material-icons	Atividades Legislativas
57	1	1	1	49	\N	keyboard_arrow_right	material-icons	Oradores
61	1	1	1	\N	\N	info	material-icons	Transparência
62	1	1	1	\N	\N	work	material-icons	Serviços
63	1	1	1	62	\N	keyboard_arrow_right	material-icons	Empresas
71	1	1	1	57	/main/legislativas/cadastrar-orador	\N	\N	Cadastrar
72	1	1	1	57	/main/legislativas/oradores-sessao	\N	\N	Por Sessão
47	1	1	1	37	/main/parlamentares/proposicao	\N	\N	Proposições
37	1	1	1	\N	\N	people	material-icons	Parlamentares
67	1	1	1	2	/main/camara/legislatura	\N	\N	Legislatura
39	1	1	1	2	/main/parlamentares/parlamentar	\N	\N	Parlamentar
41	1	1	1	2	/main/parlamentares/partido	\N	\N	Partido
42	1	1	1	2	/main/parlamentares/mandato	\N	\N	Mandato
69	1	1	1	2	/main/parlamentares/cargo	\N	\N	Cargo
53	1	1	1	2	/main/legislativas/comissao	\N	\N	Comissões
52	1	1	1	2	/main/legislativas/expediente	\N	\N	Expediente
73	1	1	1	2	/main/legislativas/plenaria	\N	\N	Sessão
23	1	1	1	2	/main/camara/servidor	\N	material-icons	Servidor
3	1	1	1	2	/main/camara/pessoa	\N	\N	Pessoa
4	1	1	1	\N	\N	settings	material-icons	Admin
6	1	1	1	4	/main/admin/casa-legislativa	\N	\N	Casa Legislativa
5	1	1	1	4	/main/admin/usuario	\N	\N	Usuarios
44	1	1	1	2	/main/parlamentares/vereador-comissao	\N	\N	Vereador/Comissões
7	1	1	1	2	/main/camara/local	\N	\N	Locais
43	1	1	1	2	/main/camara/mesadiretora	\N	\N	Mesa Diretora
8	1	1	1	2	/main/camara/mesadiretoraparlamentar	\N	\N	Membros da Mesa
9	1	1	1	2	/main/camara/coligacao	\N	\N	Coligação
\.


--
-- TOC entry 2585 (class 0 OID 0)
-- Dependencies: 304
-- Name: menu_pkmenu_seq; Type: SEQUENCE SET; Schema: sistema; Owner: postgres
--

SELECT pg_catalog.setval('sistema.menu_pkmenu_seq', 9, true);


-- Completed on 2018-10-11 21:48:38

--
-- PostgreSQL database dump complete
--

