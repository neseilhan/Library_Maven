PGDMP                	        |            library    16.3    16.3 C    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33340    library    DATABASE     �   CREATE DATABASE library WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE library;
                postgres    false            �            1259    33724    author    TABLE     �   CREATE TABLE public.author (
    author_id integer NOT NULL,
    author_name character varying(100) NOT NULL,
    birth_date character varying(255) NOT NULL,
    country character varying(255)
);
    DROP TABLE public.author;
       public         heap    postgres    false            �            1259    33723    author_author_id_seq    SEQUENCE     �   CREATE SEQUENCE public.author_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.author_author_id_seq;
       public          postgres    false    216            �           0    0    author_author_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.author_author_id_seq OWNED BY public.author.author_id;
          public          postgres    false    215            �            1259    33735    book    TABLE     	  CREATE TABLE public.book (
    book_author_id integer NOT NULL,
    book_id integer NOT NULL,
    book_publisher_id integer NOT NULL,
    stock integer NOT NULL,
    book_name character varying(100) NOT NULL,
    publication_year character varying(255) NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    33732    book_book_author_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_book_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.book_book_author_id_seq;
       public          postgres    false    220            �           0    0    book_book_author_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.book_book_author_id_seq OWNED BY public.book.book_author_id;
          public          postgres    false    217            �            1259    33733    book_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.book_book_id_seq;
       public          postgres    false    220            �           0    0    book_book_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.book_book_id_seq OWNED BY public.book.book_id;
          public          postgres    false    218            �            1259    33734    book_book_publisher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_book_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.book_book_publisher_id_seq;
       public          postgres    false    220            �           0    0    book_book_publisher_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.book_book_publisher_id_seq OWNED BY public.book.book_publisher_id;
          public          postgres    false    219            �            1259    33745    book_borrowing    TABLE     �   CREATE TABLE public.book_borrowing (
    book_borrowing_id integer NOT NULL,
    borrowing_book_id integer NOT NULL,
    borrowing_date date NOT NULL,
    return_date date NOT NULL,
    borrower_name character varying(100) NOT NULL
);
 "   DROP TABLE public.book_borrowing;
       public         heap    postgres    false            �            1259    33743 $   book_borrowing_book_borrowing_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_borrowing_book_borrowing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.book_borrowing_book_borrowing_id_seq;
       public          postgres    false    223            �           0    0 $   book_borrowing_book_borrowing_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.book_borrowing_book_borrowing_id_seq OWNED BY public.book_borrowing.book_borrowing_id;
          public          postgres    false    221            �            1259    33744 $   book_borrowing_borrowing_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_borrowing_borrowing_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.book_borrowing_borrowing_book_id_seq;
       public          postgres    false    223            �           0    0 $   book_borrowing_borrowing_book_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.book_borrowing_borrowing_book_id_seq OWNED BY public.book_borrowing.borrowing_book_id;
          public          postgres    false    222            �            1259    33754    book_category    TABLE     t   CREATE TABLE public.book_category (
    book_category_id integer NOT NULL,
    category_book_id integer NOT NULL
);
 !   DROP TABLE public.book_category;
       public         heap    postgres    false            �            1259    33752 "   book_category_book_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_category_book_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.book_category_book_category_id_seq;
       public          postgres    false    226            �           0    0 "   book_category_book_category_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.book_category_book_category_id_seq OWNED BY public.book_category.book_category_id;
          public          postgres    false    224            �            1259    33753 "   book_category_category_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_category_category_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.book_category_category_book_id_seq;
       public          postgres    false    226            �           0    0 "   book_category_category_book_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.book_category_category_book_id_seq OWNED BY public.book_category.category_book_id;
          public          postgres    false    225            �            1259    33762    category    TABLE     �   CREATE TABLE public.category (
    category_id integer NOT NULL,
    category_name character varying(100) NOT NULL,
    description character varying(255) NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    33761    category_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.category_category_id_seq;
       public          postgres    false    228            �           0    0    category_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;
          public          postgres    false    227            �            1259    33769 	   publisher    TABLE     �   CREATE TABLE public.publisher (
    publisher_id integer NOT NULL,
    publisher_name character varying(100) NOT NULL,
    address character varying(255),
    establishment character varying(255) NOT NULL
);
    DROP TABLE public.publisher;
       public         heap    postgres    false            �            1259    33768    publisher_publisher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.publisher_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.publisher_publisher_id_seq;
       public          postgres    false    230                        0    0    publisher_publisher_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.publisher_publisher_id_seq OWNED BY public.publisher.publisher_id;
          public          postgres    false    229            7           2604    33727    author author_id    DEFAULT     t   ALTER TABLE ONLY public.author ALTER COLUMN author_id SET DEFAULT nextval('public.author_author_id_seq'::regclass);
 ?   ALTER TABLE public.author ALTER COLUMN author_id DROP DEFAULT;
       public          postgres    false    215    216    216            8           2604    33738    book book_author_id    DEFAULT     z   ALTER TABLE ONLY public.book ALTER COLUMN book_author_id SET DEFAULT nextval('public.book_book_author_id_seq'::regclass);
 B   ALTER TABLE public.book ALTER COLUMN book_author_id DROP DEFAULT;
       public          postgres    false    217    220    220            9           2604    33739    book book_id    DEFAULT     l   ALTER TABLE ONLY public.book ALTER COLUMN book_id SET DEFAULT nextval('public.book_book_id_seq'::regclass);
 ;   ALTER TABLE public.book ALTER COLUMN book_id DROP DEFAULT;
       public          postgres    false    218    220    220            :           2604    33740    book book_publisher_id    DEFAULT     �   ALTER TABLE ONLY public.book ALTER COLUMN book_publisher_id SET DEFAULT nextval('public.book_book_publisher_id_seq'::regclass);
 E   ALTER TABLE public.book ALTER COLUMN book_publisher_id DROP DEFAULT;
       public          postgres    false    220    219    220            ;           2604    33748     book_borrowing book_borrowing_id    DEFAULT     �   ALTER TABLE ONLY public.book_borrowing ALTER COLUMN book_borrowing_id SET DEFAULT nextval('public.book_borrowing_book_borrowing_id_seq'::regclass);
 O   ALTER TABLE public.book_borrowing ALTER COLUMN book_borrowing_id DROP DEFAULT;
       public          postgres    false    221    223    223            <           2604    33749     book_borrowing borrowing_book_id    DEFAULT     �   ALTER TABLE ONLY public.book_borrowing ALTER COLUMN borrowing_book_id SET DEFAULT nextval('public.book_borrowing_borrowing_book_id_seq'::regclass);
 O   ALTER TABLE public.book_borrowing ALTER COLUMN borrowing_book_id DROP DEFAULT;
       public          postgres    false    222    223    223            =           2604    33757    book_category book_category_id    DEFAULT     �   ALTER TABLE ONLY public.book_category ALTER COLUMN book_category_id SET DEFAULT nextval('public.book_category_book_category_id_seq'::regclass);
 M   ALTER TABLE public.book_category ALTER COLUMN book_category_id DROP DEFAULT;
       public          postgres    false    226    224    226            >           2604    33758    book_category category_book_id    DEFAULT     �   ALTER TABLE ONLY public.book_category ALTER COLUMN category_book_id SET DEFAULT nextval('public.book_category_category_book_id_seq'::regclass);
 M   ALTER TABLE public.book_category ALTER COLUMN category_book_id DROP DEFAULT;
       public          postgres    false    225    226    226            ?           2604    33765    category category_id    DEFAULT     |   ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);
 C   ALTER TABLE public.category ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    227    228    228            @           2604    33772    publisher publisher_id    DEFAULT     �   ALTER TABLE ONLY public.publisher ALTER COLUMN publisher_id SET DEFAULT nextval('public.publisher_publisher_id_seq'::regclass);
 E   ALTER TABLE public.publisher ALTER COLUMN publisher_id DROP DEFAULT;
       public          postgres    false    229    230    230            �          0    33724    author 
   TABLE DATA           M   COPY public.author (author_id, author_name, birth_date, country) FROM stdin;
    public          postgres    false    216   �P       �          0    33735    book 
   TABLE DATA           n   COPY public.book (book_author_id, book_id, book_publisher_id, stock, book_name, publication_year) FROM stdin;
    public          postgres    false    220   Q       �          0    33745    book_borrowing 
   TABLE DATA           z   COPY public.book_borrowing (book_borrowing_id, borrowing_book_id, borrowing_date, return_date, borrower_name) FROM stdin;
    public          postgres    false    223   �Q       �          0    33754    book_category 
   TABLE DATA           K   COPY public.book_category (book_category_id, category_book_id) FROM stdin;
    public          postgres    false    226   �Q       �          0    33762    category 
   TABLE DATA           K   COPY public.category (category_id, category_name, description) FROM stdin;
    public          postgres    false    228   R       �          0    33769 	   publisher 
   TABLE DATA           Y   COPY public.publisher (publisher_id, publisher_name, address, establishment) FROM stdin;
    public          postgres    false    230   �R                  0    0    author_author_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.author_author_id_seq', 6, true);
          public          postgres    false    215                       0    0    book_book_author_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.book_book_author_id_seq', 1, false);
          public          postgres    false    217                       0    0    book_book_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.book_book_id_seq', 6, true);
          public          postgres    false    218                       0    0    book_book_publisher_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.book_book_publisher_id_seq', 1, false);
          public          postgres    false    219                       0    0 $   book_borrowing_book_borrowing_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.book_borrowing_book_borrowing_id_seq', 2, true);
          public          postgres    false    221                       0    0 $   book_borrowing_borrowing_book_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.book_borrowing_borrowing_book_id_seq', 1, false);
          public          postgres    false    222                       0    0 "   book_category_book_category_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.book_category_book_category_id_seq', 1, false);
          public          postgres    false    224                       0    0 "   book_category_category_book_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.book_category_category_book_id_seq', 1, false);
          public          postgres    false    225            	           0    0    category_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.category_category_id_seq', 6, true);
          public          postgres    false    227            
           0    0    publisher_publisher_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.publisher_publisher_id_seq', 6, true);
          public          postgres    false    229            B           2606    33731    author author_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (author_id);
 <   ALTER TABLE ONLY public.author DROP CONSTRAINT author_pkey;
       public            postgres    false    216            F           2606    33751 "   book_borrowing book_borrowing_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.book_borrowing
    ADD CONSTRAINT book_borrowing_pkey PRIMARY KEY (book_borrowing_id);
 L   ALTER TABLE ONLY public.book_borrowing DROP CONSTRAINT book_borrowing_pkey;
       public            postgres    false    223            H           2606    33760     book_category book_category_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.book_category
    ADD CONSTRAINT book_category_pkey PRIMARY KEY (book_category_id, category_book_id);
 J   ALTER TABLE ONLY public.book_category DROP CONSTRAINT book_category_pkey;
       public            postgres    false    226    226            D           2606    33742    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    220            J           2606    33767    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    228            L           2606    33776    publisher publisher_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (publisher_id);
 B   ALTER TABLE ONLY public.publisher DROP CONSTRAINT publisher_pkey;
       public            postgres    false    230            M           2606    33777     book fk7m19ctfd2t5act0332cdxhanp    FK CONSTRAINT     �   ALTER TABLE ONLY public.book
    ADD CONSTRAINT fk7m19ctfd2t5act0332cdxhanp FOREIGN KEY (book_author_id) REFERENCES public.author(author_id);
 J   ALTER TABLE ONLY public.book DROP CONSTRAINT fk7m19ctfd2t5act0332cdxhanp;
       public          postgres    false    4674    220    216            P           2606    33797 (   book_category fkdc5nnunxn37j3d362x2c3w43    FK CONSTRAINT     �   ALTER TABLE ONLY public.book_category
    ADD CONSTRAINT fkdc5nnunxn37j3d362x2c3w43 FOREIGN KEY (book_category_id) REFERENCES public.book(book_id);
 R   ALTER TABLE ONLY public.book_category DROP CONSTRAINT fkdc5nnunxn37j3d362x2c3w43;
       public          postgres    false    226    220    4676            O           2606    33787 *   book_borrowing fkel6pymmunxu8cpnj9dj6bk0sp    FK CONSTRAINT     �   ALTER TABLE ONLY public.book_borrowing
    ADD CONSTRAINT fkel6pymmunxu8cpnj9dj6bk0sp FOREIGN KEY (borrowing_book_id) REFERENCES public.book(book_id);
 T   ALTER TABLE ONLY public.book_borrowing DROP CONSTRAINT fkel6pymmunxu8cpnj9dj6bk0sp;
       public          postgres    false    220    4676    223            Q           2606    33792 )   book_category fkqdgmvsw9q58sqrwsbwl3s7360    FK CONSTRAINT     �   ALTER TABLE ONLY public.book_category
    ADD CONSTRAINT fkqdgmvsw9q58sqrwsbwl3s7360 FOREIGN KEY (category_book_id) REFERENCES public.category(category_id);
 S   ALTER TABLE ONLY public.book_category DROP CONSTRAINT fkqdgmvsw9q58sqrwsbwl3s7360;
       public          postgres    false    228    4682    226            N           2606    33782     book fkqicijk9o87ilo81sk2hetbvot    FK CONSTRAINT     �   ALTER TABLE ONLY public.book
    ADD CONSTRAINT fkqicijk9o87ilo81sk2hetbvot FOREIGN KEY (book_publisher_id) REFERENCES public.publisher(publisher_id);
 J   ALTER TABLE ONLY public.book DROP CONSTRAINT fkqicijk9o87ilo81sk2hetbvot;
       public          postgres    false    4684    220    230            �   i   x�3�.�LMW�I,*.���4�45�.OMI��2�tLO,�HTp�(�,*�4��4���,IMQ���KO���2�t+J��V�H-JJ-*�`W\�X�Z����� � Z      �   d   x�3�4BCSΐ�T�̢��̒� ϥ(1=?O!$��$?������ˌ��ޥ4/����̔˔$t�KQ �"�R�A�_>X��%W� ���      �   E   x�3�4�4202�50�5��3�,8�R�S2s2�8M�2f��H�9���BJ+sJ��sJ�b���� ښ�      �      x�3�4�2�4�2b3N3�=... ��      �   �   x�U�1n�0Eg�<@��2]:e��H�MT&�6�ۗ2��
�?���$������psmLF,������V�&����G����XfP,;��=�(��"Zu>��:|�c��~d���eӺwBn���3̺����$0�M=\(��;٘ކ�~��z��c�պ,�����н��Ξ0�i�+����טR���p�      �   �   x�}���0E��+��DL���:0#�KOi�>�R�/�.&n'797G��[���u4BE1 �ZePz2�l^	q���}��2O�(L�������0X��*�G��|�j;���mÄ��t#�x��t��G(F��5��,��/k���K:�     