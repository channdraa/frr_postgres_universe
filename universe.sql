--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
-- Name: dwarfplanet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarfplanet (
    dwarfplanet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_moon integer NOT NULL,
    note text,
    star_id integer
);


ALTER TABLE public.dwarfplanet OWNER TO freecodecamp;

--
-- Name: dwarfplanet_dwarfplanet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarfplanet_dwarfplanet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarfplanet_dwarfplanet_id_seq OWNER TO freecodecamp;

--
-- Name: dwarfplanet_dwarfplanet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarfplanet_dwarfplanet_id_seq OWNED BY public.dwarfplanet.dwarfplanet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    constellation text NOT NULL,
    num_of_stars_in_billions numeric(5,2)
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
    name character varying(30) NOT NULL,
    diameter_in_km integer NOT NULL,
    orbital_period text,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_moon integer NOT NULL,
    mean_tempt_in_c integer NOT NULL,
    ring_system boolean,
    glb_mgntc_field boolean,
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
    name character varying(30) NOT NULL,
    method text NOT NULL,
    notes text,
    galaxy_id integer
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
-- Name: dwarfplanet dwarfplanet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarfplanet ALTER COLUMN dwarfplanet_id SET DEFAULT nextval('public.dwarfplanet_dwarfplanet_id_seq'::regclass);


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
-- Data for Name: dwarfplanet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarfplanet VALUES (1, 'Haumea', 2, 'none', 1);
INSERT INTO public.dwarfplanet VALUES (2, 'Quaoar', 1, 'none', 1);
INSERT INTO public.dwarfplanet VALUES (3, 'Gongong', 1, 'none', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sbc', 'Sagittarius', 400.00);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'Sa', 'Andromeda', 400.00);
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxies', 'Sb', 'Corvus', 400.00);
INSERT INTO public.galaxy VALUES (4, 'Backward Galaxy', 'SA', 'Centaurus', 400.00);
INSERT INTO public.galaxy VALUES (5, 'Bear Paw Galaxy', 'SB', 'Lynx', 400.00);
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 'Sa', 'Coma Berenices', 400.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth Moon', 1737, '1 D', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, '7.66 H', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 13, '30.35 H', 4);
INSERT INTO public.moon VALUES (4, 'Io', 3100, '1769 D', 5);
INSERT INTO public.moon VALUES (5, 'Europa', 3100, '3551 D', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3100, '7155 D', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 3100, '16689D', 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 396, '0.9 D', 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 504, '1.4 D', 6);
INSERT INTO public.moon VALUES (10, 'Tethys', 1062, '1.9 D', 6);
INSERT INTO public.moon VALUES (11, 'Dione', 1123, '2.7 D', 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 1527, '4.5 D', 6);
INSERT INTO public.moon VALUES (13, 'Titan', 5149, '16 D', 6);
INSERT INTO public.moon VALUES (14, 'Lapetus', 1470, '79 D', 6);
INSERT INTO public.moon VALUES (15, 'Cordelia', 1800, '0.3 D', 7);
INSERT INTO public.moon VALUES (16, 'Ophelia', 2052, '0.37 D', 7);
INSERT INTO public.moon VALUES (17, 'Bianca', 2944, '0.43 D', 7);
INSERT INTO public.moon VALUES (18, 'Cressida', 6808, '0.46 D', 7);
INSERT INTO public.moon VALUES (19, 'Desdemona', 4860, '0.47 D', 7);
INSERT INTO public.moon VALUES (20, 'Juliet', 752, '0.49 D', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 167, false, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, 464, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 15, false, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, -65, false, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 95, -110, true, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 146, -140, true, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, -195, true, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, -200, true, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 5, -225, false, false, 1);
INSERT INTO public.planet VALUES (10, '11 Comae Berenices b', 0, 0, false, false, 1);
INSERT INTO public.planet VALUES (11, '11 Ursae Minoris b', 0, 0, false, false, 1);
INSERT INTO public.planet VALUES (12, '14 Andromedae b', 0, 0, false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'AD', 'our sun', 1);
INSERT INTO public.star VALUES (2, 'VY Canis Majoris', 'AD', 'none', 1);
INSERT INTO public.star VALUES (3, 'CM Velorum', 'L/Teff', 'none', 1);
INSERT INTO public.star VALUES (4, 'AH Scorpii', 'AD', 'none', 1);
INSERT INTO public.star VALUES (5, 'AS Cephei', 'L/Teff', 'none', 1);
INSERT INTO public.star VALUES (6, 'S Persei', 'AD', 'none', 1);


--
-- Name: dwarfplanet_dwarfplanet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarfplanet_dwarfplanet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dwarfplanet dwarfplanet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarfplanet
    ADD CONSTRAINT dwarfplanet_name_key UNIQUE (name);


--
-- Name: dwarfplanet dwarfplanet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarfplanet
    ADD CONSTRAINT dwarfplanet_pkey PRIMARY KEY (dwarfplanet_id);


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
-- Name: dwarfplanet dwarfplanet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarfplanet
    ADD CONSTRAINT dwarfplanet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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
