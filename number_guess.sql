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
-- Name: guess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guess (
    name character varying(30),
    guess integer
);


ALTER TABLE public.guess OWNER TO freecodecamp;

--
-- Name: userplayed; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.userplayed (
    name character varying(30),
    gamesplayed integer
);


ALTER TABLE public.userplayed OWNER TO freecodecamp;

--
-- Data for Name: guess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guess VALUES ('Divija', 4);
INSERT INTO public.guess VALUES ('Divija', 3);
INSERT INTO public.guess VALUES ('user_1669689049453', 228);
INSERT INTO public.guess VALUES ('user_1669689049453', 848);
INSERT INTO public.guess VALUES ('user_1669689049452', 917);
INSERT INTO public.guess VALUES ('user_1669689049452', 930);
INSERT INTO public.guess VALUES ('user_1669689049453', 763);
INSERT INTO public.guess VALUES ('user_1669689049453', 173);
INSERT INTO public.guess VALUES ('user_1669689049453', 732);
INSERT INTO public.guess VALUES ('Divija', 2);
INSERT INTO public.guess VALUES ('user_1669689171709', 86);
INSERT INTO public.guess VALUES ('user_1669689171709', 24);
INSERT INTO public.guess VALUES ('user_1669689171708', 573);
INSERT INTO public.guess VALUES ('user_1669689171708', 33);
INSERT INTO public.guess VALUES ('user_1669689171709', 751);
INSERT INTO public.guess VALUES ('user_1669689171709', 798);
INSERT INTO public.guess VALUES ('user_1669689171709', 778);
INSERT INTO public.guess VALUES ('user_1669727443155', 350);
INSERT INTO public.guess VALUES ('user_1669727443155', 540);
INSERT INTO public.guess VALUES ('user_1669727443154', 116);
INSERT INTO public.guess VALUES ('user_1669727443154', 947);
INSERT INTO public.guess VALUES ('user_1669727443155', 597);
INSERT INTO public.guess VALUES ('user_1669727443155', 664);
INSERT INTO public.guess VALUES ('user_1669727443155', 233);
INSERT INTO public.guess VALUES ('Raviteja', 6);
INSERT INTO public.guess VALUES ('user_1669727954522', 899);
INSERT INTO public.guess VALUES ('user_1669727954522', 896);
INSERT INTO public.guess VALUES ('user_1669727954521', 508);
INSERT INTO public.guess VALUES ('user_1669727954521', 578);
INSERT INTO public.guess VALUES ('user_1669727954522', 110);
INSERT INTO public.guess VALUES ('user_1669727954522', 334);
INSERT INTO public.guess VALUES ('user_1669727954522', 248);


--
-- Data for Name: userplayed; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.userplayed VALUES ('Divija', 1);
INSERT INTO public.userplayed VALUES ('user_1669689049453', 1);
INSERT INTO public.userplayed VALUES ('user_1669689049452', 1);
INSERT INTO public.userplayed VALUES ('user_1669689171709', 1);
INSERT INTO public.userplayed VALUES ('user_1669689171708', 1);
INSERT INTO public.userplayed VALUES ('user_1669727443155', 1);
INSERT INTO public.userplayed VALUES ('user_1669727443154', 1);
INSERT INTO public.userplayed VALUES ('Raviteja', 1);
INSERT INTO public.userplayed VALUES ('user_1669727954522', 1);
INSERT INTO public.userplayed VALUES ('user_1669727954521', 1);


--
-- Name: userplayed userplayed_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.userplayed
    ADD CONSTRAINT userplayed_name_key UNIQUE (name);


--
-- Name: guess guess_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.guess
    ADD CONSTRAINT guess_name_fkey FOREIGN KEY (name) REFERENCES public.userplayed(name);


--
-- PostgreSQL database dump complete
--

