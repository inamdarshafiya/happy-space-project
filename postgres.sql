PGDMP                         z            postgres    14.1    14.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    13754    postgres    DATABASE     l   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            ?           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3320                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            ?           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    32813    bookappointment    TABLE       CREATE TABLE public.bookappointment (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    number character varying(50),
    email character varying(50) NOT NULL,
    doctorname character varying(100),
    date character varying(50),
    "time" character varying(50)
);
 #   DROP TABLE public.bookappointment;
       public         heap    postgres    false            ?            1259    32812    bookappointment_id_seq    SEQUENCE     ?   ALTER TABLE public.bookappointment ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.bookappointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    211            ?            1259    32820    doctors    TABLE     ?   CREATE TABLE public.doctors (
    id integer NOT NULL,
    doctorname character varying(100),
    speciality character varying(100),
    image_path character varying(100)
);
    DROP TABLE public.doctors;
       public         heap    postgres    false            ?            1259    32819    doctors_id_seq    SEQUENCE     ?   ALTER TABLE public.doctors ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.doctors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    213            ?          0    32813    bookappointment 
   TABLE DATA           \   COPY public.bookappointment (id, name, number, email, doctorname, date, "time") FROM stdin;
    public          postgres    false    211   \       ?          0    32820    doctors 
   TABLE DATA           I   COPY public.doctors (id, doctorname, speciality, image_path) FROM stdin;
    public          postgres    false    213   ?       ?           0    0    bookappointment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.bookappointment_id_seq', 15, true);
          public          postgres    false    210            ?           0    0    doctors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.doctors_id_seq', 4, true);
          public          postgres    false    212            c           2606    32817 $   bookappointment bookappointment_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.bookappointment
    ADD CONSTRAINT bookappointment_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.bookappointment DROP CONSTRAINT bookappointment_pkey;
       public            postgres    false    211            ?   ?   x?u?M?@?u?.@?V?M%
?Dn??Aݸk???	ܖ!??q?G??[fX?1n@r????? v?@TYDY????A?g)??f?P???:?u4?+-? ????Yj??gl?????=?R?Я???ty|}???;?ι'X?<?      ?   p   x?u?K?0??s
.@m?7}J?LR??ۃ??~?JOxƛ?Zp?QXŜ?n????<=?fb?М?8Za????????m??5}z?z%s??PBAc?`?<(?^?S??B2     