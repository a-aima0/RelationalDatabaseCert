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
-- Name: exoplanet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.exoplanet (
    exoplanet_id integer NOT NULL,
    name character varying NOT NULL,
    solar_mass integer
);


ALTER TABLE public.exoplanet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth numeric,
    solar_mass integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    solar_mass integer,
    has_life boolean,
    is_spherical boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    solar_mass integer,
    has_life boolean,
    is_spherical boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    solar_mass integer,
    has_life boolean,
    description text,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_id_seq OWNED BY public.exoplanet.exoplanet_id;


--
-- Name: exoplanet exoplanet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exoplanet ALTER COLUMN exoplanet_id SET DEFAULT nextval('public.sun_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: exoplanet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.exoplanet VALUES (1, 'Proxima Centauri b', 1);
INSERT INTO public.exoplanet VALUES (2, 'Kepler-186f', 1);
INSERT INTO public.exoplanet VALUES (3, 'Gliese 581g', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3, 3, 'Third-largest galaxy in the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 23, 6, 'Famous interacting spiral galaxy');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 31, 8, 'Galaxy with a bright central bulge and dark dust lane');
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 53, 70, 'Giant elliptical galaxy with a supermassive black hole at its center');
INSERT INTO public.galaxy VALUES (7, 'Centaurus A', 13, 50, 'Peculiar galaxy known for its powerful radio emissions');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 2, 5, 'Galaxy in which Earth is');
INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2.5, 10, 'Nearest spiral galaxy to the Milky Way');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0, false, true, 'The Moon is Earth’s only natural satellite.', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 0, false, true, 'Largest moon of Mars, with a heavily cratered surface.', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 0, false, true, 'Smaller and smoother moon of Mars.', 2);
INSERT INTO public.moon VALUES (4, 'Io', 0, false, true, 'Most geologically active moon in the Solar System.', 3);
INSERT INTO public.moon VALUES (5, 'Europa', 0, false, true, 'Has a subsurface ocean beneath its icy crust.', 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 0, false, true, 'Largest moon in the Solar System.', 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 0, false, true, 'Heavily cratered and ancient moon of Jupiter.', 3);
INSERT INTO public.moon VALUES (8, 'Titan', 0, false, true, 'Largest moon of Saturn with a thick atmosphere.', 4);
INSERT INTO public.moon VALUES (9, 'Rhea', 0, false, true, 'Second-largest moon of Saturn.', 4);
INSERT INTO public.moon VALUES (10, 'Iapetus', 0, false, true, 'Distinctive for its two-tone coloring.', 4);
INSERT INTO public.moon VALUES (11, 'Miranda', 0, false, true, 'Has a rugged and varied surface.', 5);
INSERT INTO public.moon VALUES (12, 'Ariel', 0, false, true, 'Has a relatively smooth surface.', 5);
INSERT INTO public.moon VALUES (13, 'Umbriel', 0, false, true, 'Darker and more heavily cratered.', 5);
INSERT INTO public.moon VALUES (14, 'Titania', 0, false, true, 'Largest moon of Uranus.', 5);
INSERT INTO public.moon VALUES (15, 'Oberon', 0, false, true, 'Second-largest moon of Uranus.', 5);
INSERT INTO public.moon VALUES (16, 'Triton', 0, false, true, 'Largest moon of Neptune with geysers.', 6);
INSERT INTO public.moon VALUES (17, 'Nereid', 0, false, true, 'Highly elliptical orbit around Neptune.', 6);
INSERT INTO public.moon VALUES (18, 'Proteus', 0, false, true, 'Large, irregularly shaped moon of Neptune.', 6);
INSERT INTO public.moon VALUES (19, 'Charon', 0, false, true, 'Largest moon of Pluto, closely orbiting with its planet.', 7);
INSERT INTO public.moon VALUES (20, 'Styx', 0, false, true, 'Smallest known moon of Pluto.', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, true, 'The home planet of humans.', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 0, false, true, 'Known as the Red Planet.', 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 318, false, true, 'The largest planet in the Solar System.', 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 95, false, true, 'Famous for its rings.', 1);
INSERT INTO public.planet VALUES (5, 'Venus', 1, false, true, 'The hottest planet in the Solar System.', 1);
INSERT INTO public.planet VALUES (6, 'Uranus', 15, false, true, 'An ice giant with a unique tilt.', 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 17, false, true, 'Known for its deep blue color.', 1);
INSERT INTO public.planet VALUES (8, 'Mercury', 0, false, true, 'The closest planet to the Sun.', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 0, false, true, 'Dwarf planet with a complex moon system.', 1);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 2, false, true, 'Often called Earth’s cousin.', 2);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 1, false, true, 'Closest known exoplanet.', 2);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 1, false, true, 'First exoplanet discovered transiting its star.', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 0, false, 'Closest known star to the Sun', true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 2, false, 'Brightest star in the night sky', true, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 20, false, 'One of the largest stars visible to the naked eye', true, 3);
INSERT INTO public.star VALUES (4, 'Rigel', 21, false, 'Brightest star in the Orion constellation', true, 4);
INSERT INTO public.star VALUES (5, 'Vega', 2, false, 'One of the brightest stars in the Lyra constellation', true, 5);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 1, false, 'Part of the closest star system to the Sun', true, 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_id_seq', 3, true);


--
-- Name: exoplanet exoplanet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exoplanet
    ADD CONSTRAINT exoplanet_name_unique UNIQUE (name);


--
-- Name: exoplanet exoplanet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exoplanet
    ADD CONSTRAINT exoplanet_pkey PRIMARY KEY (exoplanet_id);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

