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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(60),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    shape character varying(30),
    age_in_billions_of_years numeric,
    discovery_year integer
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
    planet_id integer NOT NULL,
    temperature numeric,
    description text
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
    name character varying(60) NOT NULL,
    star_id integer NOT NULL,
    type character varying(30),
    has_rings boolean,
    days_in_a_year integer,
    currently_habitable_by_humans boolean
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
    galaxy_id integer NOT NULL,
    color character varying(30),
    magnitude numeric
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A*', 1);
INSERT INTO public.blackhole VALUES (2, 'Cygnus X-1', 1);
INSERT INTO public.blackhole VALUES (3, 'The Central Supermassive Black Hole in Andromeda (M31)', 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'spiral', 13.6, 1610);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral', 10.0, 964);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'spiral', 12.0, 1654);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'irregular', 13.2, 1519);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'irregular', 13.6, 1519);
INSERT INTO public.galaxy VALUES (6, 'Messier 81', 'spiral', 13.2, 1774);
INSERT INTO public.galaxy VALUES (7, 'Messier 82', 'irregular (starburst)', 13.2, 1774);
INSERT INTO public.galaxy VALUES (8, 'Canis Major Dwarf', 'irregular', 12.0, 2003);
INSERT INTO public.galaxy VALUES (9, 'Sagittarius Dwarf Elliptical', 'elliptical', 12.0, 1994);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 260, 'It influences ocean tides and stabilizes the axial tilt of Earth.');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 25, 'It is the larger and closer of the moons of Mars, and it has a short orbital period of just 7.66 hours.');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, -40, 'It is the smaller and more distant moon of Mars. Its smoother than Phobos due to a thick layer of regolith.');
INSERT INTO public.moon VALUES (4, 'Io', 5, -230, 'It is the most volcanically active body in the solar system, with over 400 active volcanoes. Its surface is dotted with sulfur and silicate lava flows.');
INSERT INTO public.moon VALUES (5, 'Europa', 5, -260, 'Its known for its smooth, icy surface. It is believed to have a subsurface ocean beneath its crush, making it a candidate for potential extraterrestrial life.');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, -260, 'Its the largest moon in the solar system, and it has a magnetic field and shows evidence of past tectonic activity.');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, -218, 'Its the most heavily cratered object in the solar system.');
INSERT INTO public.moon VALUES (8, 'Titan', 6, -290, 'Its the second largest moon in the solar system, with a thick nitrogen rich atmosphere and lakes of liquid methane and ethane on its surface.');
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, -330, 'Known for its geysers that eject water-ice particles into space, it has a relatively young and geologically active surface.');
INSERT INTO public.moon VALUES (10, 'Mimas', 6, -344, 'Often called the Death Star moon due to its large crater, Herschel, which makes it resemble the Star Wars Death Star.');
INSERT INTO public.moon VALUES (11, 'Rhea', 6, -281, 'Its the second largest moon of Saturn with a heavily cratered and icy surface.');
INSERT INTO public.moon VALUES (12, 'Dione', 6, -303, 'It has bright, wispy streaks on its surface, which are ice cliffs created by tectonic fractures.');
INSERT INTO public.moon VALUES (13, 'Miranda', 7, -305, 'Its known for its extreme and varied terrain, including giant canyons, terraced layers, and chevron patterns.');
INSERT INTO public.moon VALUES (14, 'Ariel', 7, -351, 'Its the brightest among the moons of Uranus with a surface covered by a mix of water, ice, and silicate rock.');
INSERT INTO public.moon VALUES (15, 'Umbriel', 7, -353, 'Its the darkest among the moons of Uranus with a heavily cratered surface and large, bright crater floors.');
INSERT INTO public.moon VALUES (16, 'Titania', 7, -333, 'Its the largest among the moons of Uranus with a mix of old, heavily cratered terrain and relatively young valleys formed by tectonic activity.');
INSERT INTO public.moon VALUES (17, 'Oberon', 7, -328, 'Its the second largest moon of Uranus with a heavily cratered surface and large, bright-rayed craters.');
INSERT INTO public.moon VALUES (18, 'Triton', 8, -391, 'Its the largest moon of Neptune with a retrograde orbit and geysers that suggest it is geologically active.');
INSERT INTO public.moon VALUES (19, 'Proteus', 8, -360, 'One of the largest moons of Neptune with an irregular shape and heavily cratered surface.');
INSERT INTO public.moon VALUES (20, 'Nereid', 8, -391, 'Its notable for its highly eccentric orbit, which varies its distance from Neptune significantly.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'terrestrial', false, 88, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'terrestrial', false, 225, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'terrestrial', false, 365, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'terrestrial', false, 687, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'gas giant', true, 4333, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'gas giant', true, 10759, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'ice giant', true, 30687, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'ice giant', true, 60190, false);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 1, 'terrestrial', false, 11, NULL);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 1, 'super-earth', NULL, 290, NULL);
INSERT INTO public.planet VALUES (11, 'Kepler-452b', 1, 'super-earth', NULL, 385, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', 1, 'earth-sized exoplanet', NULL, 130, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'yellow', -26.74);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 1, 'red', 0.42);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 'white-blue', -1.46);
INSERT INTO public.star VALUES (4, 'Alpha Andromedae', 2, 'blue-white', 2.06);
INSERT INTO public.star VALUES (5, 'Beta Andromedae', 2, 'red', 2.06);
INSERT INTO public.star VALUES (6, 'R136a1', 4, 'blue', 12.23);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


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
-- Name: blackhole blackhole_blackhole_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_blackhole_id_key UNIQUE (blackhole_id);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: blackhole blackhole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

