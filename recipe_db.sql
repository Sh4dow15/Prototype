﻿--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: cuisine; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cuisine (
    cuisine_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.cuisine OWNER TO postgres;

--
-- Name: cuisine_cuisine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cuisine_cuisine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cuisine_cuisine_id_seq OWNER TO postgres;

--
-- Name: cuisine_cuisine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cuisine_cuisine_id_seq OWNED BY public.cuisine.cuisine_id;


--
-- Name: difficulty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.difficulty (
    difficulty_id integer NOT NULL,
    level character varying(20) NOT NULL
);


ALTER TABLE public.difficulty OWNER TO postgres;

--
-- Name: difficulty_difficulty_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.difficulty_difficulty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.difficulty_difficulty_id_seq OWNER TO postgres;

--
-- Name: difficulty_difficulty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.difficulty_difficulty_id_seq OWNED BY public.difficulty.difficulty_id;


--
-- Name: ingredient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingredient (
    ingredient_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.ingredient OWNER TO postgres;

--
-- Name: ingredient_ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ingredient_ingredient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ingredient_ingredient_id_seq OWNER TO postgres;

--
-- Name: ingredient_ingredient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ingredient_ingredient_id_seq OWNED BY public.ingredient.ingredient_id;


--
-- Name: recipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipe (
    recipe_id integer NOT NULL,
    name character varying(100) NOT NULL,
    cuisine_id integer,
    difficulty_id integer,
    instructions text,
    cooking_time_minutes integer
);


ALTER TABLE public.recipe OWNER TO postgres;

--
-- Name: recipe_recipe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipe_recipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.recipe_recipe_id_seq OWNER TO postgres;

--
-- Name: recipe_recipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipe_recipe_id_seq OWNED BY public.recipe.recipe_id;


--
-- Name: recipeingredient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recipeingredient (
    recipe_ingredient_id integer NOT NULL,
    recipe_id integer,
    ingredient_id integer,
    quantity character varying(50)
);


ALTER TABLE public.recipeingredient OWNER TO postgres;

--
-- Name: recipeingredient_recipe_ingredient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recipeingredient_recipe_ingredient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.recipeingredient_recipe_ingredient_id_seq OWNER TO postgres;

--
-- Name: recipeingredient_recipe_ingredient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recipeingredient_recipe_ingredient_id_seq OWNED BY public.recipeingredient.recipe_ingredient_id;


--
-- Name: cuisine cuisine_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuisine ALTER COLUMN cuisine_id SET DEFAULT nextval('public.cuisine_cuisine_id_seq'::regclass);


--
-- Name: difficulty difficulty_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.difficulty ALTER COLUMN difficulty_id SET DEFAULT nextval('public.difficulty_difficulty_id_seq'::regclass);


--
-- Name: ingredient ingredient_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient ALTER COLUMN ingredient_id SET DEFAULT nextval('public.ingredient_ingredient_id_seq'::regclass);


--
-- Name: recipe recipe_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipe ALTER COLUMN recipe_id SET DEFAULT nextval('public.recipe_recipe_id_seq'::regclass);


--
-- Name: recipeingredient recipe_ingredient_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipeingredient ALTER COLUMN recipe_ingredient_id SET DEFAULT nextval('public.recipeingredient_recipe_ingredient_id_seq'::regclass);


--
-- Data for Name: cuisine; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cuisine (cuisine_id, name) FROM stdin;
1	Italian
2	Mexican
3	Indian
4	Chinese
5	American
6	French
7	Japanese
8	Mediterranean
9	Thai
10	Korean
\.


--
-- Data for Name: difficulty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.difficulty (difficulty_id, level) FROM stdin;
1	Easy
2	Medium
3	Hard
\.


--
-- Data for Name: ingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ingredient (ingredient_id, name) FROM stdin;
1	Tomato
2	Onion
3	Garlic
4	Chicken
5	Pasta
6	Cheese
7	Rice
8	Beans
9	Beef
10	Potato
11	Egg
12	Milk
13	Flour
14	Butter
15	Olive Oil
16	Bell Pepper
17	Salt
18	Sugar
19	Lemon
20	Spinach
21	Basil
22	Mushroom
23	Carrot
24	Fish
25	Shrimp
26	Chili
27	Soy Sauce
28	Ginger
29	Cilantro
30	Mint
31	Cucumber
32	Zucchini
33	Eggplant
34	Lettuce
35	Bread
36	Yogurt
37	Honey
38	Cinnamon
39	Nutmeg
40	Bacon
41	Sausage
42	Corn
43	Broccoli
44	Cauliflower
45	Apple
46	Orange
47	Peanut
48	Chocolate
49	Vanilla
50	Strawberry
\.


--
-- Data for Name: recipe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipe (recipe_id, name, cuisine_id, difficulty_id, instructions, cooking_time_minutes) FROM stdin;
1	Spaghetti Carbonara	1	2	Cook pasta. Mix egg and cheese. Add bacon.	30
2	Chicken Tikka Masala	3	3	Marinate chicken. Cook in tomato and cream sauce.	50
3	Beef Tacos	2	1	Cook beef. Assemble tacos with toppings.	20
4	Sushi Rolls	7	3	Cook rice. Roll with fish and vegetables.	60
5	Margarita Pizza	1	2	Prepare dough. Add tomato, basil, and cheese.	45
6	Pad Thai	9	2	Cook noodles. Stir fry with shrimp and sauce.	35
7	Korean Bibimbap	10	2	Prepare rice. Arrange vegetables and egg on top.	40
8	Caesar Salad	5	1	Mix lettuce, dressing, and croutons.	15
9	Chocolate Cake	6	2	Mix ingredients. Bake until set.	60
10	Vegetable Stir Fry	4	1	Stir fry vegetables with sauce.	20
11	Lasagna	1	3	Layer pasta, meat sauce, and cheese. Bake.	70
12	Butter Chicken	3	3	Cook chicken in butter and tomato sauce.	60
13	Spring Rolls	4	2	Fill wrappers with vegetables. Fry until crispy.	30
14	French Omelette	6	1	Whisk eggs. Cook in butter until soft.	10
15	Miso Soup	7	1	Boil miso paste and dashi. Add tofu and seaweed.	15
16	Tuna Salad	5	1	Mix tuna, mayonnaise, and vegetables.	10
17	Falafel	8	2	Blend chickpeas. Fry into balls.	40
18	Green Curry	9	3	Cook curry paste with coconut milk and chicken.	45
19	Bulgogi	10	3	Marinate beef. Grill or stir fry.	50
20	Mac and Cheese	5	1	Cook pasta. Mix with cheese sauce.	25
21	Fish Tacos	2	2	Cook fish. Assemble tacos with toppings.	25
22	Stuffed Bell Peppers	8	2	Fill peppers with rice and meat. Bake.	50
23	Ratatouille	6	2	Layer vegetables. Cook with tomato sauce.	60
24	Fried Rice	4	1	Stir fry rice with vegetables and egg.	20
25	Chicken Parmesan	1	3	Bread chicken. Cook with tomato sauce and cheese.	50
26	BBQ Ribs	5	3	Slow cook ribs with BBQ sauce.	120
27	Pancakes	5	1	Mix batter. Cook on griddle until fluffy.	20
28	Crepes	6	2	Prepare batter. Cook thin pancakes.	25
29	Tom Yum Soup	9	2	Boil broth with shrimp, chili, and lemongrass.	40
30	Kimchi Stew	10	2	Cook kimchi with pork and tofu.	50
\.


--
-- Data for Name: recipeingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recipeingredient (recipe_ingredient_id, recipe_id, ingredient_id, quantity) FROM stdin;
1	1	5	200g
2	1	11	2
3	1	6	50g
4	1	39	100g
5	2	4	500g
6	2	1	2
7	2	12	100ml
8	3	9	300g
9	3	8	100g
10	3	17	to taste
11	4	7	200g
12	4	24	100g
13	4	31	1
14	5	1	100g
15	5	6	150g
16	5	21	to taste
17	6	5	200g
18	6	25	150g
19	6	27	2 tbsp
20	7	7	200g
21	7	23	1
22	7	11	1
23	8	34	200g
24	8	17	to taste
25	9	48	100g
26	9	13	200g
27	9	14	100g
28	10	16	200g
29	10	22	100g
30	10	23	1
31	11	5	300g
32	11	9	300g
33	11	6	200g
34	12	4	500g
35	12	1	2
36	12	14	50g
37	13	16	200g
38	13	23	1
39	13	14	for frying
40	14	11	3
41	14	14	20g
42	15	14	20g
43	15	26	20g
44	16	46	100g
45	16	19	2 tbsp
46	16	34	50g
\.


--
-- Name: cuisine_cuisine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cuisine_cuisine_id_seq', 10, true);


--
-- Name: difficulty_difficulty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.difficulty_difficulty_id_seq', 3, true);


--
-- Name: ingredient_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ingredient_ingredient_id_seq', 50, true);


--
-- Name: recipe_recipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipe_recipe_id_seq', 30, true);


--
-- Name: recipeingredient_recipe_ingredient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recipeingredient_recipe_ingredient_id_seq', 46, true);


--
-- Name: cuisine cuisine_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuisine
    ADD CONSTRAINT cuisine_name_key UNIQUE (name);


--
-- Name: cuisine cuisine_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cuisine
    ADD CONSTRAINT cuisine_pkey PRIMARY KEY (cuisine_id);


--
-- Name: difficulty difficulty_level_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.difficulty
    ADD CONSTRAINT difficulty_level_key UNIQUE (level);


--
-- Name: difficulty difficulty_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.difficulty
    ADD CONSTRAINT difficulty_pkey PRIMARY KEY (difficulty_id);


--
-- Name: ingredient ingredient_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT ingredient_name_key UNIQUE (name);


--
-- Name: ingredient ingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredient
    ADD CONSTRAINT ingredient_pkey PRIMARY KEY (ingredient_id);


--
-- Name: recipe recipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_pkey PRIMARY KEY (recipe_id);


--
-- Name: recipeingredient recipeingredient_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipeingredient
    ADD CONSTRAINT recipeingredient_pkey PRIMARY KEY (recipe_ingredient_id);


--
-- Name: recipe recipe_cuisine_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_cuisine_id_fkey FOREIGN KEY (cuisine_id) REFERENCES public.cuisine(cuisine_id);


--
-- Name: recipe recipe_difficulty_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_difficulty_id_fkey FOREIGN KEY (difficulty_id) REFERENCES public.difficulty(difficulty_id);


--
-- Name: recipeingredient recipeingredient_ingredient_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipeingredient
    ADD CONSTRAINT recipeingredient_ingredient_id_fkey FOREIGN KEY (ingredient_id) REFERENCES public.ingredient(ingredient_id) ON DELETE CASCADE;


--
-- Name: recipeingredient recipeingredient_recipe_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recipeingredient
    ADD CONSTRAINT recipeingredient_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(recipe_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

