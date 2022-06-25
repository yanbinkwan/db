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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: civi; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civi (
    civi_id integer NOT NULL,
    name character varying(32),
    numb integer,
    ui integer NOT NULL,
    moon_id integer,
    ssdf integer
);


ALTER TABLE public.civi OWNER TO freecodecamp;

--
-- Name: civi_civi_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.civi_civi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civi_civi_id_seq OWNER TO freecodecamp;

--
-- Name: civi_civi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.civi_civi_id_seq OWNED BY public.civi.civi_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(32) NOT NULL,
    distance_from_earth integer,
    description text,
    has_life boolean,
    has_water boolean,
    galaxy_id integer NOT NULL,
    ssdf integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    id integer NOT NULL,
    name character varying(32),
    distance_from_earth integer,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    ssdf integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    id integer NOT NULL,
    name character varying(32),
    distance_from_earth integer,
    star_id integer,
    planet_id integer NOT NULL,
    sdf integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    id integer NOT NULL,
    name character varying(32),
    distance_from_earth integer,
    brlight numeric,
    galaxy_id integer,
    star_id integer NOT NULL,
    ssdf integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: civi civi_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civi ALTER COLUMN civi_id SET DEFAULT nextval('public.civi_civi_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: civi; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civi VALUES (1, NULL, NULL, 1, 1, NULL);
INSERT INTO public.civi VALUES (2, NULL, NULL, 1, 1, NULL);
INSERT INTO public.civi VALUES (3, NULL, NULL, 1, 1, NULL);
INSERT INTO public.civi VALUES (4, NULL, NULL, 1, 1, NULL);
INSERT INTO public.civi VALUES (5, NULL, NULL, 1, 1, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('sun', 1000, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.galaxy VALUES ('uhj', NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.galaxy VALUES ('hu', NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.galaxy VALUES ('2s', NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.galaxy VALUES ('ju', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.galaxy VALUES ('isj', NULL, NULL, NULL, NULL, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'HUS', NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES (1, 'a', NULL, 2, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa', NULL, 3, 1, NULL);
INSERT INTO public.moon VALUES (1, 'AaZ', NULL, 4, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2Z', NULL, 5, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZZ', NULL, 6, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZ', NULL, 7, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZ1', NULL, 8, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1', NULL, 9, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ12', NULL, 10, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z2', NULL, 11, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z62', NULL, 12, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z2Z', NULL, 13, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22Z', NULL, 14, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z612', NULL, 15, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22HZ', NULL, 16, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22H1Z', NULL, 17, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22HZH', NULL, 18, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22HZHZ', NULL, 19, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22HZHZH', NULL, 20, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22HZHZZ', NULL, 21, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22HZHZ3', NULL, 22, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22HZHZ3H', NULL, 23, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22HZHZZZ', NULL, 24, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22HZHZ3Z', NULL, 25, 1, NULL);
INSERT INTO public.moon VALUES (1, 'Aa2ZGZZ1Z22HZHZ3SZ', NULL, 26, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'LSO', NULL, 1, 1, NULL);
INSERT INTO public.planet VALUES (2, 'SSA', NULL, 1, 2, NULL);
INSERT INTO public.planet VALUES (2, 'SSAA', NULL, 1, 3, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAA', NULL, 1, 4, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAA', NULL, 1, 5, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAAA', NULL, 1, 6, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAAAA', NULL, 1, 7, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAAAAA', NULL, 1, 8, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAAAAAA', NULL, 1, 9, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAAAAAAA', NULL, 1, 10, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAAAAAAAA', NULL, 1, 11, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAAAAAAAAAA', NULL, 1, 14, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAAAAAAAAAAX', NULL, 1, 15, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAAAAAAAAAAXZ', NULL, 1, 16, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAAAAAAAAAAXZH', NULL, 1, 17, NULL);
INSERT INTO public.planet VALUES (2, 'SSAAAAAAAAAAAAXZZH', NULL, 1, 18, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'GOS', NULL, NULL, 1, 1, NULL);
INSERT INTO public.star VALUES (2, 'G', NULL, NULL, 1, 2, NULL);
INSERT INTO public.star VALUES (3, 'S', NULL, NULL, 2, 3, NULL);
INSERT INTO public.star VALUES (4, 'AS', NULL, NULL, 3, 4, NULL);
INSERT INTO public.star VALUES (5, 'ASD', NULL, NULL, 4, 5, NULL);
INSERT INTO public.star VALUES (7, 'UUS', NULL, NULL, 3, 6, NULL);
INSERT INTO public.star VALUES (8, 'SDF', NULL, NULL, 5, 7, NULL);


--
-- Name: civi_civi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.civi_civi_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: civi civi_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civi
    ADD CONSTRAINT civi_name_key UNIQUE (name);


--
-- Name: civi civi_numb_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civi
    ADD CONSTRAINT civi_numb_key UNIQUE (numb);


--
-- Name: civi civi_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civi
    ADD CONSTRAINT civi_pkey PRIMARY KEY (civi_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

