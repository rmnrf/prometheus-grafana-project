--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.24
-- Dumped by pg_dump version 9.6.24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: kanban
--

CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);


ALTER TABLE public.databasechangelog OWNER TO kanban;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: kanban
--

CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO kanban;

--
-- Name: kanban; Type: TABLE; Schema: public; Owner: kanban
--

CREATE TABLE public.kanban (
    id integer NOT NULL,
    title text
);


ALTER TABLE public.kanban OWNER TO kanban;

--
-- Name: kanban_id_seq; Type: SEQUENCE; Schema: public; Owner: kanban
--

CREATE SEQUENCE public.kanban_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kanban_id_seq OWNER TO kanban;

--
-- Name: kanban_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanban
--

ALTER SEQUENCE public.kanban_id_seq OWNED BY public.kanban.id;


--
-- Name: task; Type: TABLE; Schema: public; Owner: kanban
--

CREATE TABLE public.task (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    color character varying(50),
    kanban_id integer,
    status character varying(20)
);


ALTER TABLE public.task OWNER TO kanban;

--
-- Name: task_id_seq; Type: SEQUENCE; Schema: public; Owner: kanban
--

CREATE SEQUENCE public.task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_id_seq OWNER TO kanban;

--
-- Name: task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kanban
--

ALTER SEQUENCE public.task_id_seq OWNED BY public.task.id;


--
-- Name: kanban id; Type: DEFAULT; Schema: public; Owner: kanban
--

ALTER TABLE ONLY public.kanban ALTER COLUMN id SET DEFAULT nextval('public.kanban_id_seq'::regclass);


--
-- Name: task id; Type: DEFAULT; Schema: public; Owner: kanban
--

ALTER TABLE ONLY public.task ALTER COLUMN id SET DEFAULT nextval('public.task_id_seq'::regclass);


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: kanban
--

COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
1	Wojtek	classpath:/db/changelog/db.changelog-master.xml	2022-07-22 16:47:37.71191	1	EXECUTED	8:340b5349bfea8a59f735e7591a313b43	sqlFile	Create table with Kanaban info	\N	3.6.3	\N	\N	8508457676
2	Wojtek	classpath:/db/changelog/db.changelog-master.xml	2022-07-22 16:47:37.736981	2	EXECUTED	8:44cf383cc056d4cbec3e6050b9582a8d	sqlFile	Create table with task info	\N	3.6.3	\N	\N	8508457676
3	Wojtek	classpath:/db/changelog/db.changelog-master.xml	2022-07-22 16:47:37.748684	3	EXECUTED	8:689fcecaf75dd1d2f67561b84937b583	sqlFile	Add kanban_id column to task table	\N	3.6.3	\N	\N	8508457676
4	Wojtek	classpath:/db/changelog/db.changelog-master.xml	2022-07-22 16:47:37.758868	4	EXECUTED	8:0c562ed8a9934ba2926d12a8d6c9c808	sqlFile	Add status column to task table	\N	3.6.3	\N	\N	8508457676
1	Wojtek	classpath:/db/changelog/db.changelog-master.xml	2022-07-22 16:47:37.71191	1	EXECUTED	8:340b5349bfea8a59f735e7591a313b43	sqlFile	Create table with Kanaban info	\N	3.6.3	\N	\N	8508457676
2	Wojtek	classpath:/db/changelog/db.changelog-master.xml	2022-07-22 16:47:37.736981	2	EXECUTED	8:44cf383cc056d4cbec3e6050b9582a8d	sqlFile	Create table with task info	\N	3.6.3	\N	\N	8508457676
3	Wojtek	classpath:/db/changelog/db.changelog-master.xml	2022-07-22 16:47:37.748684	3	EXECUTED	8:689fcecaf75dd1d2f67561b84937b583	sqlFile	Add kanban_id column to task table	\N	3.6.3	\N	\N	8508457676
4	Wojtek	classpath:/db/changelog/db.changelog-master.xml	2022-07-22 16:47:37.758868	4	EXECUTED	8:0c562ed8a9934ba2926d12a8d6c9c808	sqlFile	Add status column to task table	\N	3.6.3	\N	\N	8508457676
\.


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: kanban
--

COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
\.


--
-- Data for Name: kanban; Type: TABLE DATA; Schema: public; Owner: kanban
--

COPY public.kanban (id, title) FROM stdin;
\.


--
-- Name: kanban_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanban
--

SELECT pg_catalog.setval('public.kanban_id_seq', 1, false);


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: kanban
--

COPY public.task (id, title, description, color, kanban_id, status) FROM stdin;
\.


--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kanban
--

SELECT pg_catalog.setval('public.task_id_seq', 1, false);


--
-- Name: databasechangeloglock databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: kanban
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);


--
-- Name: kanban kanban_pkey; Type: CONSTRAINT; Schema: public; Owner: kanban
--

ALTER TABLE ONLY public.kanban
    ADD CONSTRAINT kanban_pkey PRIMARY KEY (id);


--
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: kanban
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- Name: task task_kanban_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kanban
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_kanban_id_fkey FOREIGN KEY (kanban_id) REFERENCES public.kanban(id);


--
-- PostgreSQL database dump complete
--

