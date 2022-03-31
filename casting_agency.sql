PGDMP     ,                    z            casting_agency    14.2    14.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    32903    casting_agency    DATABASE     r   CREATE DATABASE casting_agency WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE casting_agency;
                postgres    false            �            1259    32914    Actors    TABLE     �   CREATE TABLE public."Actors" (
    id integer NOT NULL,
    name character varying NOT NULL,
    age integer,
    gender character varying
);
    DROP TABLE public."Actors";
       public         heap    postgres    false            �            1259    32913    Actors_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Actors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Actors_id_seq";
       public          postgres    false    212                       0    0    Actors_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Actors_id_seq" OWNED BY public."Actors".id;
          public          postgres    false    211            �            1259    32905    Movies    TABLE     �   CREATE TABLE public."Movies" (
    id integer NOT NULL,
    title character varying NOT NULL,
    release_date character varying
);
    DROP TABLE public."Movies";
       public         heap    postgres    false            �            1259    32904    Movies_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Movies_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Movies_id_seq";
       public          postgres    false    210                       0    0    Movies_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Movies_id_seq" OWNED BY public."Movies".id;
          public          postgres    false    209            �            1259    32922    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    postgres    false            f           2604    32917 	   Actors id    DEFAULT     j   ALTER TABLE ONLY public."Actors" ALTER COLUMN id SET DEFAULT nextval('public."Actors_id_seq"'::regclass);
 :   ALTER TABLE public."Actors" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            e           2604    32908 	   Movies id    DEFAULT     j   ALTER TABLE ONLY public."Movies" ALTER COLUMN id SET DEFAULT nextval('public."Movies_id_seq"'::regclass);
 :   ALTER TABLE public."Movies" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    32914    Actors 
   TABLE DATA           9   COPY public."Actors" (id, name, age, gender) FROM stdin;
    public          postgres    false    212   �       �          0    32905    Movies 
   TABLE DATA           ;   COPY public."Movies" (id, title, release_date) FROM stdin;
    public          postgres    false    210   �       �          0    32922    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          postgres    false    213   �                  0    0    Actors_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Actors_id_seq"', 12, true);
          public          postgres    false    211                       0    0    Movies_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Movies_id_seq"', 17, true);
          public          postgres    false    209            j           2606    32921    Actors Actors_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Actors"
    ADD CONSTRAINT "Actors_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Actors" DROP CONSTRAINT "Actors_pkey";
       public            postgres    false    212            h           2606    32912    Movies Movies_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Movies"
    ADD CONSTRAINT "Movies_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Movies" DROP CONSTRAINT "Movies_pkey";
       public            postgres    false    210            l           2606    32926 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            postgres    false    213            �   �   x�=�A� ������D�w�f��J�� i�ۗ�����#@ߕ=��J���v!�J�C��)x�shgk�m�먐E�9��P���G?���<�,Ѧ�?e��j�A���z*����`���04U���Z��1�"�J%��+!*jHy��v��mr�4M���M�      �   �   x�E�]n�  �g|�\��mH���%mheM�4ۮ_�3"��>�����<��/�en�4���>���Fy'�����ǖ#^Т8����os3/�}܍����i�_?�R,"s>Кi�&�!Ĕ�t��N�Kb�M(���P@�Y!�٣����Jg*��Z[�u���U����`��E`���Q�=F�S��s�c�S-|~ �z_      �      x������ � �     