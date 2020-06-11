--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO reidashwill;

--
-- Name: quotes; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.quotes (
    id bigint NOT NULL,
    content character varying,
    author character varying
);


ALTER TABLE public.quotes OWNER TO reidashwill;

--
-- Name: quotes_id_seq; Type: SEQUENCE; Schema: public; Owner: reidashwill
--

CREATE SEQUENCE public.quotes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quotes_id_seq OWNER TO reidashwill;

--
-- Name: quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reidashwill
--

ALTER SEQUENCE public.quotes_id_seq OWNED BY public.quotes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO reidashwill;

--
-- Name: users; Type: TABLE; Schema: public; Owner: reidashwill
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying,
    email character varying,
    password_digest character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO reidashwill;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: reidashwill
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO reidashwill;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: reidashwill
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: quotes id; Type: DEFAULT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.quotes ALTER COLUMN id SET DEFAULT nextval('public.quotes_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-06-08 16:39:57.408932	2020-06-08 16:39:57.408932
\.


--
-- Data for Name: quotes; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.quotes (id, content, author) FROM stdin;
183	test	test
136	A man who stands for nothing will fall for anything.	Malcolm X
137	We are nonviolent with people who are nonviolent with us.	Malcolm X
138	Don’t be in a hurry to condemn because he doesn’t do what you do or think as you think or as fast. There was a time when you didn’t know what you know today.	Malcolm X
139	We didn’t land on Plymouth Rock, Plymouth Rock landed on us	Malcolm X
140	If you’re not ready to die for it, put the word ‘freedom’ out of your vocabulary.	Malcolm X
141	Children learn more from what you are than what you teach.	W.E.B. DuBois
142	Either America will destroy ignorance or ignorance will destroy the United States.	W.E.B. DuBois
143	The cost of liberty is less than the price of repression.	W.E.B. DuBois
144	I believe that all men, black, brown, and white, are brothers.	W.E.B. DuBois
145	The problem of the twentieth century is the problem of the color line.	W.E.B. DuBois
146	An individual has not started living until he can rise above the narrow confines of his individualistic concerns to the broader concerns of all humanity.	Martin Luther King Jr.
147	Shallow understanding from people of good will is more frustrating than absolute misunderstanding from people of ill will.	Martin Luther King Jr.
148	Let no man pull you so low as to hate him.	Martin Luther King Jr.
149	A man who won’t die for something is not fit to live.	Martin Luther King Jr.
150	Change does not roll in on the wheels of inevitability, but comes through continuous struggle.	Martin Luther King Jr.
151	Struggle is a never ending process. Freedom is never really won, you earn it and win it in every generation.	Coretta Scott King
152	If you are neutral in situations of injustice, you have chosen the side of the oppressor.	Desmond Tutu
153	Racism is not getting worse, it’s getting filmed.	Will Smith
154	In a racist society it is not enough to be non-racist, we must be anti-racist.	Angela Davis
155	People don’t realize what’s really going on in this country. There are a lot things that are going on that are unjust. People aren’t being held accountable for. And that’s something that needs to change. That’s something that this country stands for: freedom, liberty and justice for all.	Colin Kaepernick
156	No one is born hating another person because of the color of his skin, or his background, or his religion. People must learn to hate, and if they can learn to hate, they can be taught to love, for love comes more naturally to the human heart than its opposite	Nelson Mandela
157	We don’t want to see Targets burning. We want to see the system that sets up for systemic racism burned to the ground.	Killer Mike
158	As long as people can be judged by the color of their skin, the problem is not solved.	Oprah Winfrey
159	If you want to do something courageous, try Love.	Sean King
160	How far can you go in life if you don't love yourself?	Sean King
161	You cannot stop this with enforcement alone.	Sean King
162	We want to see a wold where black lives matter in order for us to get a world where all of our humanity is respected	Alicia Garza
163	Police violence is the tip of the iceburg when it relates to the conditions overall of black people across the globe	Alicia Garza
164	Saying 'black lives matter' both literally and figuratively restores peoples dignity	Alicia Garza
165	What is the impact of not being valued? How do you measure the loss of what a human being does not receive?	Patrice Cullors
166	Racism is still with us. But it is up to us to prepare our children for what they have to meet, and, hopefully, we shall overcome.	Rosa Parks
167	People always say that I didn’t give up my seat because I was tired, but that isn’t true. I was not tired physically … No, the only tired I was, was tired of giving in.	Rosa Parks
168	Stand for something or you will fall for anything. Today’s mighty oak is yesterday’s nut that held its ground.	Rosa Parks
169	Our freedom is threatened every time one of our young people is killed by another child… every time a person gets stopped and beaten by the police because of the color of their skin.	Rosa Parks
170	There were times when it would have been easy to fall apart or to go in the opposite direction, but somehow I felt that if I took one more step, someone would come along to join me.	Rosa Parks
171	I would like to be remembered as a person who wanted to be free ... so other people would be also free.	Rosa Parks
172	I had reasoned this out in my mind; there was on of two things I had a right to, liberty or death; if I could not have one, I would have the other; for no man should take me alive.	Harriet Tubman
173	Every great dream begins with a dreamer. Always remember, you have within you the strength, the patience, and the passion to reach for the stars to change the world.	Harriet Tubman
174	When they go low, we go high.	Michelle Obama
175	Change doesn't happen without risk taking	Michelle Obama
176	It’s up to all of us – Black, white, everyone – no matter how well-meaning we think we might be, to do the honest, uncomfortable work of rooting it out.	Michelle Obama
177	No more seeing people of colour as less than human. We can no longer look away.	Beyoncé
178	Hate is too great a burden to bear. It injures the hater more than it injures the hated.	Coretta Scott King
179	A riot is the language of the unheard.	Dr. Martin Luther King, Jr.
180	We who believe in freedom cannot rest	Ella Baker
181	Until the killing of black men, black mothers' sons, becomes as important to the rest of the country as the killing of a white mother's sons, we who believe in freedom cannot rest until this happens.	Ella Baker
182	The beauty of anti-racism is that you don’t have to pretend to be free of racism to be an anti-racist. Anti-racism is the commitment to fight racism wherever you find it, including in yourself. And it’s the only way forward.	Ijeoma Oluo
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.schema_migrations (version) FROM stdin;
20200608163654
20200608225403
20200609163847
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: reidashwill
--

COPY public.users (id, name, email, password_digest, created_at, updated_at) FROM stdin;
1	\N	test@test.com	$2a$12$6bG/vDh7X6bb8wVtVMRUMePkjn.2dvG9OtoTjxeXgn5chYl0iolvy	2020-06-09 17:24:59.051725	2020-06-09 17:24:59.051725
\.


--
-- Name: quotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: reidashwill
--

SELECT pg_catalog.setval('public.quotes_id_seq', 183, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: reidashwill
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: quotes quotes_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.quotes
    ADD CONSTRAINT quotes_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: reidashwill
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

