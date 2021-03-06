--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

-- Started on 2017-07-13 10:11:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2182 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 194 (class 1259 OID 16446)
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE address (
    id integer NOT NULL,
    way character varying,
    number integer,
    city character varying,
    state character varying,
    country character varying,
    id_user integer NOT NULL
);


ALTER TABLE address OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 16444)
-- Name: adress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adress_id_seq OWNER TO postgres;

--
-- TOC entry 2183 (class 0 OID 0)
-- Dependencies: 193
-- Name: adress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE adress_id_seq OWNED BY address.id;


--
-- TOC entry 192 (class 1259 OID 16428)
-- Name: item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE item (
    id integer NOT NULL,
    id_product integer NOT NULL,
    id_order integer NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE item OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 16426)
-- Name: item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE item_id_seq OWNER TO postgres;

--
-- TOC entry 2184 (class 0 OID 0)
-- Dependencies: 191
-- Name: item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE item_id_seq OWNED BY item.id;


--
-- TOC entry 190 (class 1259 OID 16415)
-- Name: order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "order" (
    id integer NOT NULL,
    id_user integer NOT NULL,
    value real NOT NULL,
    date character varying NOT NULL
);


ALTER TABLE "order" OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 16413)
-- Name: order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE order_id_seq OWNER TO postgres;

--
-- TOC entry 2185 (class 0 OID 0)
-- Dependencies: 189
-- Name: order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE order_id_seq OWNED BY "order".id;


--
-- TOC entry 186 (class 1259 OID 16396)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE product (
    id integer NOT NULL,
    name character varying(111) NOT NULL,
    price real NOT NULL,
    description character varying(1111),
    image character varying(111) NOT NULL,
    category character varying(11) NOT NULL,
    subcategory character varying(11) NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE product OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16394)
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE product_id_seq OWNER TO postgres;

--
-- TOC entry 2186 (class 0 OID 0)
-- Dependencies: 185
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_id_seq OWNED BY product.id;


--
-- TOC entry 188 (class 1259 OID 16407)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "user" (
    id integer NOT NULL,
    name character varying(111) NOT NULL,
    email character varying(111) NOT NULL,
    password character varying(11) NOT NULL,
    phone integer,
    birth character varying
);


ALTER TABLE "user" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16405)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_id_seq OWNER TO postgres;

--
-- TOC entry 2187 (class 0 OID 0)
-- Dependencies: 187
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE user_id_seq OWNED BY "user".id;


--
-- TOC entry 2033 (class 2604 OID 16449)
-- Name: address id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY address ALTER COLUMN id SET DEFAULT nextval('adress_id_seq'::regclass);


--
-- TOC entry 2032 (class 2604 OID 16431)
-- Name: item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item ALTER COLUMN id SET DEFAULT nextval('item_id_seq'::regclass);


--
-- TOC entry 2031 (class 2604 OID 16418)
-- Name: order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order" ALTER COLUMN id SET DEFAULT nextval('order_id_seq'::regclass);


--
-- TOC entry 2029 (class 2604 OID 16399)
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product ALTER COLUMN id SET DEFAULT nextval('product_id_seq'::regclass);


--
-- TOC entry 2030 (class 2604 OID 16410)
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);


--
-- TOC entry 2175 (class 0 OID 16446)
-- Dependencies: 194
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO address (id, way, number, city, state, country, id_user) VALUES (3, 'Rua das Trevas', 874, 'Rotten', 'Tomato', 'Ibéria', 9);
INSERT INTO address (id, way, number, city, state, country, id_user) VALUES (4, 'Rua 109', 119, 'Fortaleza', 'CE', 'Brasil', 10);
INSERT INTO address (id, way, number, city, state, country, id_user) VALUES (2, 'Rua das Flores', 1936, 'Fortaleza', 'Ceará', 'Brasil', 1);


--
-- TOC entry 2188 (class 0 OID 0)
-- Dependencies: 193
-- Name: adress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adress_id_seq', 4, true);


--
-- TOC entry 2173 (class 0 OID 16428)
-- Dependencies: 192
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO item (id, id_product, id_order, quantity) VALUES (7, 4, 3, 1);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (8, 5, 3, 5);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (9, 2, 3, 2);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (10, 3, 4, 2);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (11, 5, 5, 2);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (12, 2, 6, 1);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (13, 3, 6, 2);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (14, 5, 6, 1);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (15, 4, 7, 1);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (17, 2, 9, 1);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (18, 3, 9, 1);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (19, 4, 10, 9);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (20, 4, 11, 2);
INSERT INTO item (id, id_product, id_order, quantity) VALUES (25, 4, 18, 7);


--
-- TOC entry 2189 (class 0 OID 0)
-- Dependencies: 191
-- Name: item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('item_id_seq', 25, true);


--
-- TOC entry 2171 (class 0 OID 16415)
-- Dependencies: 190
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "order" (id, id_user, value, date) VALUES (3, 9, 475, '12/07/2017 03:35:18');
INSERT INTO "order" (id, id_user, value, date) VALUES (4, 9, 70, '12/07/2017 05:22:41');
INSERT INTO "order" (id, id_user, value, date) VALUES (5, 9, 110, '12/07/2017 07:28:55');
INSERT INTO "order" (id, id_user, value, date) VALUES (6, 1, 195, '12/07/2017 07:32:10');
INSERT INTO "order" (id, id_user, value, date) VALUES (7, 1, 60, '12/07/2017 07:33:34');
INSERT INTO "order" (id, id_user, value, date) VALUES (9, 11, 105, '12/07/2017 18:20:08');
INSERT INTO "order" (id, id_user, value, date) VALUES (10, 11, 540, '12/07/2017 18:27:54');
INSERT INTO "order" (id, id_user, value, date) VALUES (11, 1, 120, '12/07/2017 21:45:21');
INSERT INTO "order" (id, id_user, value, date) VALUES (14, 9, 550, '12/07/2017 22:57:16');
INSERT INTO "order" (id, id_user, value, date) VALUES (18, 9, 700, '13/07/2017 06:43:06');


--
-- TOC entry 2190 (class 0 OID 0)
-- Dependencies: 189
-- Name: order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('order_id_seq', 18, true);


--
-- TOC entry 2167 (class 0 OID 16396)
-- Dependencies: 186
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO product (id, name, price, description, image, category, subcategory, quantity) VALUES (5, 'Common Day PS A', 55, 'Blusa casual xadrez marrom, cinza e creme manga curta Common Day PS A. Confeccionada em tecido plano 100% Algodão. Medidas: Ombro: 10cm/ Manga: 22cm/ Busto: 79cm/ Comprimento: 72cm/ Tamanho: P, M.', 'images/pc6.jpg', 'Roupas', 'Blusas', 6);
INSERT INTO product (id, name, price, description, image, category, subcategory, quantity) VALUES (2, 'Moonlight CT H', 70, 'Blusa social verde bebê Moonlight CT H. Confeccionada em tecido plano 100% Rayon. Medidas: Ombro: 10cm/ Manga: 62cm/ Busto: 98cm/ Comprimento: 64cm/ Tamanho: P.', 'images/pc.jpg', 'Roupas', 'Blusas', 0);
INSERT INTO product (id, name, price, description, image, category, subcategory, quantity) VALUES (3, 'Lifestyle AT', 35, 'Blusa casual rosa bebê Lifestyle AT. Confeccionada em tecido plano 100% Algodão. Medidas: Ombro: 10cm/ Manga: 15cm/ Busto: 98cm/ Comprimento: 75cm/ Tamanho: M.', 'images/pc1.jpg', 'Roupas', 'Blusas', 9);
INSERT INTO product (id, name, price, description, image, category, subcategory, quantity) VALUES (4, 'Common Day PR T', 60, 'Blusa casual xadrez marrom, cinza e creme Common Day PR T. Confeccionada em tecido plano 100% Algodão. Medidas: Ombro: 10cm/ Manga: 54cm/ Busto: 130cm/ Comprimento: 83cm/ Tamanho: P, M, G, GG.', 'images/pc3.jpg', 'Roupas', 'Blusas', 22);
INSERT INTO product (id, name, price, description, image, category, subcategory, quantity) VALUES (6, 'Casaco Peludo FD', 120, 'Casaco Peludo FD de alta qualidade, para eventos sociais. Confeccionada em tecido plano 100% Rayon. Medidas: Ombro: 10cm/ Manga: 62cm/ Busto: 98cm/ Comprimento: 64cm/ Tamanho: P,M,GG.', 'images/pc8.jpg', 'Roupas', 'Casacos', 22);
INSERT INTO product (id, name, price, description, image, category, subcategory, quantity) VALUES (7, 'Casaco Simples DRIOIET', 60, 'Casaco Simples DRIOIET vinho casual. Confeccionada em tecido plano 100% Algodão. Medidas: Ombro: 10cm/ Manga: 15cm/ Busto: 98cm/ Comprimento: 75cm/ Tamanho: M, PP.', 'images/pc9.jpg', 'Roupas', 'Casacos', 10);
INSERT INTO product (id, name, price, description, image, category, subcategory, quantity) VALUES (8, 'Flashlight Manga MB', 80, 'Blusa manga longa branca, para eventos formais Flashlight Manga MB. Confeccionada em tecido plano 100% Algodão. Medidas: Ombro: 10cm/ Manga: 54cm/ Busto: 130cm/ Comprimento: 83cm/ Tamanho: P, M, G, GG.', 'images/pc10.jpg', 'Roupas', 'Blusas', 31);
INSERT INTO product (id, name, price, description, image, category, subcategory, quantity) VALUES (9, 'Common Day SA T', 25, 'Blusa casualsimples cinza manga curta Common Day SA T. Confeccionada em tecido plano 100% Algodão. Medidas: Ombro: 10cm/ Manga: 22cm/ Busto: 79cm/ Comprimento: 72cm/ Tamanho: P, M.', 'images/pc11.jpg', 'Roupas', 'Blusas', 29);


--
-- TOC entry 2191 (class 0 OID 0)
-- Dependencies: 185
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_id_seq', 9, true);


--
-- TOC entry 2169 (class 0 OID 16407)
-- Dependencies: 188
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "user" (id, name, email, password, phone, birth) VALUES (9, 'Priscila Moura', 'priscila@gmail.com', 'pri123', 988547896, '25/04/1998');
INSERT INTO "user" (id, name, email, password, phone, birth) VALUES (10, 'Jonas Albuquerque', 'jonas@oi.com', '230415', 985709344, '23/04/1998');
INSERT INTO "user" (id, name, email, password, phone, birth) VALUES (11, 'Zé', 'ze@gmail.com', 'ze123', 0, '');
INSERT INTO "user" (id, name, email, password, phone, birth) VALUES (12, 'Dália Albuquerque', 'dalia@gmail.com', 'dalia123', 0, '');
INSERT INTO "user" (id, name, email, password, phone, birth) VALUES (1, 'Débora Moura', 'deboramoura@alu.ufc.br', 'debora123', 997913006, '05/07/1998');


--
-- TOC entry 2192 (class 0 OID 0)
-- Dependencies: 187
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_id_seq', 12, true);


--
-- TOC entry 2043 (class 2606 OID 16454)
-- Name: address adress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY address
    ADD CONSTRAINT adress_pkey PRIMARY KEY (id);


--
-- TOC entry 2041 (class 2606 OID 16433)
-- Name: item item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);


--
-- TOC entry 2039 (class 2606 OID 16420)
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


--
-- TOC entry 2035 (class 2606 OID 16404)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 2037 (class 2606 OID 16412)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 2044 (class 1259 OID 16494)
-- Name: fki_a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_a ON address USING btree (id_user);


--
-- TOC entry 2048 (class 2606 OID 16489)
-- Name: address adress_id_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY address
    ADD CONSTRAINT adress_id_user_fkey FOREIGN KEY (id_user) REFERENCES "user"(id);


--
-- TOC entry 2047 (class 2606 OID 16439)
-- Name: item item_id_order_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item
    ADD CONSTRAINT item_id_order_fkey FOREIGN KEY (id_order) REFERENCES "order"(id);


--
-- TOC entry 2046 (class 2606 OID 16434)
-- Name: item item_id_product_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY item
    ADD CONSTRAINT item_id_product_fkey FOREIGN KEY (id_product) REFERENCES product(id);


--
-- TOC entry 2045 (class 2606 OID 16421)
-- Name: order order_id_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT order_id_user_fkey FOREIGN KEY (id_user) REFERENCES "user"(id);


-- Completed on 2017-07-13 10:11:52

--
-- PostgreSQL database dump complete
--

