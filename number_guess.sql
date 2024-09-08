--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 2);
INSERT INTO public.games VALUES (2, 20, 2);
INSERT INTO public.games VALUES (3, 514, 3);
INSERT INTO public.games VALUES (4, 378, 3);
INSERT INTO public.games VALUES (5, 999, 4);
INSERT INTO public.games VALUES (6, 909, 4);
INSERT INTO public.games VALUES (7, 212, 3);
INSERT INTO public.games VALUES (8, 160, 3);
INSERT INTO public.games VALUES (9, 35, 3);
INSERT INTO public.games VALUES (10, 100, 5);
INSERT INTO public.games VALUES (11, 393, 5);
INSERT INTO public.games VALUES (12, 932, 6);
INSERT INTO public.games VALUES (13, 207, 6);
INSERT INTO public.games VALUES (14, 99, 5);
INSERT INTO public.games VALUES (15, 35, 5);
INSERT INTO public.games VALUES (16, 912, 5);
INSERT INTO public.games VALUES (17, 352, 7);
INSERT INTO public.games VALUES (18, 451, 7);
INSERT INTO public.games VALUES (19, 63, 8);
INSERT INTO public.games VALUES (20, 177, 8);
INSERT INTO public.games VALUES (21, 206, 7);
INSERT INTO public.games VALUES (22, 233, 7);
INSERT INTO public.games VALUES (23, 338, 7);
INSERT INTO public.games VALUES (24, 190, 9);
INSERT INTO public.games VALUES (25, 139, 9);
INSERT INTO public.games VALUES (26, 281, 10);
INSERT INTO public.games VALUES (27, 792, 10);
INSERT INTO public.games VALUES (28, 225, 9);
INSERT INTO public.games VALUES (29, 623, 9);
INSERT INTO public.games VALUES (30, 690, 9);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'z');
INSERT INTO public.users VALUES (2, 'sf');
INSERT INTO public.users VALUES (3, 'user_1725814588373');
INSERT INTO public.users VALUES (4, 'user_1725814588372');
INSERT INTO public.users VALUES (5, 'user_1725814636382');
INSERT INTO public.users VALUES (6, 'user_1725814636381');
INSERT INTO public.users VALUES (7, 'user_1725814704231');
INSERT INTO public.users VALUES (8, 'user_1725814704230');
INSERT INTO public.users VALUES (9, 'user_1725814727392');
INSERT INTO public.users VALUES (10, 'user_1725814727391');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 30, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 10, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

