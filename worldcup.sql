--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 2018, 417, 418, 'Final', 4, 2);
INSERT INTO public.games VALUES (66, 2018, 419, 420, 'Third Place', 2, 0);
INSERT INTO public.games VALUES (67, 2018, 418, 420, 'Semi-Final', 2, 1);
INSERT INTO public.games VALUES (68, 2018, 417, 419, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (69, 2018, 418, 421, 'Quarter-Final', 3, 2);
INSERT INTO public.games VALUES (70, 2018, 420, 422, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (71, 2018, 419, 423, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (72, 2018, 417, 424, 'Quarter-Final', 2, 0);
INSERT INTO public.games VALUES (73, 2018, 420, 425, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (74, 2018, 422, 426, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (75, 2018, 419, 427, 'Eighth-Final', 3, 2);
INSERT INTO public.games VALUES (76, 2018, 423, 428, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (77, 2018, 418, 429, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (78, 2018, 421, 430, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (79, 2018, 424, 431, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (80, 2018, 417, 432, 'Eighth-Final', 4, 3);
INSERT INTO public.games VALUES (81, 2014, 433, 432, 'Final', 1, 0);
INSERT INTO public.games VALUES (82, 2014, 434, 423, 'Third Place', 3, 0);
INSERT INTO public.games VALUES (83, 2014, 432, 434, 'Semi-Final', 1, 0);
INSERT INTO public.games VALUES (84, 2014, 433, 423, 'Semi-Final', 7, 1);
INSERT INTO public.games VALUES (85, 2014, 434, 435, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (86, 2014, 432, 419, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (87, 2014, 423, 425, 'Quarter-Final', 2, 1);
INSERT INTO public.games VALUES (88, 2014, 433, 417, 'Quarter-Final', 1, 0);
INSERT INTO public.games VALUES (89, 2014, 423, 436, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (90, 2014, 425, 424, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (91, 2014, 417, 437, 'Eighth-Final', 2, 0);
INSERT INTO public.games VALUES (92, 2014, 433, 438, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (93, 2014, 434, 428, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (94, 2014, 435, 439, 'Eighth-Final', 2, 1);
INSERT INTO public.games VALUES (95, 2014, 432, 426, 'Eighth-Final', 1, 0);
INSERT INTO public.games VALUES (96, 2014, 419, 440, 'Eighth-Final', 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (417, 'France');
INSERT INTO public.teams VALUES (418, 'Croatia');
INSERT INTO public.teams VALUES (419, 'Belgium');
INSERT INTO public.teams VALUES (420, 'England');
INSERT INTO public.teams VALUES (421, 'Russia');
INSERT INTO public.teams VALUES (422, 'Sweden');
INSERT INTO public.teams VALUES (423, 'Brazil');
INSERT INTO public.teams VALUES (424, 'Uruguay');
INSERT INTO public.teams VALUES (425, 'Colombia');
INSERT INTO public.teams VALUES (426, 'Switzerland');
INSERT INTO public.teams VALUES (427, 'Japan');
INSERT INTO public.teams VALUES (428, 'Mexico');
INSERT INTO public.teams VALUES (429, 'Denmark');
INSERT INTO public.teams VALUES (430, 'Spain');
INSERT INTO public.teams VALUES (431, 'Portugal');
INSERT INTO public.teams VALUES (432, 'Argentina');
INSERT INTO public.teams VALUES (433, 'Germany');
INSERT INTO public.teams VALUES (434, 'Netherlands');
INSERT INTO public.teams VALUES (435, 'Costa Rica');
INSERT INTO public.teams VALUES (436, 'Chile');
INSERT INTO public.teams VALUES (437, 'Nigeria');
INSERT INTO public.teams VALUES (438, 'Algeria');
INSERT INTO public.teams VALUES (439, 'Greece');
INSERT INTO public.teams VALUES (440, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 440, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_team; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_team UNIQUE (name);


--
-- Name: games games_opponent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

