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
-- Name: books; Type: TABLE; Schema: public; Owner: stephenstocking
--

CREATE TABLE public.books (
    id integer NOT NULL,
    title character varying(100),
    author character varying(100),
    synopsis character varying(1000),
    video_url character varying(100),
    image_url character varying(100),
    cover_url character varying(100),
    reader character varying(100),
    views integer,
    date_added date,
    likes smallint,
    hero_img_url character varying(100)
);


ALTER TABLE public.books OWNER TO stephenstocking;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: stephenstocking
--

CREATE SEQUENCE public.books_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO stephenstocking;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: stephenstocking
--

ALTER SEQUENCE public.books_id_seq OWNED BY public.books.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: stephenstocking
--

ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public.books_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: stephenstocking
--

COPY public.books (id, title, author, synopsis, video_url, image_url, cover_url, reader, views, date_added, likes, hero_img_url) FROM stdin;
4	Ocean Meets Sky	The Fan Brothers	It's a good day for sailing. Finn lives by the sea and the sea lives by him. Every time he looks out his window it's a constant reminder of the stories his grandfather told him about the place where the ocean meets the sky. Where whales and jellyfish soar and birds and castles float. Finn's grandfather is gone now but Finn knows the perfect way to honor him. He'll build his own ship and sail out to find this magical place himself! And when he arrives, maybe, just maybe, he'll find something he didn't know he was looking for.	https://www.youtube.com/watch?v=islhv12c7ms	https://i.ibb.co/d76tW6g/oceanmeetssky.jpg	https://i.ibb.co/d76tW6g/oceanmeetssky.jpg	Rachael Duddy	0	2020-06-22	0	https://i.ibb.co/wRy89RX/oceanmeetssky-hero.jpg
1	A Day in the Life of Marlon Bundo	John Oliver	Meet Marlon Bundo, a lonely bunny who lives with his Grampa, Mike Pence - the Vice President of the United States. But on this Very Special Day, Marlon's life is about to change forever... With its message of tolerance and advocacy, this charming children's book explores issues of same sex marriage and democracy. Sweet, funny, and beautifully illustrated, this book is dedicated to every bunny who has ever felt different.	https://www.youtube.com/watch?v=-0o5LSi9wks&feature=youtu.be	https://i.ibb.co/P91Kvb2/adayinthelifeofmarlonbundo-rachael.png	https://i.ibb.co/SRbv9r2/marlonbundo.jpg	Rachael Duddy	0	2020-06-22	0	https://i.ibb.co/dmcdP8s/bundo-bg.jpg
3	Julián Is A Mermaid	Jessica Love	While riding the subway home from the pool with his abuela one day, Julián notices three women spectacularly dressed up. Their hair billows in brilliant hues, their dresses end in fishtails, and their joy fills the train car. When Julián gets home, daydreaming of the magic he's seen, all he can think about is dressing up just like the ladies in his own fabulous mermaid costume: a butter-yellow curtain for his tail, the fronds of a potted fern for his headdress. But what will Abuela think about the mess he makes — and even more importantly, what will she think about how Julián sees himself? Mesmerizing and full of heart, Jessica Love's author-illustrator debut is a jubilant picture of self-love and a radiant celebration of individuality.	https://youtu.be/W4dq__8t9Nk	https://i.ibb.co/pLkG8TS/julianisamermaid.jpg	https://i.ibb.co/pLkG8TS/julianisamermaid.jpg	Rachael Duddy	0	2020-06-22	0	https://i.ibb.co/4d5p4dW/julianisamermaid-hero.jpg
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: stephenstocking
--

SELECT pg_catalog.setval('public.books_id_seq', 5, true);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: stephenstocking
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: books books_video_url_key; Type: CONSTRAINT; Schema: public; Owner: stephenstocking
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_video_url_key UNIQUE (video_url);


--
-- PostgreSQL database dump complete
--

