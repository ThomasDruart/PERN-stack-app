PGDMP         (                y            perntodo    13.2    13.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16421    perntodo    DATABASE     d   CREATE DATABASE perntodo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE perntodo;
                postgres    false            �            1259    16424    todo    TABLE     ^   CREATE TABLE public.todo (
    id integer NOT NULL,
    description character varying(256)
);
    DROP TABLE public.todo;
       public         heap    postgres    false            �            1259    16422    todo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.todo_id_seq;
       public          postgres    false    201            �           0    0    todo_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.todo_id_seq OWNED BY public.todo.id;
          public          postgres    false    200            "           2604    16427    todo id    DEFAULT     b   ALTER TABLE ONLY public.todo ALTER COLUMN id SET DEFAULT nextval('public.todo_id_seq'::regclass);
 6   ALTER TABLE public.todo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            �          0    16424    todo 
   TABLE DATA           /   COPY public.todo (id, description) FROM stdin;
    public          postgres    false    201   �	       �           0    0    todo_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.todo_id_seq', 3, true);
          public          postgres    false    200            $           2606    16429    todo todo_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.todo DROP CONSTRAINT todo_pkey;
       public            postgres    false    201            �   .   x�3��T�KMMQ(�WH�IM�SȭTHI-��2�&��X����� ��     