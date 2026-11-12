--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 2, 23);
INSERT INTO public.games VALUES (2, 3, 4);
INSERT INTO public.games VALUES (3, 3, 958);
INSERT INTO public.games VALUES (4, 4, 997);
INSERT INTO public.games VALUES (5, 4, 441);
INSERT INTO public.games VALUES (6, 3, 485);
INSERT INTO public.games VALUES (7, 3, 826);
INSERT INTO public.games VALUES (8, 3, 420);
INSERT INTO public.games VALUES (9, 2, 17);
INSERT INTO public.games VALUES (10, 2, 15);
INSERT INTO public.games VALUES (11, 5, 770);
INSERT INTO public.games VALUES (12, 5, 323);
INSERT INTO public.games VALUES (13, 6, 1001);
INSERT INTO public.games VALUES (14, 6, 314);
INSERT INTO public.games VALUES (15, 5, 977);
INSERT INTO public.games VALUES (16, 5, 618);
INSERT INTO public.games VALUES (17, 5, 226);
INSERT INTO public.games VALUES (18, 7, 219);
INSERT INTO public.games VALUES (19, 7, 660);
INSERT INTO public.games VALUES (20, 8, 270);
INSERT INTO public.games VALUES (21, 8, 652);
INSERT INTO public.games VALUES (22, 7, 104);
INSERT INTO public.games VALUES (23, 7, 160);
INSERT INTO public.games VALUES (24, 7, 953);
INSERT INTO public.games VALUES (25, 2, 4);
INSERT INTO public.games VALUES (26, 2, 14);
INSERT INTO public.games VALUES (27, 9, 496);
INSERT INTO public.games VALUES (28, 9, 855);
INSERT INTO public.games VALUES (29, 10, 724);
INSERT INTO public.games VALUES (30, 10, 825);
INSERT INTO public.games VALUES (31, 9, 127);
INSERT INTO public.games VALUES (32, 9, 983);
INSERT INTO public.games VALUES (33, 9, 440);
INSERT INTO public.games VALUES (34, 2, 14);
INSERT INTO public.games VALUES (35, 11, 565);
INSERT INTO public.games VALUES (36, 11, 502);
INSERT INTO public.games VALUES (37, 12, 510);
INSERT INTO public.games VALUES (38, 12, 220);
INSERT INTO public.games VALUES (39, 11, 254);
INSERT INTO public.games VALUES (40, 11, 983);
INSERT INTO public.games VALUES (41, 11, 930);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'marwa');
INSERT INTO public.users VALUES (2, 'mm');
INSERT INTO public.users VALUES (3, 'user_1794511664963');
INSERT INTO public.users VALUES (4, 'user_1794511664962');
INSERT INTO public.users VALUES (5, 'user_1794511957453');
INSERT INTO public.users VALUES (6, 'user_1794511957452');
INSERT INTO public.users VALUES (7, 'user_1794512252657');
INSERT INTO public.users VALUES (8, 'user_1794512252656');
INSERT INTO public.users VALUES (9, 'user_1794512407986');
INSERT INTO public.users VALUES (10, 'user_1794512407985');
INSERT INTO public.users VALUES (11, 'user_1794512664522');
INSERT INTO public.users VALUES (12, 'user_1794512664521');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 41, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);


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

