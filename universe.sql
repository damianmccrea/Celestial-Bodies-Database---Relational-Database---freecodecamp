--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    number_of_stars_in_billions integer NOT NULL,
    shape character varying(50),
    distance_light_years numeric(10,2)
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
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    alternative_names text,
    has_been_reached_by_probe boolean NOT NULL,
    planet_id integer
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
-- Name: placeholder; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.placeholder (
    placeholder_id integer NOT NULL,
    name character varying(60) NOT NULL,
    true_or_false boolean NOT NULL
);


ALTER TABLE public.placeholder OWNER TO freecodecamp;

--
-- Name: placeholder_placeholder_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.placeholder_placeholder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.placeholder_placeholder_id_seq OWNER TO freecodecamp;

--
-- Name: placeholder_placeholder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.placeholder_placeholder_id_seq OWNED BY public.placeholder.placeholder_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    number_of_moons integer,
    alternative_names text,
    has_been_reached_by_probe boolean NOT NULL,
    star_id integer
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
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    solar_mass numeric(4,0) NOT NULL,
    galaxy_id integer,
    alternative_names text
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: placeholder placeholder_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder ALTER COLUMN placeholder_id SET DEFAULT nextval('public.placeholder_placeholder_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 250, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 40, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 10, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 7, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 250, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'The Moon', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, true, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, true, 4);
INSERT INTO public.moon VALUES (4, 'Io', NULL, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', NULL, true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', NULL, false, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', NULL, false, 6);
INSERT INTO public.moon VALUES (11, 'Oberon', NULL, false, 7);
INSERT INTO public.moon VALUES (12, 'Ariel', NULL, false, 7);
INSERT INTO public.moon VALUES (13, 'Miranda', NULL, false, 7);
INSERT INTO public.moon VALUES (14, 'Triton', NULL, true, 8);
INSERT INTO public.moon VALUES (15, 'Proteus', NULL, false, 8);
INSERT INTO public.moon VALUES (16, 'Charon', NULL, true, 9);
INSERT INTO public.moon VALUES (17, 'Hydra', NULL, false, 9);
INSERT INTO public.moon VALUES (18, 'Ceres Moon', NULL, false, 10);
INSERT INTO public.moon VALUES (19, 'Hiʻiaka', NULL, false, 11);
INSERT INTO public.moon VALUES (20, 'Namaka', NULL, false, 11);


--
-- Data for Name: placeholder; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.placeholder VALUES (1, 'a', true);
INSERT INTO public.placeholder VALUES (2, 'b', true);
INSERT INTO public.placeholder VALUES (3, 'c', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, NULL, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, NULL, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Terra', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 'The Red Planet', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 79, 'Gas Giant', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 80, 'The Ringed Planet', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, NULL, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 5, NULL, true, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', 0, NULL, true, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, NULL, false, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 0, NULL, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 1, 1, 'The Sun');
INSERT INTO public.star VALUES (2, 'Alpha Canis Majoris', 2, 1, 'Sirius');
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1, 1, NULL);
INSERT INTO public.star VALUES (4, 'Alpha Orionis', 12, 1, 'Betelgeuse');
INSERT INTO public.star VALUES (5, 'Alpha Lyrae', 2, 1, 'Vega');
INSERT INTO public.star VALUES (6, 'Alpha Booetis', 1, 1, 'Arcturus');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: placeholder_placeholder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.placeholder_placeholder_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: placeholder placeholder_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder
    ADD CONSTRAINT placeholder_pkey PRIMARY KEY (placeholder_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: placeholder unique_placeholder_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.placeholder
    ADD CONSTRAINT unique_placeholder_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

