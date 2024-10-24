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
-- Name: anomaly; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.anomaly (
    anomaly_id integer NOT NULL,
    name character varying(60) NOT NULL,
    date_occurred date
);


ALTER TABLE public.anomaly OWNER TO freecodecamp;

--
-- Name: anomaly_anomaly_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.anomaly_anomaly_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anomaly_anomaly_id_seq OWNER TO freecodecamp;

--
-- Name: anomaly_anomaly_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.anomaly_anomaly_id_seq OWNED BY public.anomaly.anomaly_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_visible boolean,
    is_spiral boolean,
    description text,
    year_discovered integer,
    age integer,
    distance numeric
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
    name character varying(40) NOT NULL,
    planet_id integer,
    has_water boolean,
    description text,
    year_discovered integer,
    age integer,
    distance numeric
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
    name character varying(40) NOT NULL,
    star_id integer,
    supports_life boolean,
    description text,
    year_discovered integer,
    age integer,
    distance numeric
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
    name character varying(40) NOT NULL,
    galaxy_id integer,
    is_dying boolean,
    description text,
    year_discovered integer,
    age integer,
    distance numeric
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
-- Name: anomaly anomaly_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anomaly ALTER COLUMN anomaly_id SET DEFAULT nextval('public.anomaly_anomaly_id_seq'::regclass);


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
-- Data for Name: anomaly; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.anomaly VALUES (1, 'Event-231', '1965-03-21');
INSERT INTO public.anomaly VALUES (2, 'Event-Y2K', '1999-12-31');
INSERT INTO public.anomaly VALUES (3, 'Event-2K12', '2012-12-12');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, true, 'Home Galaxy', 0, 5, 0.0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, true, 'Neighboring Galaxy', 1900, 5, 400.5);
INSERT INTO public.galaxy VALUES (3, 'Gaia', true, false, 'Unexplored Galaxy', 1920, 4, 620.4);
INSERT INTO public.galaxy VALUES (4, 'Prometheus', false, false, 'Newly Discovered Galaxy', 2000, 7, 1000.45);
INSERT INTO public.galaxy VALUES (5, 'Archimedes', true, true, 'Golden Galaxy', 1957, 12, 1407.58);
INSERT INTO public.galaxy VALUES (6, 'Nova', false, false, 'Black Hole Galaxy', 2020, 2, 2410.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M5', 5, false, '4 Star', 1919, 10, 232.32);
INSERT INTO public.moon VALUES (2, 'M4', 11, true, 'sunX', 1988, 21, 1300.0);
INSERT INTO public.moon VALUES (3, 'M3', 13, false, 'sunD', 1966, 11, 2354.21);
INSERT INTO public.moon VALUES (4, 'M2', 12, true, '!!!!', 2009, 8, 129.12);
INSERT INTO public.moon VALUES (5, 'M1', 10, true, 'm1', 2021, 10, 2323.23);
INSERT INTO public.moon VALUES (6, 'M10', 11, false, '4 Star', 1919, 10, 232.32);
INSERT INTO public.moon VALUES (7, 'M9', 13, true, 'sunX', 1988, 21, 1300.0);
INSERT INTO public.moon VALUES (8, 'M8', 12, false, 'sunD', 1966, 11, 2354.21);
INSERT INTO public.moon VALUES (9, 'M7', 11, true, '!!!!', 2009, 8, 129.12);
INSERT INTO public.moon VALUES (10, 'M6', 15, true, 'm1', 2021, 10, 2323.23);
INSERT INTO public.moon VALUES (16, 'M15', 16, false, '4 Star', 1919, 10, 232.32);
INSERT INTO public.moon VALUES (17, 'M14', 8, true, 'sunX', 1988, 21, 1300.0);
INSERT INTO public.moon VALUES (18, 'M13', 7, false, 'sunD', 1966, 11, 2354.21);
INSERT INTO public.moon VALUES (19, 'M12', 6, true, '!!!!', 2009, 8, 129.12);
INSERT INTO public.moon VALUES (20, 'M11', 5, true, 'm1', 2021, 10, 2323.23);
INSERT INTO public.moon VALUES (21, 'M20', 16, false, '4 Star', 1919, 10, 232.32);
INSERT INTO public.moon VALUES (22, 'M19', 8, true, 'sunX', 1988, 21, 1300.0);
INSERT INTO public.moon VALUES (23, 'M18', 7, false, 'sunD', 1966, 11, 2354.21);
INSERT INTO public.moon VALUES (24, 'M17', 6, true, '!!!!', 2009, 8, 129.12);
INSERT INTO public.moon VALUES (25, 'M16', 5, true, 'm1', 2021, 10, 2323.23);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'Sun4', 3, false, '4 Star', 1919, 10, 232.32);
INSERT INTO public.planet VALUES (6, 'SunX', 7, true, 'sunX', 1988, 21, 1300.0);
INSERT INTO public.planet VALUES (7, 'Sun D', 8, false, 'sunD', 1966, 11, 2354.21);
INSERT INTO public.planet VALUES (8, 'P!', 2, true, '!!!!', 2009, 8, 129.12);
INSERT INTO public.planet VALUES (10, 'P4', 2, false, '4 Star', 1919, 10, 232.32);
INSERT INTO public.planet VALUES (11, 'P3', 1, true, 'sunX', 1988, 21, 1300.0);
INSERT INTO public.planet VALUES (12, 'P2', 7, false, 'sunD', 1966, 11, 2354.21);
INSERT INTO public.planet VALUES (13, 'P1', 9, true, '!!!!', 2009, 8, 129.12);
INSERT INTO public.planet VALUES (14, 'PD', 8, false, '4 Star', 1919, 10, 232.32);
INSERT INTO public.planet VALUES (15, 'PC', 1, true, 'sunX', 1988, 21, 1300.0);
INSERT INTO public.planet VALUES (16, 'PB', 7, false, 'sunD', 1966, 11, 2354.21);
INSERT INTO public.planet VALUES (17, 'PA', 9, true, '!!!!', 2009, 8, 129.12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, false, 'Home Star', 0, 10, 0);
INSERT INTO public.star VALUES (2, 'Sun2', 2, true, 'sun2', 1900, 21, 200.0);
INSERT INTO public.star VALUES (3, 'Sun 3', 5, true, 'sun3', 1909, 11, 454.21);
INSERT INTO public.star VALUES (7, 'Sun4', 3, false, '4 Star', 1919, 10, 232.32);
INSERT INTO public.star VALUES (8, 'SunX', 4, true, 'sunX', 1988, 21, 1300.0);
INSERT INTO public.star VALUES (9, 'Sun D', 6, false, 'sunD', 1966, 11, 2354.21);


--
-- Name: anomaly_anomaly_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.anomaly_anomaly_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: anomaly anomaly_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anomaly
    ADD CONSTRAINT anomaly_pkey PRIMARY KEY (anomaly_id);


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
-- Name: anomaly name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.anomaly
    ADD CONSTRAINT name_unique UNIQUE (name);


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

