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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    u_id integer
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
    u_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 677, 1);
INSERT INTO public.games VALUES (2, 386, 1);
INSERT INTO public.games VALUES (3, 394, 2);
INSERT INTO public.games VALUES (4, 28, 2);
INSERT INTO public.games VALUES (5, 463, 1);
INSERT INTO public.games VALUES (6, 715, 1);
INSERT INTO public.games VALUES (7, 859, 1);
INSERT INTO public.games VALUES (8, 851, 3);
INSERT INTO public.games VALUES (9, 929, 3);
INSERT INTO public.games VALUES (10, 332, 4);
INSERT INTO public.games VALUES (11, 965, 4);
INSERT INTO public.games VALUES (12, 412, 3);
INSERT INTO public.games VALUES (13, 651, 3);
INSERT INTO public.games VALUES (14, 330, 3);
INSERT INTO public.games VALUES (15, 15, 5);
INSERT INTO public.games VALUES (16, 920, 6);
INSERT INTO public.games VALUES (17, 711, 6);
INSERT INTO public.games VALUES (18, 350, 7);
INSERT INTO public.games VALUES (19, 683, 7);
INSERT INTO public.games VALUES (20, 878, 6);
INSERT INTO public.games VALUES (21, 167, 6);
INSERT INTO public.games VALUES (22, 928, 6);
INSERT INTO public.games VALUES (23, 381, 8);
INSERT INTO public.games VALUES (24, 798, 8);
INSERT INTO public.games VALUES (25, 794, 9);
INSERT INTO public.games VALUES (26, 982, 9);
INSERT INTO public.games VALUES (27, 241, 8);
INSERT INTO public.games VALUES (28, 398, 8);
INSERT INTO public.games VALUES (29, 428, 8);
INSERT INTO public.games VALUES (30, 936, 10);
INSERT INTO public.games VALUES (31, 547, 10);
INSERT INTO public.games VALUES (32, 352, 11);
INSERT INTO public.games VALUES (33, 967, 11);
INSERT INTO public.games VALUES (34, 272, 10);
INSERT INTO public.games VALUES (35, 480, 10);
INSERT INTO public.games VALUES (36, 115, 10);
INSERT INTO public.games VALUES (37, 176, 12);
INSERT INTO public.games VALUES (38, 724, 12);
INSERT INTO public.games VALUES (39, 310, 13);
INSERT INTO public.games VALUES (40, 532, 13);
INSERT INTO public.games VALUES (41, 194, 12);
INSERT INTO public.games VALUES (42, 546, 12);
INSERT INTO public.games VALUES (43, 581, 12);
INSERT INTO public.games VALUES (44, 127, 14);
INSERT INTO public.games VALUES (45, 520, 14);
INSERT INTO public.games VALUES (46, 193, 15);
INSERT INTO public.games VALUES (47, 89, 15);
INSERT INTO public.games VALUES (48, 354, 14);
INSERT INTO public.games VALUES (49, 801, 14);
INSERT INTO public.games VALUES (50, 437, 14);
INSERT INTO public.games VALUES (51, 754, 16);
INSERT INTO public.games VALUES (52, 933, 16);
INSERT INTO public.games VALUES (53, 320, 17);
INSERT INTO public.games VALUES (54, 125, 17);
INSERT INTO public.games VALUES (55, 841, 16);
INSERT INTO public.games VALUES (56, 182, 16);
INSERT INTO public.games VALUES (57, 67, 16);
INSERT INTO public.games VALUES (58, 106, 18);
INSERT INTO public.games VALUES (59, 551, 18);
INSERT INTO public.games VALUES (60, 910, 19);
INSERT INTO public.games VALUES (61, 805, 19);
INSERT INTO public.games VALUES (62, 315, 18);
INSERT INTO public.games VALUES (63, 591, 18);
INSERT INTO public.games VALUES (64, 393, 18);
INSERT INTO public.games VALUES (65, 9, 5);
INSERT INTO public.games VALUES (66, 9, 5);
INSERT INTO public.games VALUES (67, 2, 5);
INSERT INTO public.games VALUES (68, 20, 5);
INSERT INTO public.games VALUES (69, 14, 5);
INSERT INTO public.games VALUES (70, 9, 5);
INSERT INTO public.games VALUES (71, 242, 20);
INSERT INTO public.games VALUES (72, 31, 20);
INSERT INTO public.games VALUES (73, 449, 21);
INSERT INTO public.games VALUES (74, 179, 21);
INSERT INTO public.games VALUES (75, 163, 20);
INSERT INTO public.games VALUES (76, 292, 20);
INSERT INTO public.games VALUES (77, 465, 20);
INSERT INTO public.games VALUES (78, 4, 5);
INSERT INTO public.games VALUES (79, 297, 22);
INSERT INTO public.games VALUES (80, 514, 22);
INSERT INTO public.games VALUES (81, 928, 23);
INSERT INTO public.games VALUES (82, 44, 23);
INSERT INTO public.games VALUES (83, 896, 22);
INSERT INTO public.games VALUES (84, 855, 22);
INSERT INTO public.games VALUES (85, 870, 22);
INSERT INTO public.games VALUES (86, 983, 24);
INSERT INTO public.games VALUES (87, 951, 24);
INSERT INTO public.games VALUES (88, 307, 25);
INSERT INTO public.games VALUES (89, 925, 25);
INSERT INTO public.games VALUES (90, 507, 24);
INSERT INTO public.games VALUES (91, 596, 24);
INSERT INTO public.games VALUES (92, 32, 24);
INSERT INTO public.games VALUES (93, 710, 26);
INSERT INTO public.games VALUES (94, 124, 26);
INSERT INTO public.games VALUES (95, 791, 27);
INSERT INTO public.games VALUES (96, 777, 27);
INSERT INTO public.games VALUES (97, 104, 26);
INSERT INTO public.games VALUES (98, 691, 26);
INSERT INTO public.games VALUES (99, 973, 26);
INSERT INTO public.games VALUES (100, 995, 28);
INSERT INTO public.games VALUES (101, 783, 28);
INSERT INTO public.games VALUES (102, 320, 29);
INSERT INTO public.games VALUES (103, 700, 29);
INSERT INTO public.games VALUES (104, 120, 28);
INSERT INTO public.games VALUES (105, 808, 28);
INSERT INTO public.games VALUES (106, 295, 28);
INSERT INTO public.games VALUES (107, 46, 30);
INSERT INTO public.games VALUES (108, 722, 30);
INSERT INTO public.games VALUES (109, 351, 31);
INSERT INTO public.games VALUES (110, 762, 31);
INSERT INTO public.games VALUES (111, 486, 30);
INSERT INTO public.games VALUES (112, 48, 30);
INSERT INTO public.games VALUES (113, 502, 30);
INSERT INTO public.games VALUES (114, 239, 32);
INSERT INTO public.games VALUES (115, 138, 32);
INSERT INTO public.games VALUES (116, 983, 33);
INSERT INTO public.games VALUES (117, 509, 33);
INSERT INTO public.games VALUES (118, 39, 32);
INSERT INTO public.games VALUES (119, 10, 32);
INSERT INTO public.games VALUES (120, 799, 32);
INSERT INTO public.games VALUES (121, 396, 34);
INSERT INTO public.games VALUES (122, 437, 34);
INSERT INTO public.games VALUES (123, 576, 35);
INSERT INTO public.games VALUES (124, 507, 35);
INSERT INTO public.games VALUES (125, 270, 34);
INSERT INTO public.games VALUES (126, 66, 34);
INSERT INTO public.games VALUES (127, 179, 34);
INSERT INTO public.games VALUES (128, 592, 36);
INSERT INTO public.games VALUES (129, 433, 36);
INSERT INTO public.games VALUES (130, 274, 37);
INSERT INTO public.games VALUES (131, 788, 37);
INSERT INTO public.games VALUES (132, 926, 36);
INSERT INTO public.games VALUES (133, 749, 36);
INSERT INTO public.games VALUES (134, 496, 36);
INSERT INTO public.games VALUES (135, 810, 38);
INSERT INTO public.games VALUES (136, 731, 38);
INSERT INTO public.games VALUES (137, 628, 39);
INSERT INTO public.games VALUES (138, 879, 39);
INSERT INTO public.games VALUES (139, 991, 38);
INSERT INTO public.games VALUES (140, 711, 38);
INSERT INTO public.games VALUES (141, 348, 38);
INSERT INTO public.games VALUES (142, 28, 40);
INSERT INTO public.games VALUES (143, 839, 40);
INSERT INTO public.games VALUES (144, 448, 41);
INSERT INTO public.games VALUES (145, 67, 41);
INSERT INTO public.games VALUES (146, 891, 40);
INSERT INTO public.games VALUES (147, 53, 40);
INSERT INTO public.games VALUES (148, 239, 40);
INSERT INTO public.games VALUES (149, 458, 42);
INSERT INTO public.games VALUES (150, 200, 42);
INSERT INTO public.games VALUES (151, 513, 43);
INSERT INTO public.games VALUES (152, 104, 43);
INSERT INTO public.games VALUES (153, 856, 42);
INSERT INTO public.games VALUES (154, 915, 42);
INSERT INTO public.games VALUES (155, 687, 42);
INSERT INTO public.games VALUES (156, 12, 5);
INSERT INTO public.games VALUES (157, 965, 44);
INSERT INTO public.games VALUES (158, 620, 44);
INSERT INTO public.games VALUES (159, 207, 45);
INSERT INTO public.games VALUES (160, 490, 45);
INSERT INTO public.games VALUES (161, 155, 44);
INSERT INTO public.games VALUES (162, 608, 44);
INSERT INTO public.games VALUES (163, 258, 44);
INSERT INTO public.games VALUES (164, 10, 46);
INSERT INTO public.games VALUES (165, 976, 47);
INSERT INTO public.games VALUES (166, 119, 47);
INSERT INTO public.games VALUES (167, 64, 48);
INSERT INTO public.games VALUES (168, 962, 48);
INSERT INTO public.games VALUES (169, 628, 47);
INSERT INTO public.games VALUES (170, 470, 47);
INSERT INTO public.games VALUES (171, 404, 47);
INSERT INTO public.games VALUES (172, 801, 49);
INSERT INTO public.games VALUES (173, 463, 49);
INSERT INTO public.games VALUES (174, 361, 50);
INSERT INTO public.games VALUES (175, 347, 50);
INSERT INTO public.games VALUES (176, 166, 49);
INSERT INTO public.games VALUES (177, 135, 49);
INSERT INTO public.games VALUES (178, 193, 49);
INSERT INTO public.games VALUES (179, 14, 51);
INSERT INTO public.games VALUES (180, 486, 52);
INSERT INTO public.games VALUES (181, 944, 52);
INSERT INTO public.games VALUES (182, 680, 53);
INSERT INTO public.games VALUES (183, 362, 53);
INSERT INTO public.games VALUES (184, 480, 52);
INSERT INTO public.games VALUES (185, 805, 52);
INSERT INTO public.games VALUES (186, 630, 52);
INSERT INTO public.games VALUES (187, 602, 54);
INSERT INTO public.games VALUES (188, 822, 54);
INSERT INTO public.games VALUES (189, 700, 55);
INSERT INTO public.games VALUES (190, 337, 55);
INSERT INTO public.games VALUES (191, 660, 54);
INSERT INTO public.games VALUES (192, 626, 54);
INSERT INTO public.games VALUES (193, 757, 54);
INSERT INTO public.games VALUES (194, 172, 56);
INSERT INTO public.games VALUES (195, 228, 56);
INSERT INTO public.games VALUES (196, 2, 57);
INSERT INTO public.games VALUES (197, 293, 57);
INSERT INTO public.games VALUES (198, 414, 56);
INSERT INTO public.games VALUES (199, 284, 56);
INSERT INTO public.games VALUES (200, 764, 56);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1673883456433');
INSERT INTO public.users VALUES (2, 'user_1673883456432');
INSERT INTO public.users VALUES (3, 'user_1673883495195');
INSERT INTO public.users VALUES (4, 'user_1673883495194');
INSERT INTO public.users VALUES (5, 'Marwan');
INSERT INTO public.users VALUES (6, 'user_1673883641129');
INSERT INTO public.users VALUES (7, 'user_1673883641128');
INSERT INTO public.users VALUES (8, 'user_1673883652559');
INSERT INTO public.users VALUES (9, 'user_1673883652558');
INSERT INTO public.users VALUES (10, 'user_1673883747950');
INSERT INTO public.users VALUES (11, 'user_1673883747949');
INSERT INTO public.users VALUES (12, 'user_1673883798011');
INSERT INTO public.users VALUES (13, 'user_1673883798010');
INSERT INTO public.users VALUES (14, 'user_1673883819115');
INSERT INTO public.users VALUES (15, 'user_1673883819114');
INSERT INTO public.users VALUES (16, 'user_1673883888513');
INSERT INTO public.users VALUES (17, 'user_1673883888512');
INSERT INTO public.users VALUES (18, 'user_1673883981947');
INSERT INTO public.users VALUES (19, 'user_1673883981946');
INSERT INTO public.users VALUES (20, 'user_1673884689440');
INSERT INTO public.users VALUES (21, 'user_1673884689439');
INSERT INTO public.users VALUES (22, 'user_1673884914341');
INSERT INTO public.users VALUES (23, 'user_1673884914340');
INSERT INTO public.users VALUES (24, 'user_1673885356855');
INSERT INTO public.users VALUES (25, 'user_1673885356854');
INSERT INTO public.users VALUES (26, 'user_1673885375415');
INSERT INTO public.users VALUES (27, 'user_1673885375414');
INSERT INTO public.users VALUES (28, 'user_1673885474863');
INSERT INTO public.users VALUES (29, 'user_1673885474861');
INSERT INTO public.users VALUES (30, 'user_1673885526459');
INSERT INTO public.users VALUES (31, 'user_1673885526458');
INSERT INTO public.users VALUES (32, 'user_1673885630558');
INSERT INTO public.users VALUES (33, 'user_1673885630557');
INSERT INTO public.users VALUES (34, 'user_1673885655665');
INSERT INTO public.users VALUES (35, 'user_1673885655664');
INSERT INTO public.users VALUES (36, 'user_1673885740229');
INSERT INTO public.users VALUES (37, 'user_1673885740228');
INSERT INTO public.users VALUES (38, 'user_1673885780756');
INSERT INTO public.users VALUES (39, 'user_1673885780755');
INSERT INTO public.users VALUES (40, 'user_1673960596612');
INSERT INTO public.users VALUES (41, 'user_1673960596611');
INSERT INTO public.users VALUES (42, 'user_1673963197935');
INSERT INTO public.users VALUES (43, 'user_1673963197934');
INSERT INTO public.users VALUES (44, 'user_1673963538548');
INSERT INTO public.users VALUES (45, 'user_1673963538547');
INSERT INTO public.users VALUES (46, 'asad');
INSERT INTO public.users VALUES (47, 'user_1673963683907');
INSERT INTO public.users VALUES (48, 'user_1673963683906');
INSERT INTO public.users VALUES (49, 'user_1673963768758');
INSERT INTO public.users VALUES (50, 'user_1673963768757');
INSERT INTO public.users VALUES (51, 'MA');
INSERT INTO public.users VALUES (52, 'user_1673963917620');
INSERT INTO public.users VALUES (53, 'user_1673963917619');
INSERT INTO public.users VALUES (54, 'user_1673963976279');
INSERT INTO public.users VALUES (55, 'user_1673963976278');
INSERT INTO public.users VALUES (56, 'user_1673963993146');
INSERT INTO public.users VALUES (57, 'user_1673963993145');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 200, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 57, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

