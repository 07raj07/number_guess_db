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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 4, 949);
INSERT INTO public.games VALUES (2, 4, 816);
INSERT INTO public.games VALUES (3, 5, 903);
INSERT INTO public.games VALUES (4, 5, 46);
INSERT INTO public.games VALUES (5, 4, 371);
INSERT INTO public.games VALUES (6, 4, 241);
INSERT INTO public.games VALUES (7, 4, 652);
INSERT INTO public.games VALUES (8, 6, 10);
INSERT INTO public.games VALUES (9, 7, 899);
INSERT INTO public.games VALUES (10, 7, 675);
INSERT INTO public.games VALUES (11, 8, 954);
INSERT INTO public.games VALUES (12, 8, 459);
INSERT INTO public.games VALUES (13, 7, 866);
INSERT INTO public.games VALUES (14, 7, 364);
INSERT INTO public.games VALUES (15, 7, 506);
INSERT INTO public.games VALUES (16, 9, 860);
INSERT INTO public.games VALUES (17, 9, 302);
INSERT INTO public.games VALUES (18, 10, 637);
INSERT INTO public.games VALUES (19, 10, 328);
INSERT INTO public.games VALUES (20, 9, 294);
INSERT INTO public.games VALUES (21, 9, 33);
INSERT INTO public.games VALUES (22, 9, 213);
INSERT INTO public.games VALUES (23, 6, 10);
INSERT INTO public.games VALUES (24, 11, 402);
INSERT INTO public.games VALUES (25, 11, 109);
INSERT INTO public.games VALUES (26, 12, 713);
INSERT INTO public.games VALUES (27, 12, 946);
INSERT INTO public.games VALUES (28, 11, 76);
INSERT INTO public.games VALUES (29, 11, 617);
INSERT INTO public.games VALUES (30, 11, 150);
INSERT INTO public.games VALUES (31, 13, 871);
INSERT INTO public.games VALUES (32, 13, 362);
INSERT INTO public.games VALUES (33, 14, 726);
INSERT INTO public.games VALUES (34, 14, 782);
INSERT INTO public.games VALUES (35, 13, 409);
INSERT INTO public.games VALUES (36, 13, 469);
INSERT INTO public.games VALUES (37, 13, 139);
INSERT INTO public.games VALUES (38, 15, 728);
INSERT INTO public.games VALUES (39, 15, 209);
INSERT INTO public.games VALUES (40, 16, 577);
INSERT INTO public.games VALUES (41, 16, 660);
INSERT INTO public.games VALUES (42, 15, 720);
INSERT INTO public.games VALUES (43, 15, 995);
INSERT INTO public.games VALUES (44, 15, 680);
INSERT INTO public.games VALUES (45, 6, 6);
INSERT INTO public.games VALUES (46, 17, 568);
INSERT INTO public.games VALUES (47, 17, 706);
INSERT INTO public.games VALUES (48, 18, 718);
INSERT INTO public.games VALUES (49, 18, 144);
INSERT INTO public.games VALUES (50, 17, 752);
INSERT INTO public.games VALUES (51, 17, 196);
INSERT INTO public.games VALUES (52, 17, 888);
INSERT INTO public.games VALUES (53, 19, 152);
INSERT INTO public.games VALUES (54, 19, 869);
INSERT INTO public.games VALUES (55, 20, 879);
INSERT INTO public.games VALUES (56, 20, 209);
INSERT INTO public.games VALUES (57, 19, 665);
INSERT INTO public.games VALUES (58, 19, 856);
INSERT INTO public.games VALUES (59, 19, 757);
INSERT INTO public.games VALUES (60, 21, 17);
INSERT INTO public.games VALUES (61, 21, 251);
INSERT INTO public.games VALUES (62, 22, 753);
INSERT INTO public.games VALUES (63, 22, 956);
INSERT INTO public.games VALUES (64, 21, 443);
INSERT INTO public.games VALUES (65, 21, 534);
INSERT INTO public.games VALUES (66, 21, 659);
INSERT INTO public.games VALUES (67, 23, 252);
INSERT INTO public.games VALUES (68, 23, 267);
INSERT INTO public.games VALUES (69, 24, 377);
INSERT INTO public.games VALUES (70, 24, 686);
INSERT INTO public.games VALUES (71, 23, 962);
INSERT INTO public.games VALUES (72, 23, 151);
INSERT INTO public.games VALUES (73, 23, 30);
INSERT INTO public.games VALUES (74, 25, 566);
INSERT INTO public.games VALUES (75, 25, 449);
INSERT INTO public.games VALUES (76, 26, 61);
INSERT INTO public.games VALUES (77, 26, 88);
INSERT INTO public.games VALUES (78, 25, 621);
INSERT INTO public.games VALUES (79, 25, 940);
INSERT INTO public.games VALUES (80, 25, 849);
INSERT INTO public.games VALUES (81, 27, 822);
INSERT INTO public.games VALUES (82, 27, 858);
INSERT INTO public.games VALUES (83, 28, 712);
INSERT INTO public.games VALUES (84, 28, 270);
INSERT INTO public.games VALUES (85, 27, 805);
INSERT INTO public.games VALUES (86, 27, 843);
INSERT INTO public.games VALUES (87, 27, 581);
INSERT INTO public.games VALUES (88, 29, 762);
INSERT INTO public.games VALUES (89, 29, 287);
INSERT INTO public.games VALUES (90, 30, 804);
INSERT INTO public.games VALUES (91, 30, 283);
INSERT INTO public.games VALUES (92, 29, 900);
INSERT INTO public.games VALUES (93, 29, 958);
INSERT INTO public.games VALUES (94, 29, 466);
INSERT INTO public.games VALUES (95, 31, 81);
INSERT INTO public.games VALUES (96, 32, 862);
INSERT INTO public.games VALUES (97, 32, 153);
INSERT INTO public.games VALUES (98, 31, 857);
INSERT INTO public.games VALUES (99, 31, 858);
INSERT INTO public.games VALUES (100, 31, 801);
INSERT INTO public.games VALUES (101, 33, 194);
INSERT INTO public.games VALUES (102, 33, 188);
INSERT INTO public.games VALUES (103, 34, 953);
INSERT INTO public.games VALUES (104, 34, 69);
INSERT INTO public.games VALUES (105, 33, 703);
INSERT INTO public.games VALUES (106, 33, 138);
INSERT INTO public.games VALUES (107, 33, 701);
INSERT INTO public.games VALUES (108, 35, 802);
INSERT INTO public.games VALUES (109, 35, 607);
INSERT INTO public.games VALUES (110, 36, 298);
INSERT INTO public.games VALUES (111, 36, 609);
INSERT INTO public.games VALUES (112, 35, 819);
INSERT INTO public.games VALUES (113, 35, 46);
INSERT INTO public.games VALUES (114, 35, 984);
INSERT INTO public.games VALUES (115, 37, 503);
INSERT INTO public.games VALUES (116, 37, 111);
INSERT INTO public.games VALUES (117, 38, 203);
INSERT INTO public.games VALUES (118, 38, 223);
INSERT INTO public.games VALUES (119, 37, 73);
INSERT INTO public.games VALUES (120, 37, 707);
INSERT INTO public.games VALUES (121, 37, 154);
INSERT INTO public.games VALUES (122, 39, 449);
INSERT INTO public.games VALUES (123, 39, 900);
INSERT INTO public.games VALUES (124, 40, 93);
INSERT INTO public.games VALUES (125, 40, 907);
INSERT INTO public.games VALUES (126, 39, 996);
INSERT INTO public.games VALUES (127, 39, 818);
INSERT INTO public.games VALUES (128, 39, 391);
INSERT INTO public.games VALUES (129, 41, 12);
INSERT INTO public.games VALUES (130, 42, 115);
INSERT INTO public.games VALUES (131, 42, 697);
INSERT INTO public.games VALUES (132, 43, 131);
INSERT INTO public.games VALUES (133, 43, 830);
INSERT INTO public.games VALUES (134, 42, 848);
INSERT INTO public.games VALUES (135, 42, 477);
INSERT INTO public.games VALUES (136, 42, 254);
INSERT INTO public.games VALUES (137, 44, 409);
INSERT INTO public.games VALUES (138, 44, 940);
INSERT INTO public.games VALUES (139, 45, 863);
INSERT INTO public.games VALUES (140, 45, 764);
INSERT INTO public.games VALUES (141, 44, 877);
INSERT INTO public.games VALUES (142, 44, 688);
INSERT INTO public.games VALUES (143, 44, 847);
INSERT INTO public.games VALUES (144, 46, 553);
INSERT INTO public.games VALUES (145, 46, 345);
INSERT INTO public.games VALUES (146, 47, 903);
INSERT INTO public.games VALUES (147, 47, 131);
INSERT INTO public.games VALUES (148, 46, 915);
INSERT INTO public.games VALUES (149, 46, 984);
INSERT INTO public.games VALUES (150, 46, 938);
INSERT INTO public.games VALUES (151, 48, 940);
INSERT INTO public.games VALUES (152, 48, 689);
INSERT INTO public.games VALUES (153, 49, 828);
INSERT INTO public.games VALUES (154, 49, 738);
INSERT INTO public.games VALUES (155, 48, 663);
INSERT INTO public.games VALUES (156, 48, 973);
INSERT INTO public.games VALUES (157, 48, 350);
INSERT INTO public.games VALUES (158, 50, 718);
INSERT INTO public.games VALUES (159, 50, 361);
INSERT INTO public.games VALUES (160, 51, 964);
INSERT INTO public.games VALUES (161, 51, 994);
INSERT INTO public.games VALUES (162, 50, 578);
INSERT INTO public.games VALUES (163, 50, 714);
INSERT INTO public.games VALUES (164, 50, 805);
INSERT INTO public.games VALUES (165, 52, 526);
INSERT INTO public.games VALUES (166, 52, 593);
INSERT INTO public.games VALUES (167, 53, 622);
INSERT INTO public.games VALUES (168, 53, 881);
INSERT INTO public.games VALUES (169, 52, 540);
INSERT INTO public.games VALUES (170, 52, 79);
INSERT INTO public.games VALUES (171, 52, 794);
INSERT INTO public.games VALUES (172, 54, 766);
INSERT INTO public.games VALUES (173, 54, 830);
INSERT INTO public.games VALUES (174, 55, 78);
INSERT INTO public.games VALUES (175, 55, 408);
INSERT INTO public.games VALUES (176, 54, 855);
INSERT INTO public.games VALUES (177, 54, 396);
INSERT INTO public.games VALUES (178, 54, 251);
INSERT INTO public.games VALUES (179, 56, 764);
INSERT INTO public.games VALUES (180, 56, 857);
INSERT INTO public.games VALUES (181, 57, 155);
INSERT INTO public.games VALUES (182, 57, 752);
INSERT INTO public.games VALUES (183, 56, 700);
INSERT INTO public.games VALUES (184, 56, 651);
INSERT INTO public.games VALUES (185, 56, 949);
INSERT INTO public.games VALUES (186, 58, 496);
INSERT INTO public.games VALUES (187, 58, 101);
INSERT INTO public.games VALUES (188, 59, 390);
INSERT INTO public.games VALUES (189, 59, 413);
INSERT INTO public.games VALUES (190, 58, 535);
INSERT INTO public.games VALUES (191, 58, 285);
INSERT INTO public.games VALUES (192, 58, 437);
INSERT INTO public.games VALUES (193, 60, 58);
INSERT INTO public.games VALUES (194, 60, 573);
INSERT INTO public.games VALUES (195, 61, 125);
INSERT INTO public.games VALUES (196, 61, 427);
INSERT INTO public.games VALUES (197, 60, 225);
INSERT INTO public.games VALUES (198, 60, 242);
INSERT INTO public.games VALUES (199, 60, 312);
INSERT INTO public.games VALUES (200, 62, 312);
INSERT INTO public.games VALUES (201, 63, 544);
INSERT INTO public.games VALUES (202, 62, 962);
INSERT INTO public.games VALUES (203, 63, 121);
INSERT INTO public.games VALUES (204, 64, 735);
INSERT INTO public.games VALUES (205, 65, 788);
INSERT INTO public.games VALUES (206, 64, 589);
INSERT INTO public.games VALUES (207, 65, 832);
INSERT INTO public.games VALUES (208, 62, 862);
INSERT INTO public.games VALUES (209, 62, 283);
INSERT INTO public.games VALUES (210, 63, 794);
INSERT INTO public.games VALUES (211, 63, 313);
INSERT INTO public.games VALUES (212, 62, 926);
INSERT INTO public.games VALUES (213, 63, 5);
INSERT INTO public.games VALUES (214, 66, 88);
INSERT INTO public.games VALUES (215, 66, 378);
INSERT INTO public.games VALUES (216, 67, 836);
INSERT INTO public.games VALUES (217, 67, 830);
INSERT INTO public.games VALUES (218, 66, 338);
INSERT INTO public.games VALUES (219, 66, 123);
INSERT INTO public.games VALUES (220, 66, 154);
INSERT INTO public.games VALUES (221, 68, 348);
INSERT INTO public.games VALUES (222, 68, 384);
INSERT INTO public.games VALUES (223, 69, 717);
INSERT INTO public.games VALUES (224, 69, 383);
INSERT INTO public.games VALUES (225, 68, 941);
INSERT INTO public.games VALUES (226, 68, 284);
INSERT INTO public.games VALUES (227, 68, 450);
INSERT INTO public.games VALUES (228, 70, 476);
INSERT INTO public.games VALUES (229, 70, 369);
INSERT INTO public.games VALUES (230, 71, 270);
INSERT INTO public.games VALUES (231, 71, 244);
INSERT INTO public.games VALUES (232, 70, 164);
INSERT INTO public.games VALUES (233, 70, 52);
INSERT INTO public.games VALUES (234, 70, 35);
INSERT INTO public.games VALUES (235, 72, 854);
INSERT INTO public.games VALUES (236, 72, 416);
INSERT INTO public.games VALUES (237, 73, 684);
INSERT INTO public.games VALUES (238, 73, 997);
INSERT INTO public.games VALUES (239, 72, 575);
INSERT INTO public.games VALUES (240, 72, 635);
INSERT INTO public.games VALUES (241, 72, 846);
INSERT INTO public.games VALUES (242, 74, 145);
INSERT INTO public.games VALUES (243, 74, 801);
INSERT INTO public.games VALUES (244, 75, 189);
INSERT INTO public.games VALUES (245, 75, 726);
INSERT INTO public.games VALUES (246, 74, 685);
INSERT INTO public.games VALUES (247, 74, 982);
INSERT INTO public.games VALUES (248, 74, 287);
INSERT INTO public.games VALUES (249, 76, 154);
INSERT INTO public.games VALUES (250, 76, 697);
INSERT INTO public.games VALUES (251, 77, 472);
INSERT INTO public.games VALUES (252, 77, 403);
INSERT INTO public.games VALUES (253, 76, 839);
INSERT INTO public.games VALUES (254, 76, 633);
INSERT INTO public.games VALUES (255, 76, 881);
INSERT INTO public.games VALUES (256, 78, 204);
INSERT INTO public.games VALUES (257, 78, 995);
INSERT INTO public.games VALUES (258, 79, 241);
INSERT INTO public.games VALUES (259, 79, 271);
INSERT INTO public.games VALUES (260, 78, 784);
INSERT INTO public.games VALUES (261, 78, 829);
INSERT INTO public.games VALUES (262, 78, 609);
INSERT INTO public.games VALUES (263, 80, 969);
INSERT INTO public.games VALUES (264, 80, 769);
INSERT INTO public.games VALUES (265, 81, 888);
INSERT INTO public.games VALUES (266, 81, 495);
INSERT INTO public.games VALUES (267, 80, 200);
INSERT INTO public.games VALUES (268, 80, 235);
INSERT INTO public.games VALUES (269, 80, 178);
INSERT INTO public.games VALUES (270, 82, 622);
INSERT INTO public.games VALUES (271, 82, 505);
INSERT INTO public.games VALUES (272, 83, 809);
INSERT INTO public.games VALUES (273, 83, 221);
INSERT INTO public.games VALUES (274, 82, 707);
INSERT INTO public.games VALUES (275, 82, 925);
INSERT INTO public.games VALUES (276, 82, 465);
INSERT INTO public.games VALUES (277, 84, 561);
INSERT INTO public.games VALUES (278, 84, 384);
INSERT INTO public.games VALUES (279, 85, 581);
INSERT INTO public.games VALUES (280, 85, 203);
INSERT INTO public.games VALUES (281, 84, 709);
INSERT INTO public.games VALUES (282, 84, 656);
INSERT INTO public.games VALUES (283, 84, 877);
INSERT INTO public.games VALUES (284, 86, 664);
INSERT INTO public.games VALUES (285, 86, 778);
INSERT INTO public.games VALUES (286, 87, 101);
INSERT INTO public.games VALUES (287, 87, 925);
INSERT INTO public.games VALUES (288, 86, 796);
INSERT INTO public.games VALUES (289, 86, 448);
INSERT INTO public.games VALUES (290, 86, 105);
INSERT INTO public.games VALUES (291, 88, 227);
INSERT INTO public.games VALUES (292, 88, 907);
INSERT INTO public.games VALUES (293, 89, 997);
INSERT INTO public.games VALUES (294, 89, 815);
INSERT INTO public.games VALUES (295, 88, 550);
INSERT INTO public.games VALUES (296, 88, 726);
INSERT INTO public.games VALUES (297, 88, 326);
INSERT INTO public.games VALUES (298, 90, 929);
INSERT INTO public.games VALUES (299, 90, 229);
INSERT INTO public.games VALUES (300, 91, 450);
INSERT INTO public.games VALUES (301, 91, 565);
INSERT INTO public.games VALUES (302, 90, 873);
INSERT INTO public.games VALUES (303, 90, 360);
INSERT INTO public.games VALUES (304, 90, 702);
INSERT INTO public.games VALUES (305, 92, 544);
INSERT INTO public.games VALUES (306, 92, 118);
INSERT INTO public.games VALUES (307, 93, 845);
INSERT INTO public.games VALUES (308, 94, 412);
INSERT INTO public.games VALUES (309, 93, 630);
INSERT INTO public.games VALUES (310, 94, 581);
INSERT INTO public.games VALUES (311, 95, 317);
INSERT INTO public.games VALUES (312, 92, 385);
INSERT INTO public.games VALUES (313, 95, 393);
INSERT INTO public.games VALUES (314, 92, 333);
INSERT INTO public.games VALUES (315, 93, 750);
INSERT INTO public.games VALUES (316, 92, 225);
INSERT INTO public.games VALUES (317, 93, 176);
INSERT INTO public.games VALUES (318, 93, 210);
INSERT INTO public.games VALUES (319, 96, 389);
INSERT INTO public.games VALUES (320, 96, 259);
INSERT INTO public.games VALUES (321, 97, 298);
INSERT INTO public.games VALUES (322, 97, 814);
INSERT INTO public.games VALUES (323, 96, 248);
INSERT INTO public.games VALUES (324, 96, 303);
INSERT INTO public.games VALUES (325, 96, 805);
INSERT INTO public.games VALUES (326, 98, 355);
INSERT INTO public.games VALUES (327, 98, 169);
INSERT INTO public.games VALUES (328, 99, 110);
INSERT INTO public.games VALUES (329, 99, 847);
INSERT INTO public.games VALUES (330, 98, 656);
INSERT INTO public.games VALUES (331, 98, 182);
INSERT INTO public.games VALUES (332, 98, 5);
INSERT INTO public.games VALUES (333, 100, 893);
INSERT INTO public.games VALUES (334, 100, 795);
INSERT INTO public.games VALUES (335, 101, 162);
INSERT INTO public.games VALUES (336, 101, 945);
INSERT INTO public.games VALUES (337, 100, 594);
INSERT INTO public.games VALUES (338, 100, 599);
INSERT INTO public.games VALUES (339, 100, 485);
INSERT INTO public.games VALUES (340, 102, 801);
INSERT INTO public.games VALUES (341, 102, 699);
INSERT INTO public.games VALUES (342, 103, 787);
INSERT INTO public.games VALUES (343, 103, 215);
INSERT INTO public.games VALUES (344, 102, 469);
INSERT INTO public.games VALUES (345, 102, 445);
INSERT INTO public.games VALUES (346, 102, 753);
INSERT INTO public.games VALUES (347, 104, 622);
INSERT INTO public.games VALUES (348, 104, 229);
INSERT INTO public.games VALUES (349, 105, 310);
INSERT INTO public.games VALUES (350, 105, 520);
INSERT INTO public.games VALUES (351, 104, 720);
INSERT INTO public.games VALUES (352, 104, 957);
INSERT INTO public.games VALUES (353, 104, 703);
INSERT INTO public.games VALUES (381, 109, 113);
INSERT INTO public.games VALUES (382, 109, 375);
INSERT INTO public.games VALUES (383, 110, 357);
INSERT INTO public.games VALUES (384, 110, 676);
INSERT INTO public.games VALUES (385, 109, 571);
INSERT INTO public.games VALUES (386, 109, 459);
INSERT INTO public.games VALUES (387, 109, 147);
INSERT INTO public.games VALUES (388, 111, 365);
INSERT INTO public.games VALUES (389, 111, 152);
INSERT INTO public.games VALUES (390, 112, 263);
INSERT INTO public.games VALUES (391, 112, 43);
INSERT INTO public.games VALUES (392, 111, 508);
INSERT INTO public.games VALUES (393, 111, 84);
INSERT INTO public.games VALUES (394, 111, 254);
INSERT INTO public.games VALUES (395, 113, 524);
INSERT INTO public.games VALUES (396, 113, 892);
INSERT INTO public.games VALUES (397, 114, 64);
INSERT INTO public.games VALUES (398, 114, 639);
INSERT INTO public.games VALUES (399, 113, 403);
INSERT INTO public.games VALUES (400, 113, 16);
INSERT INTO public.games VALUES (401, 113, 920);
INSERT INTO public.games VALUES (402, 115, 634);
INSERT INTO public.games VALUES (403, 115, 769);
INSERT INTO public.games VALUES (404, 116, 824);
INSERT INTO public.games VALUES (405, 116, 758);
INSERT INTO public.games VALUES (406, 115, 410);
INSERT INTO public.games VALUES (407, 115, 116);
INSERT INTO public.games VALUES (408, 115, 398);
INSERT INTO public.games VALUES (409, 117, 253);
INSERT INTO public.games VALUES (410, 117, 713);
INSERT INTO public.games VALUES (411, 118, 190);
INSERT INTO public.games VALUES (412, 118, 623);
INSERT INTO public.games VALUES (413, 117, 629);
INSERT INTO public.games VALUES (414, 117, 951);
INSERT INTO public.games VALUES (415, 117, 800);
INSERT INTO public.games VALUES (416, 119, 653);
INSERT INTO public.games VALUES (417, 119, 91);
INSERT INTO public.games VALUES (418, 120, 389);
INSERT INTO public.games VALUES (419, 120, 995);
INSERT INTO public.games VALUES (420, 119, 703);
INSERT INTO public.games VALUES (421, 119, 202);
INSERT INTO public.games VALUES (422, 119, 500);
INSERT INTO public.games VALUES (423, 121, 670);
INSERT INTO public.games VALUES (424, 121, 416);
INSERT INTO public.games VALUES (425, 122, 119);
INSERT INTO public.games VALUES (426, 122, 846);
INSERT INTO public.games VALUES (427, 121, 163);
INSERT INTO public.games VALUES (428, 121, 313);
INSERT INTO public.games VALUES (429, 121, 739);
INSERT INTO public.games VALUES (430, 123, 631);
INSERT INTO public.games VALUES (431, 123, 718);
INSERT INTO public.games VALUES (432, 124, 342);
INSERT INTO public.games VALUES (433, 124, 796);
INSERT INTO public.games VALUES (434, 123, 2);
INSERT INTO public.games VALUES (435, 123, 99);
INSERT INTO public.games VALUES (436, 123, 999);
INSERT INTO public.games VALUES (437, 125, 857);
INSERT INTO public.games VALUES (438, 125, 377);
INSERT INTO public.games VALUES (439, 126, 395);
INSERT INTO public.games VALUES (440, 126, 592);
INSERT INTO public.games VALUES (441, 125, 955);
INSERT INTO public.games VALUES (442, 125, 778);
INSERT INTO public.games VALUES (443, 125, 84);
INSERT INTO public.games VALUES (444, 127, 471);
INSERT INTO public.games VALUES (445, 127, 787);
INSERT INTO public.games VALUES (446, 128, 8);
INSERT INTO public.games VALUES (447, 128, 345);
INSERT INTO public.games VALUES (448, 127, 178);
INSERT INTO public.games VALUES (449, 127, 805);
INSERT INTO public.games VALUES (450, 127, 481);
INSERT INTO public.games VALUES (451, 129, 581);
INSERT INTO public.games VALUES (452, 129, 639);
INSERT INTO public.games VALUES (453, 130, 443);
INSERT INTO public.games VALUES (454, 130, 672);
INSERT INTO public.games VALUES (455, 129, 483);
INSERT INTO public.games VALUES (456, 129, 688);
INSERT INTO public.games VALUES (457, 129, 405);
INSERT INTO public.games VALUES (458, 131, 819);
INSERT INTO public.games VALUES (459, 131, 43);
INSERT INTO public.games VALUES (460, 132, 599);
INSERT INTO public.games VALUES (461, 132, 549);
INSERT INTO public.games VALUES (462, 131, 596);
INSERT INTO public.games VALUES (463, 131, 690);
INSERT INTO public.games VALUES (464, 131, 263);
INSERT INTO public.games VALUES (465, 133, 299);
INSERT INTO public.games VALUES (466, 133, 560);
INSERT INTO public.games VALUES (467, 134, 628);
INSERT INTO public.games VALUES (468, 134, 761);
INSERT INTO public.games VALUES (469, 133, 7);
INSERT INTO public.games VALUES (470, 133, 689);
INSERT INTO public.games VALUES (471, 133, 253);
INSERT INTO public.games VALUES (472, 135, 563);
INSERT INTO public.games VALUES (473, 135, 323);
INSERT INTO public.games VALUES (474, 136, 756);
INSERT INTO public.games VALUES (475, 136, 504);
INSERT INTO public.games VALUES (476, 135, 671);
INSERT INTO public.games VALUES (477, 135, 386);
INSERT INTO public.games VALUES (478, 135, 527);
INSERT INTO public.games VALUES (479, 137, 69);
INSERT INTO public.games VALUES (480, 137, 83);
INSERT INTO public.games VALUES (481, 138, 32);
INSERT INTO public.games VALUES (482, 138, 849);
INSERT INTO public.games VALUES (483, 137, 214);
INSERT INTO public.games VALUES (484, 137, 299);
INSERT INTO public.games VALUES (485, 137, 436);
INSERT INTO public.games VALUES (486, 139, 790);
INSERT INTO public.games VALUES (487, 139, 660);
INSERT INTO public.games VALUES (488, 140, 864);
INSERT INTO public.games VALUES (489, 140, 19);
INSERT INTO public.games VALUES (490, 139, 389);
INSERT INTO public.games VALUES (491, 139, 85);
INSERT INTO public.games VALUES (492, 139, 13);
INSERT INTO public.games VALUES (493, 141, 370);
INSERT INTO public.games VALUES (494, 141, 606);
INSERT INTO public.games VALUES (495, 142, 276);
INSERT INTO public.games VALUES (496, 142, 220);
INSERT INTO public.games VALUES (497, 141, 569);
INSERT INTO public.games VALUES (498, 141, 334);
INSERT INTO public.games VALUES (499, 141, 601);
INSERT INTO public.games VALUES (500, 143, 846);
INSERT INTO public.games VALUES (501, 143, 504);
INSERT INTO public.games VALUES (502, 144, 323);
INSERT INTO public.games VALUES (503, 144, 492);
INSERT INTO public.games VALUES (504, 143, 120);
INSERT INTO public.games VALUES (505, 143, 928);
INSERT INTO public.games VALUES (506, 143, 699);
INSERT INTO public.games VALUES (507, 145, 85);
INSERT INTO public.games VALUES (508, 145, 157);
INSERT INTO public.games VALUES (509, 146, 116);
INSERT INTO public.games VALUES (510, 146, 985);
INSERT INTO public.games VALUES (511, 145, 434);
INSERT INTO public.games VALUES (512, 145, 352);
INSERT INTO public.games VALUES (513, 145, 163);
INSERT INTO public.games VALUES (514, 147, 649);
INSERT INTO public.games VALUES (515, 147, 894);
INSERT INTO public.games VALUES (516, 148, 637);
INSERT INTO public.games VALUES (517, 148, 296);
INSERT INTO public.games VALUES (518, 147, 300);
INSERT INTO public.games VALUES (519, 147, 821);
INSERT INTO public.games VALUES (520, 147, 458);
INSERT INTO public.games VALUES (521, 149, 657);
INSERT INTO public.games VALUES (522, 149, 42);
INSERT INTO public.games VALUES (523, 150, 609);
INSERT INTO public.games VALUES (524, 150, 693);
INSERT INTO public.games VALUES (525, 149, 926);
INSERT INTO public.games VALUES (526, 149, 554);
INSERT INTO public.games VALUES (527, 149, 167);
INSERT INTO public.games VALUES (528, 151, 123);
INSERT INTO public.games VALUES (529, 151, 80);
INSERT INTO public.games VALUES (530, 152, 966);
INSERT INTO public.games VALUES (531, 152, 60);
INSERT INTO public.games VALUES (532, 151, 53);
INSERT INTO public.games VALUES (533, 151, 229);
INSERT INTO public.games VALUES (534, 151, 143);
INSERT INTO public.games VALUES (535, 153, 728);
INSERT INTO public.games VALUES (536, 153, 957);
INSERT INTO public.games VALUES (537, 154, 795);
INSERT INTO public.games VALUES (538, 154, 391);
INSERT INTO public.games VALUES (539, 153, 906);
INSERT INTO public.games VALUES (540, 153, 173);
INSERT INTO public.games VALUES (541, 153, 8);
INSERT INTO public.games VALUES (542, 155, 564);
INSERT INTO public.games VALUES (543, 155, 366);
INSERT INTO public.games VALUES (544, 156, 88);
INSERT INTO public.games VALUES (545, 156, 855);
INSERT INTO public.games VALUES (546, 155, 409);
INSERT INTO public.games VALUES (547, 155, 485);
INSERT INTO public.games VALUES (548, 155, 382);
INSERT INTO public.games VALUES (549, 157, 243);
INSERT INTO public.games VALUES (550, 157, 958);
INSERT INTO public.games VALUES (551, 158, 592);
INSERT INTO public.games VALUES (552, 158, 475);
INSERT INTO public.games VALUES (553, 157, 665);
INSERT INTO public.games VALUES (554, 157, 67);
INSERT INTO public.games VALUES (555, 157, 808);
INSERT INTO public.games VALUES (556, 159, 806);
INSERT INTO public.games VALUES (557, 159, 824);
INSERT INTO public.games VALUES (558, 160, 522);
INSERT INTO public.games VALUES (559, 160, 977);
INSERT INTO public.games VALUES (560, 159, 440);
INSERT INTO public.games VALUES (561, 159, 837);
INSERT INTO public.games VALUES (562, 159, 399);
INSERT INTO public.games VALUES (563, 161, 523);
INSERT INTO public.games VALUES (564, 161, 18);
INSERT INTO public.games VALUES (565, 162, 365);
INSERT INTO public.games VALUES (566, 162, 268);
INSERT INTO public.games VALUES (567, 161, 220);
INSERT INTO public.games VALUES (568, 161, 431);
INSERT INTO public.games VALUES (569, 161, 213);
INSERT INTO public.games VALUES (570, 163, 280);
INSERT INTO public.games VALUES (571, 163, 438);
INSERT INTO public.games VALUES (572, 164, 899);
INSERT INTO public.games VALUES (573, 164, 887);
INSERT INTO public.games VALUES (574, 163, 69);
INSERT INTO public.games VALUES (575, 163, 421);
INSERT INTO public.games VALUES (576, 163, 866);
INSERT INTO public.games VALUES (577, 165, 646);
INSERT INTO public.games VALUES (578, 165, 301);
INSERT INTO public.games VALUES (579, 166, 821);
INSERT INTO public.games VALUES (580, 166, 322);
INSERT INTO public.games VALUES (581, 165, 662);
INSERT INTO public.games VALUES (582, 165, 761);
INSERT INTO public.games VALUES (583, 165, 424);
INSERT INTO public.games VALUES (584, 167, 400);
INSERT INTO public.games VALUES (585, 167, 738);
INSERT INTO public.games VALUES (586, 168, 434);
INSERT INTO public.games VALUES (587, 168, 537);
INSERT INTO public.games VALUES (588, 167, 891);
INSERT INTO public.games VALUES (589, 167, 725);
INSERT INTO public.games VALUES (590, 167, 699);
INSERT INTO public.games VALUES (591, 169, 398);
INSERT INTO public.games VALUES (592, 169, 150);
INSERT INTO public.games VALUES (593, 170, 644);
INSERT INTO public.games VALUES (594, 170, 743);
INSERT INTO public.games VALUES (595, 169, 182);
INSERT INTO public.games VALUES (596, 169, 469);
INSERT INTO public.games VALUES (597, 169, 297);
INSERT INTO public.games VALUES (598, 171, 195);
INSERT INTO public.games VALUES (599, 171, 97);
INSERT INTO public.games VALUES (600, 172, 273);
INSERT INTO public.games VALUES (601, 172, 626);
INSERT INTO public.games VALUES (602, 171, 1000);
INSERT INTO public.games VALUES (603, 171, 507);
INSERT INTO public.games VALUES (604, 171, 301);
INSERT INTO public.games VALUES (605, 173, 595);
INSERT INTO public.games VALUES (606, 173, 480);
INSERT INTO public.games VALUES (607, 174, 542);
INSERT INTO public.games VALUES (608, 174, 186);
INSERT INTO public.games VALUES (609, 173, 506);
INSERT INTO public.games VALUES (610, 173, 377);
INSERT INTO public.games VALUES (611, 173, 711);
INSERT INTO public.games VALUES (612, 175, 357);
INSERT INTO public.games VALUES (613, 175, 103);
INSERT INTO public.games VALUES (614, 176, 450);
INSERT INTO public.games VALUES (615, 176, 702);
INSERT INTO public.games VALUES (616, 175, 577);
INSERT INTO public.games VALUES (617, 175, 390);
INSERT INTO public.games VALUES (618, 175, 865);
INSERT INTO public.games VALUES (619, 177, 139);
INSERT INTO public.games VALUES (620, 177, 825);
INSERT INTO public.games VALUES (621, 178, 973);
INSERT INTO public.games VALUES (622, 178, 62);
INSERT INTO public.games VALUES (623, 177, 358);
INSERT INTO public.games VALUES (624, 177, 693);
INSERT INTO public.games VALUES (625, 177, 92);
INSERT INTO public.games VALUES (626, 179, 203);
INSERT INTO public.games VALUES (627, 179, 244);
INSERT INTO public.games VALUES (628, 180, 440);
INSERT INTO public.games VALUES (629, 180, 541);
INSERT INTO public.games VALUES (630, 179, 939);
INSERT INTO public.games VALUES (631, 179, 119);
INSERT INTO public.games VALUES (632, 179, 720);
INSERT INTO public.games VALUES (633, 181, 300);
INSERT INTO public.games VALUES (634, 181, 187);
INSERT INTO public.games VALUES (635, 182, 783);
INSERT INTO public.games VALUES (636, 182, 234);
INSERT INTO public.games VALUES (637, 181, 185);
INSERT INTO public.games VALUES (638, 181, 169);
INSERT INTO public.games VALUES (639, 181, 603);
INSERT INTO public.games VALUES (640, 183, 454);
INSERT INTO public.games VALUES (641, 183, 214);
INSERT INTO public.games VALUES (642, 184, 781);
INSERT INTO public.games VALUES (643, 184, 878);
INSERT INTO public.games VALUES (644, 183, 714);
INSERT INTO public.games VALUES (645, 183, 964);
INSERT INTO public.games VALUES (646, 183, 203);
INSERT INTO public.games VALUES (647, 185, 969);
INSERT INTO public.games VALUES (648, 185, 70);
INSERT INTO public.games VALUES (649, 186, 293);
INSERT INTO public.games VALUES (650, 186, 69);
INSERT INTO public.games VALUES (651, 185, 804);
INSERT INTO public.games VALUES (652, 185, 725);
INSERT INTO public.games VALUES (653, 185, 575);
INSERT INTO public.games VALUES (654, 187, 87);
INSERT INTO public.games VALUES (655, 187, 790);
INSERT INTO public.games VALUES (656, 188, 36);
INSERT INTO public.games VALUES (657, 188, 174);
INSERT INTO public.games VALUES (658, 187, 269);
INSERT INTO public.games VALUES (659, 187, 998);
INSERT INTO public.games VALUES (660, 187, 715);
INSERT INTO public.games VALUES (661, 189, 219);
INSERT INTO public.games VALUES (662, 189, 679);
INSERT INTO public.games VALUES (663, 190, 653);
INSERT INTO public.games VALUES (664, 190, 636);
INSERT INTO public.games VALUES (665, 189, 925);
INSERT INTO public.games VALUES (666, 189, 61);
INSERT INTO public.games VALUES (667, 189, 559);
INSERT INTO public.games VALUES (668, 191, 268);
INSERT INTO public.games VALUES (669, 191, 435);
INSERT INTO public.games VALUES (670, 192, 722);
INSERT INTO public.games VALUES (671, 192, 538);
INSERT INTO public.games VALUES (672, 191, 175);
INSERT INTO public.games VALUES (673, 191, 881);
INSERT INTO public.games VALUES (674, 191, 964);
INSERT INTO public.games VALUES (675, 193, 535);
INSERT INTO public.games VALUES (676, 193, 18);
INSERT INTO public.games VALUES (677, 194, 454);
INSERT INTO public.games VALUES (678, 194, 362);
INSERT INTO public.games VALUES (679, 193, 239);
INSERT INTO public.games VALUES (680, 193, 128);
INSERT INTO public.games VALUES (681, 193, 158);
INSERT INTO public.games VALUES (682, 195, 995);
INSERT INTO public.games VALUES (683, 195, 184);
INSERT INTO public.games VALUES (684, 196, 547);
INSERT INTO public.games VALUES (685, 196, 649);
INSERT INTO public.games VALUES (686, 195, 651);
INSERT INTO public.games VALUES (687, 195, 781);
INSERT INTO public.games VALUES (688, 195, 32);
INSERT INTO public.games VALUES (689, 197, 628);
INSERT INTO public.games VALUES (690, 197, 188);
INSERT INTO public.games VALUES (691, 198, 368);
INSERT INTO public.games VALUES (692, 198, 919);
INSERT INTO public.games VALUES (693, 197, 824);
INSERT INTO public.games VALUES (694, 197, 178);
INSERT INTO public.games VALUES (695, 197, 513);
INSERT INTO public.games VALUES (696, 199, 60);
INSERT INTO public.games VALUES (697, 199, 805);
INSERT INTO public.games VALUES (698, 200, 310);
INSERT INTO public.games VALUES (699, 200, 747);
INSERT INTO public.games VALUES (700, 199, 922);
INSERT INTO public.games VALUES (701, 199, 247);
INSERT INTO public.games VALUES (702, 199, 372);
INSERT INTO public.games VALUES (703, 201, 356);
INSERT INTO public.games VALUES (704, 201, 860);
INSERT INTO public.games VALUES (705, 202, 96);
INSERT INTO public.games VALUES (706, 202, 296);
INSERT INTO public.games VALUES (707, 201, 72);
INSERT INTO public.games VALUES (708, 201, 316);
INSERT INTO public.games VALUES (709, 201, 215);
INSERT INTO public.games VALUES (710, 203, 949);
INSERT INTO public.games VALUES (711, 203, 302);
INSERT INTO public.games VALUES (712, 204, 572);
INSERT INTO public.games VALUES (713, 204, 82);
INSERT INTO public.games VALUES (714, 203, 234);
INSERT INTO public.games VALUES (715, 203, 465);
INSERT INTO public.games VALUES (716, 203, 613);
INSERT INTO public.games VALUES (717, 205, 540);
INSERT INTO public.games VALUES (718, 205, 44);
INSERT INTO public.games VALUES (719, 206, 513);
INSERT INTO public.games VALUES (720, 206, 885);
INSERT INTO public.games VALUES (721, 205, 864);
INSERT INTO public.games VALUES (722, 205, 306);
INSERT INTO public.games VALUES (723, 205, 381);
INSERT INTO public.games VALUES (724, 207, 989);
INSERT INTO public.games VALUES (725, 207, 640);
INSERT INTO public.games VALUES (726, 208, 858);
INSERT INTO public.games VALUES (727, 208, 453);
INSERT INTO public.games VALUES (728, 207, 658);
INSERT INTO public.games VALUES (729, 207, 703);
INSERT INTO public.games VALUES (730, 207, 549);
INSERT INTO public.games VALUES (731, 209, 878);
INSERT INTO public.games VALUES (732, 209, 639);
INSERT INTO public.games VALUES (733, 210, 961);
INSERT INTO public.games VALUES (734, 210, 223);
INSERT INTO public.games VALUES (735, 209, 631);
INSERT INTO public.games VALUES (736, 209, 85);
INSERT INTO public.games VALUES (737, 209, 104);
INSERT INTO public.games VALUES (738, 211, 217);
INSERT INTO public.games VALUES (739, 211, 326);
INSERT INTO public.games VALUES (740, 212, 891);
INSERT INTO public.games VALUES (741, 212, 642);
INSERT INTO public.games VALUES (742, 211, 627);
INSERT INTO public.games VALUES (743, 211, 14);
INSERT INTO public.games VALUES (744, 211, 548);
INSERT INTO public.games VALUES (745, 213, 137);
INSERT INTO public.games VALUES (746, 213, 938);
INSERT INTO public.games VALUES (747, 214, 528);
INSERT INTO public.games VALUES (748, 214, 111);
INSERT INTO public.games VALUES (749, 213, 95);
INSERT INTO public.games VALUES (750, 213, 49);
INSERT INTO public.games VALUES (751, 213, 150);
INSERT INTO public.games VALUES (752, 215, 719);
INSERT INTO public.games VALUES (753, 215, 34);
INSERT INTO public.games VALUES (754, 216, 849);
INSERT INTO public.games VALUES (755, 216, 498);
INSERT INTO public.games VALUES (756, 215, 197);
INSERT INTO public.games VALUES (757, 215, 681);
INSERT INTO public.games VALUES (758, 215, 698);
INSERT INTO public.games VALUES (759, 217, 866);
INSERT INTO public.games VALUES (760, 217, 977);
INSERT INTO public.games VALUES (761, 218, 970);
INSERT INTO public.games VALUES (762, 218, 556);
INSERT INTO public.games VALUES (763, 217, 545);
INSERT INTO public.games VALUES (764, 217, 151);
INSERT INTO public.games VALUES (765, 217, 821);
INSERT INTO public.games VALUES (766, 219, 672);
INSERT INTO public.games VALUES (767, 219, 91);
INSERT INTO public.games VALUES (768, 220, 294);
INSERT INTO public.games VALUES (769, 220, 446);
INSERT INTO public.games VALUES (770, 219, 695);
INSERT INTO public.games VALUES (771, 219, 132);
INSERT INTO public.games VALUES (772, 219, 222);
INSERT INTO public.games VALUES (773, 221, 917);
INSERT INTO public.games VALUES (774, 221, 534);
INSERT INTO public.games VALUES (775, 222, 104);
INSERT INTO public.games VALUES (776, 222, 752);
INSERT INTO public.games VALUES (777, 221, 763);
INSERT INTO public.games VALUES (778, 221, 177);
INSERT INTO public.games VALUES (779, 221, 387);
INSERT INTO public.games VALUES (780, 223, 443);
INSERT INTO public.games VALUES (781, 223, 216);
INSERT INTO public.games VALUES (782, 224, 742);
INSERT INTO public.games VALUES (783, 224, 84);
INSERT INTO public.games VALUES (784, 223, 64);
INSERT INTO public.games VALUES (785, 223, 647);
INSERT INTO public.games VALUES (786, 223, 515);
INSERT INTO public.games VALUES (787, 225, 291);
INSERT INTO public.games VALUES (788, 225, 141);
INSERT INTO public.games VALUES (789, 226, 517);
INSERT INTO public.games VALUES (790, 226, 441);
INSERT INTO public.games VALUES (791, 225, 191);
INSERT INTO public.games VALUES (792, 225, 542);
INSERT INTO public.games VALUES (793, 225, 79);
INSERT INTO public.games VALUES (794, 227, 816);
INSERT INTO public.games VALUES (795, 227, 318);
INSERT INTO public.games VALUES (796, 228, 690);
INSERT INTO public.games VALUES (797, 228, 656);
INSERT INTO public.games VALUES (798, 227, 531);
INSERT INTO public.games VALUES (799, 227, 236);
INSERT INTO public.games VALUES (800, 227, 951);
INSERT INTO public.games VALUES (801, 229, 28);
INSERT INTO public.games VALUES (802, 229, 539);
INSERT INTO public.games VALUES (803, 230, 92);
INSERT INTO public.games VALUES (804, 230, 380);
INSERT INTO public.games VALUES (805, 229, 264);
INSERT INTO public.games VALUES (806, 229, 920);
INSERT INTO public.games VALUES (807, 229, 332);
INSERT INTO public.games VALUES (808, 231, 226);
INSERT INTO public.games VALUES (809, 231, 629);
INSERT INTO public.games VALUES (810, 232, 197);
INSERT INTO public.games VALUES (811, 232, 821);
INSERT INTO public.games VALUES (812, 231, 708);
INSERT INTO public.games VALUES (813, 231, 94);
INSERT INTO public.games VALUES (814, 231, 163);
INSERT INTO public.games VALUES (815, 233, 493);
INSERT INTO public.games VALUES (816, 233, 531);
INSERT INTO public.games VALUES (817, 234, 756);
INSERT INTO public.games VALUES (818, 234, 273);
INSERT INTO public.games VALUES (819, 233, 122);
INSERT INTO public.games VALUES (820, 233, 207);
INSERT INTO public.games VALUES (821, 233, 970);
INSERT INTO public.games VALUES (822, 235, 271);
INSERT INTO public.games VALUES (823, 235, 481);
INSERT INTO public.games VALUES (824, 236, 8);
INSERT INTO public.games VALUES (825, 236, 935);
INSERT INTO public.games VALUES (826, 235, 485);
INSERT INTO public.games VALUES (827, 235, 980);
INSERT INTO public.games VALUES (828, 235, 531);
INSERT INTO public.games VALUES (829, 237, 264);
INSERT INTO public.games VALUES (830, 237, 669);
INSERT INTO public.games VALUES (831, 238, 582);
INSERT INTO public.games VALUES (832, 238, 709);
INSERT INTO public.games VALUES (833, 237, 480);
INSERT INTO public.games VALUES (834, 237, 935);
INSERT INTO public.games VALUES (835, 237, 106);
INSERT INTO public.games VALUES (836, 239, 701);
INSERT INTO public.games VALUES (837, 239, 704);
INSERT INTO public.games VALUES (838, 240, 195);
INSERT INTO public.games VALUES (839, 240, 714);
INSERT INTO public.games VALUES (840, 239, 734);
INSERT INTO public.games VALUES (841, 239, 57);
INSERT INTO public.games VALUES (842, 239, 988);
INSERT INTO public.games VALUES (843, 241, 181);
INSERT INTO public.games VALUES (844, 241, 220);
INSERT INTO public.games VALUES (845, 242, 987);
INSERT INTO public.games VALUES (846, 242, 587);
INSERT INTO public.games VALUES (847, 241, 885);
INSERT INTO public.games VALUES (848, 241, 628);
INSERT INTO public.games VALUES (849, 241, 701);
INSERT INTO public.games VALUES (850, 243, 857);
INSERT INTO public.games VALUES (851, 243, 101);
INSERT INTO public.games VALUES (852, 244, 265);
INSERT INTO public.games VALUES (853, 244, 286);
INSERT INTO public.games VALUES (854, 243, 766);
INSERT INTO public.games VALUES (855, 243, 169);
INSERT INTO public.games VALUES (856, 243, 523);
INSERT INTO public.games VALUES (857, 245, 517);
INSERT INTO public.games VALUES (858, 245, 82);
INSERT INTO public.games VALUES (859, 246, 752);
INSERT INTO public.games VALUES (860, 246, 91);
INSERT INTO public.games VALUES (861, 245, 631);
INSERT INTO public.games VALUES (862, 245, 336);
INSERT INTO public.games VALUES (863, 245, 841);
INSERT INTO public.games VALUES (864, 247, 490);
INSERT INTO public.games VALUES (865, 247, 64);
INSERT INTO public.games VALUES (866, 248, 581);
INSERT INTO public.games VALUES (867, 248, 23);
INSERT INTO public.games VALUES (868, 247, 268);
INSERT INTO public.games VALUES (869, 247, 201);
INSERT INTO public.games VALUES (870, 247, 223);
INSERT INTO public.games VALUES (871, 249, 420);
INSERT INTO public.games VALUES (872, 249, 530);
INSERT INTO public.games VALUES (873, 250, 638);
INSERT INTO public.games VALUES (874, 250, 840);
INSERT INTO public.games VALUES (875, 249, 50);
INSERT INTO public.games VALUES (876, 249, 59);
INSERT INTO public.games VALUES (877, 249, 29);
INSERT INTO public.games VALUES (878, 251, 623);
INSERT INTO public.games VALUES (879, 251, 893);
INSERT INTO public.games VALUES (880, 252, 837);
INSERT INTO public.games VALUES (881, 252, 941);
INSERT INTO public.games VALUES (882, 251, 289);
INSERT INTO public.games VALUES (883, 251, 521);
INSERT INTO public.games VALUES (884, 251, 907);
INSERT INTO public.games VALUES (885, 253, 631);
INSERT INTO public.games VALUES (886, 253, 181);
INSERT INTO public.games VALUES (887, 254, 470);
INSERT INTO public.games VALUES (888, 254, 195);
INSERT INTO public.games VALUES (889, 253, 76);
INSERT INTO public.games VALUES (890, 253, 77);
INSERT INTO public.games VALUES (891, 253, 228);
INSERT INTO public.games VALUES (892, 255, 956);
INSERT INTO public.games VALUES (893, 255, 912);
INSERT INTO public.games VALUES (894, 256, 949);
INSERT INTO public.games VALUES (895, 256, 186);
INSERT INTO public.games VALUES (896, 255, 353);
INSERT INTO public.games VALUES (897, 255, 548);
INSERT INTO public.games VALUES (898, 255, 541);
INSERT INTO public.games VALUES (899, 257, 558);
INSERT INTO public.games VALUES (900, 257, 281);
INSERT INTO public.games VALUES (901, 258, 591);
INSERT INTO public.games VALUES (902, 258, 943);
INSERT INTO public.games VALUES (903, 257, 509);
INSERT INTO public.games VALUES (904, 257, 118);
INSERT INTO public.games VALUES (905, 257, 887);
INSERT INTO public.games VALUES (906, 259, 190);
INSERT INTO public.games VALUES (907, 259, 802);
INSERT INTO public.games VALUES (908, 260, 807);
INSERT INTO public.games VALUES (909, 260, 858);
INSERT INTO public.games VALUES (910, 259, 248);
INSERT INTO public.games VALUES (911, 259, 381);
INSERT INTO public.games VALUES (912, 259, 206);
INSERT INTO public.games VALUES (913, 261, 11);
INSERT INTO public.games VALUES (914, 262, 347);
INSERT INTO public.games VALUES (915, 262, 858);
INSERT INTO public.games VALUES (916, 263, 628);
INSERT INTO public.games VALUES (917, 263, 563);
INSERT INTO public.games VALUES (918, 262, 598);
INSERT INTO public.games VALUES (919, 262, 524);
INSERT INTO public.games VALUES (920, 262, 599);
INSERT INTO public.games VALUES (921, 264, 738);
INSERT INTO public.games VALUES (922, 264, 918);
INSERT INTO public.games VALUES (923, 265, 835);
INSERT INTO public.games VALUES (924, 265, 264);
INSERT INTO public.games VALUES (925, 264, 453);
INSERT INTO public.games VALUES (926, 264, 67);
INSERT INTO public.games VALUES (927, 264, 836);
INSERT INTO public.games VALUES (928, 266, 920);
INSERT INTO public.games VALUES (929, 266, 61);
INSERT INTO public.games VALUES (930, 267, 793);
INSERT INTO public.games VALUES (931, 267, 724);
INSERT INTO public.games VALUES (932, 266, 772);
INSERT INTO public.games VALUES (933, 266, 162);
INSERT INTO public.games VALUES (934, 266, 243);
INSERT INTO public.games VALUES (935, 268, 353);
INSERT INTO public.games VALUES (936, 268, 64);
INSERT INTO public.games VALUES (937, 269, 778);
INSERT INTO public.games VALUES (938, 269, 497);
INSERT INTO public.games VALUES (939, 268, 501);
INSERT INTO public.games VALUES (940, 268, 798);
INSERT INTO public.games VALUES (941, 268, 941);
INSERT INTO public.games VALUES (942, 270, 548);
INSERT INTO public.games VALUES (943, 270, 746);
INSERT INTO public.games VALUES (944, 271, 360);
INSERT INTO public.games VALUES (945, 271, 552);
INSERT INTO public.games VALUES (946, 270, 33);
INSERT INTO public.games VALUES (947, 270, 166);
INSERT INTO public.games VALUES (948, 270, 613);
INSERT INTO public.games VALUES (949, 272, 338);
INSERT INTO public.games VALUES (950, 272, 339);
INSERT INTO public.games VALUES (951, 273, 528);
INSERT INTO public.games VALUES (952, 273, 999);
INSERT INTO public.games VALUES (953, 272, 42);
INSERT INTO public.games VALUES (954, 272, 39);
INSERT INTO public.games VALUES (955, 272, 188);
INSERT INTO public.games VALUES (956, 274, 330);
INSERT INTO public.games VALUES (957, 274, 972);
INSERT INTO public.games VALUES (958, 275, 936);
INSERT INTO public.games VALUES (959, 275, 369);
INSERT INTO public.games VALUES (960, 274, 753);
INSERT INTO public.games VALUES (961, 274, 956);
INSERT INTO public.games VALUES (962, 274, 561);
INSERT INTO public.games VALUES (963, 276, 868);
INSERT INTO public.games VALUES (964, 276, 227);
INSERT INTO public.games VALUES (965, 277, 66);
INSERT INTO public.games VALUES (966, 277, 862);
INSERT INTO public.games VALUES (967, 276, 26);
INSERT INTO public.games VALUES (968, 276, 646);
INSERT INTO public.games VALUES (969, 276, 775);
INSERT INTO public.games VALUES (970, 278, 637);
INSERT INTO public.games VALUES (971, 278, 130);
INSERT INTO public.games VALUES (972, 279, 610);
INSERT INTO public.games VALUES (973, 279, 23);
INSERT INTO public.games VALUES (974, 278, 328);
INSERT INTO public.games VALUES (975, 278, 406);
INSERT INTO public.games VALUES (976, 278, 392);
INSERT INTO public.games VALUES (977, 280, 330);
INSERT INTO public.games VALUES (978, 280, 115);
INSERT INTO public.games VALUES (979, 281, 434);
INSERT INTO public.games VALUES (980, 281, 727);
INSERT INTO public.games VALUES (981, 280, 501);
INSERT INTO public.games VALUES (982, 280, 983);
INSERT INTO public.games VALUES (983, 280, 179);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1686730043195');
INSERT INTO public.users VALUES (2, 'user_1686730043194');
INSERT INTO public.users VALUES (3, 'ddd');
INSERT INTO public.users VALUES (4, 'user_1686730381289');
INSERT INTO public.users VALUES (5, 'user_1686730381288');
INSERT INTO public.users VALUES (6, 'tom');
INSERT INTO public.users VALUES (7, 'user_1686730429130');
INSERT INTO public.users VALUES (8, 'user_1686730429129');
INSERT INTO public.users VALUES (9, 'user_1686730464145');
INSERT INTO public.users VALUES (10, 'user_1686730464144');
INSERT INTO public.users VALUES (11, 'user_1686730499552');
INSERT INTO public.users VALUES (12, 'user_1686730499551');
INSERT INTO public.users VALUES (13, 'user_1686730602254');
INSERT INTO public.users VALUES (14, 'user_1686730602253');
INSERT INTO public.users VALUES (15, 'user_1686730625830');
INSERT INTO public.users VALUES (16, 'user_1686730625829');
INSERT INTO public.users VALUES (17, 'user_1686730690561');
INSERT INTO public.users VALUES (18, 'user_1686730690560');
INSERT INTO public.users VALUES (19, 'user_1686730735957');
INSERT INTO public.users VALUES (20, 'user_1686730735956');
INSERT INTO public.users VALUES (21, 'user_1686730743664');
INSERT INTO public.users VALUES (22, 'user_1686730743663');
INSERT INTO public.users VALUES (23, 'user_1686730764432');
INSERT INTO public.users VALUES (24, 'user_1686730764431');
INSERT INTO public.users VALUES (25, 'user_1686730823275');
INSERT INTO public.users VALUES (26, 'user_1686730823274');
INSERT INTO public.users VALUES (27, 'user_1686730839024');
INSERT INTO public.users VALUES (28, 'user_1686730839023');
INSERT INTO public.users VALUES (29, 'user_1686730854882');
INSERT INTO public.users VALUES (30, 'user_1686730854881');
INSERT INTO public.users VALUES (31, 'user_1686730883013');
INSERT INTO public.users VALUES (32, 'user_1686730883012');
INSERT INTO public.users VALUES (33, 'user_1686730892981');
INSERT INTO public.users VALUES (34, 'user_1686730892980');
INSERT INTO public.users VALUES (35, 'user_1686730905167');
INSERT INTO public.users VALUES (36, 'user_1686730905166');
INSERT INTO public.users VALUES (37, 'user_1686730916342');
INSERT INTO public.users VALUES (38, 'user_1686730916341');
INSERT INTO public.users VALUES (39, 'user_1686732139338');
INSERT INTO public.users VALUES (40, 'user_1686732139337');
INSERT INTO public.users VALUES (41, 'fef');
INSERT INTO public.users VALUES (42, 'user_1686732192504');
INSERT INTO public.users VALUES (43, 'user_1686732192503');
INSERT INTO public.users VALUES (44, 'user_1686732400017');
INSERT INTO public.users VALUES (45, 'user_1686732400016');
INSERT INTO public.users VALUES (46, 'user_1686732832226');
INSERT INTO public.users VALUES (47, 'user_1686732832225');
INSERT INTO public.users VALUES (48, 'user_1686732835719');
INSERT INTO public.users VALUES (49, 'user_1686732835718');
INSERT INTO public.users VALUES (50, 'user_1686732839333');
INSERT INTO public.users VALUES (51, 'user_1686732839332');
INSERT INTO public.users VALUES (52, 'user_1686732842765');
INSERT INTO public.users VALUES (53, 'user_1686732842764');
INSERT INTO public.users VALUES (54, 'user_1686732846092');
INSERT INTO public.users VALUES (55, 'user_1686732846091');
INSERT INTO public.users VALUES (56, 'user_1686732849495');
INSERT INTO public.users VALUES (57, 'user_1686732849494');
INSERT INTO public.users VALUES (58, 'user_1686732853337');
INSERT INTO public.users VALUES (59, 'user_1686732853336');
INSERT INTO public.users VALUES (60, 'user_1686732856598');
INSERT INTO public.users VALUES (61, 'user_1686732856597');
INSERT INTO public.users VALUES (62, 'user_1686732859917');
INSERT INTO public.users VALUES (63, 'user_1686732860530');
INSERT INTO public.users VALUES (64, 'user_1686732859916');
INSERT INTO public.users VALUES (65, 'user_1686732860529');
INSERT INTO public.users VALUES (66, 'user_1686732866946');
INSERT INTO public.users VALUES (67, 'user_1686732866945');
INSERT INTO public.users VALUES (68, 'user_1686732869994');
INSERT INTO public.users VALUES (69, 'user_1686732869993');
INSERT INTO public.users VALUES (70, 'user_1686732893340');
INSERT INTO public.users VALUES (71, 'user_1686732893339');
INSERT INTO public.users VALUES (72, 'user_1686732901075');
INSERT INTO public.users VALUES (73, 'user_1686732901074');
INSERT INTO public.users VALUES (74, 'user_1686733042539');
INSERT INTO public.users VALUES (75, 'user_1686733042538');
INSERT INTO public.users VALUES (76, 'user_1686733085373');
INSERT INTO public.users VALUES (77, 'user_1686733085372');
INSERT INTO public.users VALUES (78, 'user_1686733130489');
INSERT INTO public.users VALUES (79, 'user_1686733130488');
INSERT INTO public.users VALUES (80, 'user_1686733135149');
INSERT INTO public.users VALUES (81, 'user_1686733135148');
INSERT INTO public.users VALUES (82, 'user_1686733139022');
INSERT INTO public.users VALUES (83, 'user_1686733139021');
INSERT INTO public.users VALUES (84, 'user_1686733142284');
INSERT INTO public.users VALUES (85, 'user_1686733142283');
INSERT INTO public.users VALUES (86, 'user_1686733145484');
INSERT INTO public.users VALUES (87, 'user_1686733145483');
INSERT INTO public.users VALUES (88, 'user_1686733148834');
INSERT INTO public.users VALUES (89, 'user_1686733148833');
INSERT INTO public.users VALUES (90, 'user_1686733152358');
INSERT INTO public.users VALUES (91, 'user_1686733152357');
INSERT INTO public.users VALUES (92, 'user_1686733155941');
INSERT INTO public.users VALUES (93, 'user_1686733156543');
INSERT INTO public.users VALUES (94, 'user_1686733155940');
INSERT INTO public.users VALUES (95, 'user_1686733156542');
INSERT INTO public.users VALUES (96, 'user_1686733162950');
INSERT INTO public.users VALUES (97, 'user_1686733162949');
INSERT INTO public.users VALUES (98, 'user_1686733166307');
INSERT INTO public.users VALUES (99, 'user_1686733166306');
INSERT INTO public.users VALUES (100, 'user_1686733170668');
INSERT INTO public.users VALUES (101, 'user_1686733170667');
INSERT INTO public.users VALUES (102, 'user_1686733293230');
INSERT INTO public.users VALUES (103, 'user_1686733293229');
INSERT INTO public.users VALUES (104, 'user_1686733310593');
INSERT INTO public.users VALUES (105, 'user_1686733310592');
INSERT INTO public.users VALUES (109, 'user_1686733401620');
INSERT INTO public.users VALUES (110, 'user_1686733401619');
INSERT INTO public.users VALUES (111, 'user_1686733409367');
INSERT INTO public.users VALUES (112, 'user_1686733409366');
INSERT INTO public.users VALUES (113, 'user_1686733415819');
INSERT INTO public.users VALUES (114, 'user_1686733415818');
INSERT INTO public.users VALUES (115, 'user_1686733436999');
INSERT INTO public.users VALUES (116, 'user_1686733436998');
INSERT INTO public.users VALUES (117, 'user_1686733474173');
INSERT INTO public.users VALUES (118, 'user_1686733474172');
INSERT INTO public.users VALUES (119, 'user_1686733545162');
INSERT INTO public.users VALUES (120, 'user_1686733545161');
INSERT INTO public.users VALUES (121, 'user_1686733573395');
INSERT INTO public.users VALUES (122, 'user_1686733573394');
INSERT INTO public.users VALUES (123, 'user_1686733576711');
INSERT INTO public.users VALUES (124, 'user_1686733576710');
INSERT INTO public.users VALUES (125, 'user_1686733580070');
INSERT INTO public.users VALUES (126, 'user_1686733580069');
INSERT INTO public.users VALUES (127, 'user_1686733583368');
INSERT INTO public.users VALUES (128, 'user_1686733583367');
INSERT INTO public.users VALUES (129, 'user_1686733586656');
INSERT INTO public.users VALUES (130, 'user_1686733586655');
INSERT INTO public.users VALUES (131, 'user_1686733590018');
INSERT INTO public.users VALUES (132, 'user_1686733590017');
INSERT INTO public.users VALUES (133, 'user_1686733593433');
INSERT INTO public.users VALUES (134, 'user_1686733593432');
INSERT INTO public.users VALUES (135, 'user_1686733629234');
INSERT INTO public.users VALUES (136, 'user_1686733629233');
INSERT INTO public.users VALUES (137, 'user_1686733639483');
INSERT INTO public.users VALUES (138, 'user_1686733639482');
INSERT INTO public.users VALUES (139, 'user_1686733643722');
INSERT INTO public.users VALUES (140, 'user_1686733643721');
INSERT INTO public.users VALUES (141, 'user_1686733648295');
INSERT INTO public.users VALUES (142, 'user_1686733648294');
INSERT INTO public.users VALUES (143, 'user_1686733768848');
INSERT INTO public.users VALUES (144, 'user_1686733768847');
INSERT INTO public.users VALUES (145, 'user_1686733793650');
INSERT INTO public.users VALUES (146, 'user_1686733793649');
INSERT INTO public.users VALUES (147, 'user_1686733815477');
INSERT INTO public.users VALUES (148, 'user_1686733815476');
INSERT INTO public.users VALUES (149, 'user_1686733820884');
INSERT INTO public.users VALUES (150, 'user_1686733820883');
INSERT INTO public.users VALUES (151, 'user_1686733825232');
INSERT INTO public.users VALUES (152, 'user_1686733825231');
INSERT INTO public.users VALUES (153, 'user_1686733830185');
INSERT INTO public.users VALUES (154, 'user_1686733830184');
INSERT INTO public.users VALUES (155, 'user_1686733847941');
INSERT INTO public.users VALUES (156, 'user_1686733847940');
INSERT INTO public.users VALUES (157, 'user_1686733860768');
INSERT INTO public.users VALUES (158, 'user_1686733860767');
INSERT INTO public.users VALUES (159, 'user_1686733873762');
INSERT INTO public.users VALUES (160, 'user_1686733873761');
INSERT INTO public.users VALUES (161, 'user_1686733889316');
INSERT INTO public.users VALUES (162, 'user_1686733889315');
INSERT INTO public.users VALUES (163, 'user_1686733915811');
INSERT INTO public.users VALUES (164, 'user_1686733915810');
INSERT INTO public.users VALUES (165, 'user_1686733922695');
INSERT INTO public.users VALUES (166, 'user_1686733922694');
INSERT INTO public.users VALUES (167, 'user_1686733930930');
INSERT INTO public.users VALUES (168, 'user_1686733930929');
INSERT INTO public.users VALUES (169, 'user_1686733944946');
INSERT INTO public.users VALUES (170, 'user_1686733944945');
INSERT INTO public.users VALUES (171, 'user_1686733954588');
INSERT INTO public.users VALUES (172, 'user_1686733954587');
INSERT INTO public.users VALUES (173, 'user_1686733964838');
INSERT INTO public.users VALUES (174, 'user_1686733964837');
INSERT INTO public.users VALUES (175, 'user_1686733973347');
INSERT INTO public.users VALUES (176, 'user_1686733973346');
INSERT INTO public.users VALUES (177, 'user_1686733977587');
INSERT INTO public.users VALUES (178, 'user_1686733977585');
INSERT INTO public.users VALUES (179, 'user_1686733981878');
INSERT INTO public.users VALUES (180, 'user_1686733981877');
INSERT INTO public.users VALUES (181, 'user_1686734006309');
INSERT INTO public.users VALUES (182, 'user_1686734006308');
INSERT INTO public.users VALUES (183, 'user_1686734015837');
INSERT INTO public.users VALUES (184, 'user_1686734015836');
INSERT INTO public.users VALUES (185, 'user_1686734020834');
INSERT INTO public.users VALUES (186, 'user_1686734020833');
INSERT INTO public.users VALUES (187, 'user_1686734221667');
INSERT INTO public.users VALUES (188, 'user_1686734221666');
INSERT INTO public.users VALUES (189, 'user_1686734236418');
INSERT INTO public.users VALUES (190, 'user_1686734236417');
INSERT INTO public.users VALUES (191, 'user_1686734287040');
INSERT INTO public.users VALUES (192, 'user_1686734287039');
INSERT INTO public.users VALUES (193, 'user_1686734312277');
INSERT INTO public.users VALUES (194, 'user_1686734312276');
INSERT INTO public.users VALUES (195, 'user_1686734324915');
INSERT INTO public.users VALUES (196, 'user_1686734324914');
INSERT INTO public.users VALUES (197, 'user_1686734347321');
INSERT INTO public.users VALUES (198, 'user_1686734347320');
INSERT INTO public.users VALUES (199, 'user_1686734447652');
INSERT INTO public.users VALUES (200, 'user_1686734447651');
INSERT INTO public.users VALUES (201, 'user_1686734477751');
INSERT INTO public.users VALUES (202, 'user_1686734477750');
INSERT INTO public.users VALUES (203, 'user_1686734488881');
INSERT INTO public.users VALUES (204, 'user_1686734488880');
INSERT INTO public.users VALUES (205, 'user_1686734493055');
INSERT INTO public.users VALUES (206, 'user_1686734493054');
INSERT INTO public.users VALUES (207, 'user_1686734501947');
INSERT INTO public.users VALUES (208, 'user_1686734501946');
INSERT INTO public.users VALUES (209, 'user_1686734524951');
INSERT INTO public.users VALUES (210, 'user_1686734524950');
INSERT INTO public.users VALUES (211, 'user_1686734532658');
INSERT INTO public.users VALUES (212, 'user_1686734532657');
INSERT INTO public.users VALUES (213, 'user_1686734537193');
INSERT INTO public.users VALUES (214, 'user_1686734537192');
INSERT INTO public.users VALUES (215, 'user_1686734546953');
INSERT INTO public.users VALUES (216, 'user_1686734546952');
INSERT INTO public.users VALUES (217, 'user_1686734570764');
INSERT INTO public.users VALUES (218, 'user_1686734570763');
INSERT INTO public.users VALUES (219, 'user_1686734578142');
INSERT INTO public.users VALUES (220, 'user_1686734578141');
INSERT INTO public.users VALUES (221, 'user_1686734584793');
INSERT INTO public.users VALUES (222, 'user_1686734584792');
INSERT INTO public.users VALUES (223, 'user_1686734589563');
INSERT INTO public.users VALUES (224, 'user_1686734589562');
INSERT INTO public.users VALUES (225, 'user_1686734594931');
INSERT INTO public.users VALUES (226, 'user_1686734594930');
INSERT INTO public.users VALUES (227, 'user_1686734607889');
INSERT INTO public.users VALUES (228, 'user_1686734607888');
INSERT INTO public.users VALUES (229, 'user_1686734612313');
INSERT INTO public.users VALUES (230, 'user_1686734612312');
INSERT INTO public.users VALUES (231, 'user_1686734618670');
INSERT INTO public.users VALUES (232, 'user_1686734618669');
INSERT INTO public.users VALUES (233, 'user_1686734625706');
INSERT INTO public.users VALUES (234, 'user_1686734625705');
INSERT INTO public.users VALUES (235, 'user_1686734641096');
INSERT INTO public.users VALUES (236, 'user_1686734641095');
INSERT INTO public.users VALUES (237, 'user_1686734658620');
INSERT INTO public.users VALUES (238, 'user_1686734658619');
INSERT INTO public.users VALUES (239, 'user_1686734689943');
INSERT INTO public.users VALUES (240, 'user_1686734689942');
INSERT INTO public.users VALUES (241, 'user_1686734711263');
INSERT INTO public.users VALUES (242, 'user_1686734711262');
INSERT INTO public.users VALUES (243, 'user_1686734722436');
INSERT INTO public.users VALUES (244, 'user_1686734722435');
INSERT INTO public.users VALUES (245, 'user_1686734756268');
INSERT INTO public.users VALUES (246, 'user_1686734756267');
INSERT INTO public.users VALUES (247, 'user_1686734760424');
INSERT INTO public.users VALUES (248, 'user_1686734760423');
INSERT INTO public.users VALUES (249, 'user_1686734773155');
INSERT INTO public.users VALUES (250, 'user_1686734773154');
INSERT INTO public.users VALUES (251, 'user_1686734801281');
INSERT INTO public.users VALUES (252, 'user_1686734801280');
INSERT INTO public.users VALUES (253, 'user_1686734839320');
INSERT INTO public.users VALUES (254, 'user_1686734839319');
INSERT INTO public.users VALUES (255, 'user_1686734866060');
INSERT INTO public.users VALUES (256, 'user_1686734866059');
INSERT INTO public.users VALUES (257, 'user_1686734910958');
INSERT INTO public.users VALUES (258, 'user_1686734910957');
INSERT INTO public.users VALUES (259, 'user_1686734936518');
INSERT INTO public.users VALUES (260, 'user_1686734936517');
INSERT INTO public.users VALUES (261, 'raj');
INSERT INTO public.users VALUES (262, 'user_1686735030342');
INSERT INTO public.users VALUES (263, 'user_1686735030341');
INSERT INTO public.users VALUES (264, 'user_1686735046084');
INSERT INTO public.users VALUES (265, 'user_1686735046083');
INSERT INTO public.users VALUES (266, 'user_1686735062082');
INSERT INTO public.users VALUES (267, 'user_1686735062081');
INSERT INTO public.users VALUES (268, 'user_1686735067373');
INSERT INTO public.users VALUES (269, 'user_1686735067372');
INSERT INTO public.users VALUES (270, 'user_1686735117026');
INSERT INTO public.users VALUES (271, 'user_1686735117025');
INSERT INTO public.users VALUES (272, 'user_1686735131974');
INSERT INTO public.users VALUES (273, 'user_1686735131973');
INSERT INTO public.users VALUES (274, 'user_1686735160522');
INSERT INTO public.users VALUES (275, 'user_1686735160521');
INSERT INTO public.users VALUES (276, 'user_1686735192162');
INSERT INTO public.users VALUES (277, 'user_1686735192161');
INSERT INTO public.users VALUES (278, 'user_1686735237308');
INSERT INTO public.users VALUES (279, 'user_1686735237307');
INSERT INTO public.users VALUES (280, 'user_1686735248909');
INSERT INTO public.users VALUES (281, 'user_1686735248908');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 983, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 281, true);


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

