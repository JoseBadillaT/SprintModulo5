PGDMP     8                    {            telovendo_inc    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25265    telovendo_inc    DATABASE     �   CREATE DATABASE telovendo_inc WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE telovendo_inc;
                postgres    false            �            1259    25286    clientes    TABLE     �   CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    nombre character varying(50),
    apellido character varying(50),
    direccion character varying(50)
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    25285    clientes_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_id_cliente_seq;
       public          postgres    false    218                       0    0    clientes_id_cliente_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;
          public          postgres    false    217            �            1259    25273 	   productos    TABLE     x  CREATE TABLE public.productos (
    sku integer NOT NULL,
    nombre_producto character varying(50),
    color character varying(50),
    precio integer NOT NULL,
    categoria character varying(50),
    stock integer NOT NULL,
    id_proveedor integer,
    CONSTRAINT productos_precio_check CHECK ((precio >= 0)),
    CONSTRAINT productos_stock_check CHECK ((stock >= 0))
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    25267    proveedores    TABLE     '  CREATE TABLE public.proveedores (
    id_corporativo integer NOT NULL,
    representante_legal character varying(50),
    nombre_proveedor character varying(50),
    telefono_1 integer,
    telefono_2 integer,
    correo_electronico character varying(50),
    categoria character varying(50)
);
    DROP TABLE public.proveedores;
       public         heap    postgres    false            �            1259    25266    proveedores_id_corporativo_seq    SEQUENCE     �   CREATE SEQUENCE public.proveedores_id_corporativo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.proveedores_id_corporativo_seq;
       public          postgres    false    215                       0    0    proveedores_id_corporativo_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.proveedores_id_corporativo_seq OWNED BY public.proveedores.id_corporativo;
          public          postgres    false    214            o           2604    25289    clientes id_cliente    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    218    217    218            n           2604    25270    proveedores id_corporativo    DEFAULT     �   ALTER TABLE ONLY public.proveedores ALTER COLUMN id_corporativo SET DEFAULT nextval('public.proveedores_id_corporativo_seq'::regclass);
 I   ALTER TABLE public.proveedores ALTER COLUMN id_corporativo DROP DEFAULT;
       public          postgres    false    214    215    215                      0    25286    clientes 
   TABLE DATA           K   COPY public.clientes (id_cliente, nombre, apellido, direccion) FROM stdin;
    public          postgres    false    218   O       	          0    25273 	   productos 
   TABLE DATA           h   COPY public.productos (sku, nombre_producto, color, precio, categoria, stock, id_proveedor) FROM stdin;
    public          postgres    false    216   �                 0    25267    proveedores 
   TABLE DATA           �   COPY public.proveedores (id_corporativo, representante_legal, nombre_proveedor, telefono_1, telefono_2, correo_electronico, categoria) FROM stdin;
    public          postgres    false    215                     0    0    clientes_id_cliente_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 5, true);
          public          postgres    false    217                       0    0    proveedores_id_corporativo_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.proveedores_id_corporativo_seq', 5, true);
          public          postgres    false    214            w           2606    25291    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    218            u           2606    25279    productos productos_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (sku);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    216            s           2606    25272    proveedores proveedores_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id_corporativo);
 F   ALTER TABLE ONLY public.proveedores DROP CONSTRAINT proveedores_pkey;
       public            postgres    false    215            x           2606    25280 %   productos productos_id_proveedor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_proveedor_fkey FOREIGN KEY (id_proveedor) REFERENCES public.proveedores(id_corporativo);
 O   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_id_proveedor_fkey;
       public          postgres    false    215    216    3187               �   x�]ͱ�0����} c
H�������^R��Zxz������bDh	7hP�
F}��nO�5Q`UB�L�#��C�-v��I�G]��i]`�N+�g���8
1��f��h���z�+ń�4���]Puϋ�$	2\S>�?�}��z��D�      	     x���QN�0�g�� (�Z��e/nb RWN;�'�R���������Zv����_)R�48��/*��8Zp��u!$Z���-$�a5��)R���?��� n^����*Y2煋�|����>�ŉ�᷅5���g��h�|IQ�@k�;2�%��'o�/�\ [�oy�0Grdy嫂J9V���� ��� !��E�L�º�Y{�j��*Fh����n-�����aO�!qd������o���'�Շg�R~~�`�>=6M�	4��         $  x�]��n�0��y�jMRFovA�.��v1���%)���KLhG���_�`�n`+6g�Ʋ���y�O���oм4���Z����RI	�i�M�K�=�wL�\M����;���%�#�ޜ<�+�/3��ʜ��u={�d(b{	������$H����X\�P��=��;�F�-��b���������9��7������C��\�v0Q|k�h��*�C[<B#U5�ᱠ�3M�?m�BBJ���2�u>u �(����P�'�9��-������v;�O�;C8�Oe�YE�����     