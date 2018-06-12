--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: excompendium; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA excompendium;


ALTER SCHEMA excompendium OWNER TO postgres;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = excompendium;

SET default_with_oids = false;

--
-- Name: nodes; Type: TABLE; Schema: excompendium; Owner: postgres; Tablespace: excompendium
--

CREATE TABLE excompendium.nodes (
    id integer NOT NULL,
    parent_id integer NOT NULL,
    description character varying(200),
    type character(2) DEFAULT 'QU'::bpchar,
    comments character varying,
    CONSTRAINT check_types CHECK (((type = 'QU'::bpchar) OR (type = 'ID'::bpchar) OR (type = 'PR'::bpchar) OR (type = 'CO'::bpchar)))
);


ALTER TABLE excompendium.nodes OWNER TO postgres;

--
-- Name: COLUMN nodes.type; Type: COMMENT; Schema: excompendium; Owner: postgres
--

COMMENT ON COLUMN excompendium.nodes.type IS 'QU=Question, ID=Idea or answer, PR=Pro, CO=Con';


--
-- Data for Name: nodes; Type: TABLE DATA; Schema: excompendium; Owner: postgres
--

INSERT INTO excompendium.nodes (id, parent_id, description, type, comments) VALUES (0, 0, 'What is the problem we are trying to solve?', 'QU', NULL);
INSERT INTO excompendium.nodes (id, parent_id, description, type, comments) VALUES (1, 0, 'The new Compendium written in Elixir', 'ID', NULL);
INSERT INTO excompendium.nodes (id, parent_id, description, type, comments) VALUES (2, 0, 'How to make this work with PostgreSQL', 'ID', NULL);
INSERT INTO excompendium.nodes (id, parent_id, description, type, comments) VALUES (3, 1, 'Which fremework we can use with Elixir?', 'QU', NULL);
INSERT INTO excompendium.nodes (id, parent_id, description, type, comments) VALUES (4, 1, 'Functional language built on top of Erlang VM', 'PR', NULL);
INSERT INTO excompendium.nodes (id, parent_id, description, type, comments) VALUES (5, 1, 'It has to be learned from scratch', 'CO', NULL);


SET default_tablespace = '';

--
-- Name: nodes nodes_pkey; Type: CONSTRAINT; Schema: excompendium; Owner: postgres
--

ALTER TABLE ONLY excompendium.nodes
    ADD CONSTRAINT nodes_pkey PRIMARY KEY (id);


--
-- Name: nodes nodes_parent_id_fkey; Type: FK CONSTRAINT; Schema: excompendium; Owner: postgres
--

ALTER TABLE ONLY excompendium.nodes
    ADD CONSTRAINT nodes_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES excompendium.nodes(id);


--
-- PostgreSQL database dump complete
--

