PGDMP                          u            cuentasclaras    9.5.5    9.5.5 �    �	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           1262    24576    cuentasclaras    DATABASE        CREATE DATABASE cuentasclaras WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_CO.UTF-8' LC_CTYPE = 'es_CO.UTF-8';
    DROP DATABASE cuentasclaras;
             fvargas    false            
            2615    49293    autenticacion    SCHEMA        CREATE SCHEMA autenticacion;
    DROP SCHEMA autenticacion;
             fvargas    false                        2615    49420    core    SCHEMA        CREATE SCHEMA core;
    DROP SCHEMA core;
             fvargas    false            	            2615    32876 
   financiero    SCHEMA        CREATE SCHEMA financiero;
    DROP SCHEMA financiero;
             fvargas    false                        2615    32768 
   inventario    SCHEMA        CREATE SCHEMA inventario;
    DROP SCHEMA inventario;
             fvargas    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        2615    49325    ventas    SCHEMA        CREATE SCHEMA ventas;
    DROP SCHEMA ventas;
             fvargas    false                        3079    12435    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    49296    ROLES    TABLE     �   CREATE TABLE "ROLES" (
    "ID" integer NOT NULL,
    "NOMBRE" character varying(50) NOT NULL,
    "ESTADO" integer DEFAULT 1
);
 "   DROP TABLE autenticacion."ROLES";
       autenticacion         fvargas    false    10            �            1259    49294    ROLES_ID_seq    SEQUENCE     p   CREATE SEQUENCE "ROLES_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE autenticacion."ROLES_ID_seq";
       autenticacion       fvargas    false    10    213            �	           0    0    ROLES_ID_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE "ROLES_ID_seq" OWNED BY "ROLES"."ID";
            autenticacion       fvargas    false    212            �            1259    49305    USUARIOS    TABLE     x  CREATE TABLE "USUARIOS" (
    "ID" integer NOT NULL,
    "NOMBRES" character varying(100),
    "APELLIDOS" character varying(100),
    "DOCUMENTO" character varying(50),
    "TIPO_DOCUMENTO" integer,
    "DIRECCCION" text,
    "TELEFONO" text,
    "ID_ROL" integer,
    "USERNAME" character varying(50),
    "PASSWORD" character varying(50),
    "ESTADO" integer DEFAULT 1
);
 %   DROP TABLE autenticacion."USUARIOS";
       autenticacion         fvargas    false    10            �            1259    49303    USUARIOS_ID_seq    SEQUENCE     s   CREATE SEQUENCE "USUARIOS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE autenticacion."USUARIOS_ID_seq";
       autenticacion       fvargas    false    10    215            �	           0    0    USUARIOS_ID_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE "USUARIOS_ID_seq" OWNED BY "USUARIOS"."ID";
            autenticacion       fvargas    false    214            �            1259    49458    NEGOCIOS    TABLE     �   CREATE TABLE "NEGOCIOS" (
    "ID" integer NOT NULL,
    "NOMBRE" text,
    "DESCRIPCION" text,
    "LOGO" text,
    "URL" text,
    "LINK" text,
    "ID_PROPIETARIO" bigint,
    "NRO_EMPLEADOS" integer,
    "ESTADO" integer DEFAULT 1 NOT NULL
);
    DROP TABLE core."NEGOCIOS";
       core         fvargas    false    12            �            1259    49494    NEGOCIOS_DEPARTAMENTOS    TABLE     �   CREATE TABLE "NEGOCIOS_DEPARTAMENTOS" (
    "ID" integer NOT NULL,
    "ID_NEGOCIO" bigint NOT NULL,
    "ID_DEPARTAMENTO" bigint NOT NULL,
    "ESTADO" integer DEFAULT 1 NOT NULL
);
 *   DROP TABLE core."NEGOCIOS_DEPARTAMENTOS";
       core         fvargas    false    12            �            1259    49492    NEGOCIOS_DEPARTAMENTOS_ID_seq    SEQUENCE     �   CREATE SEQUENCE "NEGOCIOS_DEPARTAMENTOS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE core."NEGOCIOS_DEPARTAMENTOS_ID_seq";
       core       fvargas    false    12    225            �	           0    0    NEGOCIOS_DEPARTAMENTOS_ID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "NEGOCIOS_DEPARTAMENTOS_ID_seq" OWNED BY "NEGOCIOS_DEPARTAMENTOS"."ID";
            core       fvargas    false    224            �            1259    49456    NEGOCIOS_ID_seq    SEQUENCE     s   CREATE SEQUENCE "NEGOCIOS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE core."NEGOCIOS_ID_seq";
       core       fvargas    false    12    223            �	           0    0    NEGOCIOS_ID_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE "NEGOCIOS_ID_seq" OWNED BY "NEGOCIOS"."ID";
            core       fvargas    false    222            �            1259    49513    NEGOCIOS_USUARIOS    TABLE     �   CREATE TABLE "NEGOCIOS_USUARIOS" (
    "ID" integer NOT NULL,
    "ID_NEGOCIO" bigint NOT NULL,
    "ID_USUARIO" bigint NOT NULL,
    "ESTADO" integer DEFAULT 1 NOT NULL
);
 %   DROP TABLE core."NEGOCIOS_USUARIOS";
       core         fvargas    false    12            �            1259    49511    NEGOCIOS_USUARIOS_ID_seq    SEQUENCE     |   CREATE SEQUENCE "NEGOCIOS_USUARIOS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE core."NEGOCIOS_USUARIOS_ID_seq";
       core       fvargas    false    227    12            �	           0    0    NEGOCIOS_USUARIOS_ID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "NEGOCIOS_USUARIOS_ID_seq" OWNED BY "NEGOCIOS_USUARIOS"."ID";
            core       fvargas    false    226            �            1259    41071    CAJA_SEQ    SEQUENCE     l   CREATE SEQUENCE "CAJA_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE financiero."CAJA_SEQ";
    
   financiero       fvargas    false    9            �            1259    32958    CAJA    TABLE     X  CREATE TABLE "CAJA" (
    id bigint DEFAULT nextval('"CAJA_SEQ"'::regclass) NOT NULL,
    "DEPARTAMENTO" bigint,
    "SALDO_INICIAL" double precision DEFAULT 0 NOT NULL,
    "FECHA_APERTURA" date,
    "FECHA_CIERRE" date,
    "SALDO_ACTUAL" double precision,
    "SALDO_FINAL" double precision,
    "FECHA_REGISTRO" timestamp with time zone
);
    DROP TABLE financiero."CAJA";
    
   financiero         fvargas    false    207    9            �            1259    49532    CARGOS    TABLE     �   CREATE TABLE "CARGOS" (
    "ID" integer NOT NULL,
    "NPMBRE" character varying(50) NOT NULL,
    "ID_NEGOCIO" bigint NOT NULL,
    "ESTADO" integer DEFAULT 1 NOT NULL
);
     DROP TABLE financiero."CARGOS";
    
   financiero         fvargas    false    9            �            1259    49530    CARGOS_ID_seq    SEQUENCE     q   CREATE SEQUENCE "CARGOS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE financiero."CARGOS_ID_seq";
    
   financiero       fvargas    false    229    9            �	           0    0    CARGOS_ID_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE "CARGOS_ID_seq" OWNED BY "CARGOS"."ID";
         
   financiero       fvargas    false    228            �            1259    41086 	   CONCEPTOS    TABLE     ^   CREATE TABLE "CONCEPTOS" (
    id bigint NOT NULL,
    "NOMBRE" text,
    "ESTADO" integer
);
 #   DROP TABLE financiero."CONCEPTOS";
    
   financiero         fvargas    false    9            �	           0    0    COLUMN "CONCEPTOS"."ESTADO"    COMMENT     N   COMMENT ON COLUMN "CONCEPTOS"."ESTADO" IS '1 Activo 0 Inactivo -1 Eliminado';
         
   financiero       fvargas    false    208            �            1259    49604 	   EMPLEADOS    TABLE     |  CREATE TABLE "EMPLEADOS" (
    "ID" integer NOT NULL,
    "ID_CARGO" integer,
    "ID_USUARIO" bigint,
    "NOMBRES" character varying(100),
    "APELLIDOS" character varying(100),
    "EMAIL" character varying(50),
    "TELEFONO" character varying(50),
    "DIRECCION" character varying(50),
    "FECHA_CONTRATACION" timestamp without time zone,
    "SUELDO" double precision
);
 #   DROP TABLE financiero."EMPLEADOS";
    
   financiero         fvargas    false    9            �            1259    49602    EMPLEADOS_ID_seq    SEQUENCE     t   CREATE SEQUENCE "EMPLEADOS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE financiero."EMPLEADOS_ID_seq";
    
   financiero       fvargas    false    233    9            �	           0    0    EMPLEADOS_ID_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE "EMPLEADOS_ID_seq" OWNED BY "EMPLEADOS"."ID";
         
   financiero       fvargas    false    232            �            1259    32885    MOVIMIENTO_CAJA    TABLE     �   CREATE TABLE "MOVIMIENTO_CAJA" (
    id integer NOT NULL,
    "CONCEPTO" bigint,
    "CANTIDAD" double precision NOT NULL,
    "FECHA" time without time zone,
    "CAJA" bigint
);
 )   DROP TABLE financiero."MOVIMIENTO_CAJA";
    
   financiero         fvargas    false    9            �            1259    32883    MOVIMIENTO_CAJA_id_seq    SEQUENCE     z   CREATE SEQUENCE "MOVIMIENTO_CAJA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE financiero."MOVIMIENTO_CAJA_id_seq";
    
   financiero       fvargas    false    9    193            �	           0    0    MOVIMIENTO_CAJA_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "MOVIMIENTO_CAJA_id_seq" OWNED BY "MOVIMIENTO_CAJA".id;
         
   financiero       fvargas    false    192            �            1259    49590    TIPO_EMPLEADO    TABLE     �   CREATE TABLE "TIPO_EMPLEADO" (
    "ID" integer NOT NULL,
    "NOMBRE" character varying(50),
    "ID_NEGOCIO" bigint NOT NULL,
    "ESTADO" integer DEFAULT 1 NOT NULL
);
 '   DROP TABLE financiero."TIPO_EMPLEADO";
    
   financiero         fvargas    false    9            �            1259    49588    TIPO_EMPLEADO_ID_seq    SEQUENCE     x   CREATE SEQUENCE "TIPO_EMPLEADO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE financiero."TIPO_EMPLEADO_ID_seq";
    
   financiero       fvargas    false    9    231            �	           0    0    TIPO_EMPLEADO_ID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE "TIPO_EMPLEADO_ID_seq" OWNED BY "TIPO_EMPLEADO"."ID";
         
   financiero       fvargas    false    230            �            1259    32891    DEPARTAMENTOS_SEQ    SEQUENCE     u   CREATE SEQUENCE "DEPARTAMENTOS_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE inventario."DEPARTAMENTOS_SEQ";
    
   inventario       fvargas    false    8            �            1259    32789    DEPARTAMENTOS    TABLE     �   CREATE TABLE "DEPARTAMENTOS" (
    id bigint DEFAULT nextval('"DEPARTAMENTOS_SEQ"'::regclass) NOT NULL,
    "NOMBRE" "char" NOT NULL,
    "DESCRIPCION" text,
    "ESTADO" integer
);
 '   DROP TABLE inventario."DEPARTAMENTOS";
    
   inventario         fvargas    false    194    8            �            1259    32944    DEPARTAMENTOS_PRODUCTOS    TABLE     �   CREATE TABLE "DEPARTAMENTOS_PRODUCTOS" (
    id integer NOT NULL,
    "PRODUCTO" bigint NOT NULL,
    "DEPARTAMENTO" bigint,
    "ESTADO" integer
);
 1   DROP TABLE inventario."DEPARTAMENTOS_PRODUCTOS";
    
   inventario         fvargas    false    8            �            1259    32942    DEPARTAMENTOS_PRODUCTOS_id_seq    SEQUENCE     �   CREATE SEQUENCE "DEPARTAMENTOS_PRODUCTOS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE inventario."DEPARTAMENTOS_PRODUCTOS_id_seq";
    
   inventario       fvargas    false    8    205            �	           0    0    DEPARTAMENTOS_PRODUCTOS_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE "DEPARTAMENTOS_PRODUCTOS_id_seq" OWNED BY "DEPARTAMENTOS_PRODUCTOS".id;
         
   inventario       fvargas    false    204            �            1259    32894    DESCUENTOS_SEQ    SEQUENCE     r   CREATE SEQUENCE "DESCUENTOS_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE inventario."DESCUENTOS_SEQ";
    
   inventario       fvargas    false    8            �            1259    32873 
   DESCUENTOS    TABLE     C  CREATE TABLE "DESCUENTOS" (
    id bigint DEFAULT nextval('"DESCUENTOS_SEQ"'::regclass) NOT NULL,
    "PRODUCTO" bigint NOT NULL,
    "PRECIO" double precision NOT NULL,
    "DESCUENTO" double precision NOT NULL,
    "VIGENTE_DE" time without time zone,
    "VIGENTE_A" timestamp without time zone,
    "ESTADO" integer
);
 $   DROP TABLE inventario."DESCUENTOS";
    
   inventario         fvargas    false    195    8            �	           0    0    COLUMN "DESCUENTOS"."DESCUENTO"    COMMENT     I   COMMENT ON COLUMN "DESCUENTOS"."DESCUENTO" IS 'Porcentaje de descuento';
         
   inventario       fvargas    false    191            �            1259    32908    FOTOS_PRODUCTOS    TABLE     �   CREATE TABLE "FOTOS_PRODUCTOS" (
    id integer NOT NULL,
    "URL" text,
    "PRODUCTO" bigint NOT NULL,
    "ESTADO" integer
);
 )   DROP TABLE inventario."FOTOS_PRODUCTOS";
    
   inventario         fvargas    false    8            �	           0    0    COLUMN "FOTOS_PRODUCTOS"."URL"    COMMENT     G   COMMENT ON COLUMN "FOTOS_PRODUCTOS"."URL" IS 'Direccion de la imagen';
         
   inventario       fvargas    false    200            �            1259    32906    FOTOS_PRODUCTOS_id_seq    SEQUENCE     z   CREATE SEQUENCE "FOTOS_PRODUCTOS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE inventario."FOTOS_PRODUCTOS_id_seq";
    
   inventario       fvargas    false    200    8            �	           0    0    FOTOS_PRODUCTOS_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "FOTOS_PRODUCTOS_id_seq" OWNED BY "FOTOS_PRODUCTOS".id;
         
   inventario       fvargas    false    199            �            1259    32897    INVENTARIOS_SEQ    SEQUENCE     s   CREATE SEQUENCE "INVENTARIOS_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE inventario."INVENTARIOS_SEQ";
    
   inventario       fvargas    false    8            �            1259    32853    INVENTARIOS    TABLE     �   CREATE TABLE "INVENTARIOS" (
    id bigint DEFAULT nextval('"INVENTARIOS_SEQ"'::regclass) NOT NULL,
    "EXISTENCIA" integer,
    "PRECIO" double precision,
    "COSTO" double precision,
    "FECHA" timestamp without time zone
);
 %   DROP TABLE inventario."INVENTARIOS";
    
   inventario         fvargas    false    196    8            �            1259    32900 
   MARCAS_SEQ    SEQUENCE     n   CREATE SEQUENCE "MARCAS_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE inventario."MARCAS_SEQ";
    
   inventario       fvargas    false    8            �            1259    32777    MARCAS    TABLE     �   CREATE TABLE "MARCAS" (
    id bigint DEFAULT nextval('"MARCAS_SEQ"'::regclass) NOT NULL,
    "NOMBRE" "char",
    "ESTADO" integer DEFAULT 1
);
     DROP TABLE inventario."MARCAS";
    
   inventario         fvargas    false    197    8            �	           0    0    COLUMN "MARCAS"."ESTADO"    COMMENT     _   COMMENT ON COLUMN "MARCAS"."ESTADO" IS 'Estado del registro 1 Activo 0 Inactivo -1 Eliminado';
         
   inventario       fvargas    false    187            �            1259    32903    MOTIVOS_SEQ    SEQUENCE     o   CREATE SEQUENCE "MOTIVOS_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE inventario."MOTIVOS_SEQ";
    
   inventario       fvargas    false    8            �            1259    32832    MOTIVOS    TABLE     �   CREATE TABLE "MOTIVOS" (
    id bigint DEFAULT nextval('"MOTIVOS_SEQ"'::regclass) NOT NULL,
    "NOMBRE" "char",
    "ESTADO" integer,
    "TIPO" integer NOT NULL
);
 !   DROP TABLE inventario."MOTIVOS";
    
   inventario         fvargas    false    198    8            �	           0    0    COLUMN "MOTIVOS"."TIPO"    COMMENT     =   COMMENT ON COLUMN "MOTIVOS"."TIPO" IS 'Entrada 1, Salida 0';
         
   inventario       fvargas    false    189            �            1259    32927    MOVIMIENTO_INVENTARIO    TABLE     �   CREATE TABLE "MOVIMIENTO_INVENTARIO" (
    id integer NOT NULL,
    "FECHA" timestamp without time zone DEFAULT now() NOT NULL,
    "CANTIDAD" integer NOT NULL,
    "MOTIVO" bigint NOT NULL
);
 /   DROP TABLE inventario."MOVIMIENTO_INVENTARIO";
    
   inventario         fvargas    false    8            �            1259    32925    MOVIMIENTO_INVENTARIO_id_seq    SEQUENCE     �   CREATE SEQUENCE "MOVIMIENTO_INVENTARIO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE inventario."MOVIMIENTO_INVENTARIO_id_seq";
    
   inventario       fvargas    false    203    8            �	           0    0    MOVIMIENTO_INVENTARIO_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "MOVIMIENTO_INVENTARIO_id_seq" OWNED BY "MOVIMIENTO_INVENTARIO".id;
         
   inventario       fvargas    false    202            �            1259    32922    PRODUCTOS_SEQ    SEQUENCE     q   CREATE SEQUENCE "PRODUCTOS_SEQ"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE inventario."PRODUCTOS_SEQ";
    
   inventario       fvargas    false    8            �            1259    32769 	   PRODUCTOS    TABLE     �  CREATE TABLE "PRODUCTOS" (
    id bigint DEFAULT nextval('"PRODUCTOS_SEQ"'::regclass) NOT NULL,
    "NOMBRE" text,
    "CODIGO" text,
    "COSTO" double precision,
    "PRECIO_VENTA" double precision NOT NULL,
    "PRECIO_MAYOREO" double precision,
    "DESCRIPCION" text,
    "MARCA" bigint,
    "EXISTENCIA" integer DEFAULT 0 NOT NULL,
    "INVENTARIABLE" boolean DEFAULT true NOT NULL
);
 #   DROP TABLE inventario."PRODUCTOS";
    
   inventario         fvargas    false    201    8            �	           0    0    COLUMN "PRODUCTOS"."CODIGO"    COMMENT     =   COMMENT ON COLUMN "PRODUCTOS"."CODIGO" IS 'Coigo de barras';
         
   inventario       fvargas    false    186            �	           0    0    COLUMN "PRODUCTOS"."COSTO"    COMMENT     I   COMMENT ON COLUMN "PRODUCTOS"."COSTO" IS 'Costo de compra del producto';
         
   inventario       fvargas    false    186            �	           0    0 !   COLUMN "PRODUCTOS"."PRECIO_VENTA"    COMMENT     N   COMMENT ON COLUMN "PRODUCTOS"."PRECIO_VENTA" IS 'Precio de venta al publico';
         
   inventario       fvargas    false    186            �	           0    0 #   COLUMN "PRODUCTOS"."PRECIO_MAYOREO"    COMMENT     I   COMMENT ON COLUMN "PRODUCTOS"."PRECIO_MAYOREO" IS 'Precio al por mayor';
         
   inventario       fvargas    false    186            �	           0    0     COLUMN "PRODUCTOS"."DESCRIPCION"    COMMENT     Q   COMMENT ON COLUMN "PRODUCTOS"."DESCRIPCION" IS 'Breve descripcion del producto';
         
   inventario       fvargas    false    186            �	           0    0    COLUMN "PRODUCTOS"."MARCA"    COMMENT     Z   COMMENT ON COLUMN "PRODUCTOS"."MARCA" IS 'Id de la marca a la que pertenece el producto';
         
   inventario       fvargas    false    186            �            1259    49261    PRODUCTOS_INVENTARIO    TABLE     �   CREATE TABLE "PRODUCTOS_INVENTARIO" (
    "ID" bigint NOT NULL,
    "ID_INVENTARIO" bigint NOT NULL,
    "ID_PRODUCTO" bigint,
    "ESTADO" integer
);
 .   DROP TABLE inventario."PRODUCTOS_INVENTARIO";
    
   inventario         fvargas    false    8            �	           0    0 "   COLUMN "PRODUCTOS_INVENTARIO"."ID"    COMMENT     P   COMMENT ON COLUMN "PRODUCTOS_INVENTARIO"."ID" IS 'Id del registro de la tabla';
         
   inventario       fvargas    false    209            �	           0    0 -   COLUMN "PRODUCTOS_INVENTARIO"."ID_INVENTARIO"    COMMENT     Q   COMMENT ON COLUMN "PRODUCTOS_INVENTARIO"."ID_INVENTARIO" IS 'Id del Inventario';
         
   inventario       fvargas    false    209            �	           0    0 +   COLUMN "PRODUCTOS_INVENTARIO"."ID_PRODUCTO"    COMMENT     M   COMMENT ON COLUMN "PRODUCTOS_INVENTARIO"."ID_PRODUCTO" IS 'Id del Producto';
         
   inventario       fvargas    false    209            �	           0    0 &   COLUMN "PRODUCTOS_INVENTARIO"."ESTADO"    COMMENT     s   COMMENT ON COLUMN "PRODUCTOS_INVENTARIO"."ESTADO" IS 'Estado del Registro 1 = Activo, 0 = Inactivo, -1 Eliminado';
         
   inventario       fvargas    false    209            �            1259    49269    TIPO_DOCUMENTO    TABLE     �   CREATE TABLE "TIPO_DOCUMENTO" (
    "ID" integer NOT NULL,
    "NOMBRE" character varying(50) NOT NULL,
    "ESTADO" integer DEFAULT 1
);
 (   DROP TABLE inventario."TIPO_DOCUMENTO";
    
   inventario         fvargas    false    8            �            1259    49267    TIPO_DOCUMENTO_ID_seq    SEQUENCE     y   CREATE SEQUENCE "TIPO_DOCUMENTO_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE inventario."TIPO_DOCUMENTO_ID_seq";
    
   inventario       fvargas    false    211    8            �	           0    0    TIPO_DOCUMENTO_ID_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "TIPO_DOCUMENTO_ID_seq" OWNED BY "TIPO_DOCUMENTO"."ID";
         
   inventario       fvargas    false    210            �            1259    49394    DEPARTAMENTOS_VENTAS    TABLE     �   CREATE TABLE "DEPARTAMENTOS_VENTAS" (
    "ID" integer NOT NULL,
    "ID_DEPARTAMENTO" bigint NOT NULL,
    "ID_FACTURA" bigint NOT NULL,
    "ESTADO" integer DEFAULT 1 NOT NULL
);
 *   DROP TABLE ventas."DEPARTAMENTOS_VENTAS";
       ventas         fvargas    false    11            �            1259    49392    DEPARTAMENTOS_VENTAS_ID_seq    SEQUENCE        CREATE SEQUENCE "DEPARTAMENTOS_VENTAS_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE ventas."DEPARTAMENTOS_VENTAS_ID_seq";
       ventas       fvargas    false    11    221            �	           0    0    DEPARTAMENTOS_VENTAS_ID_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE "DEPARTAMENTOS_VENTAS_ID_seq" OWNED BY "DEPARTAMENTOS_VENTAS"."ID";
            ventas       fvargas    false    220            �            1259    49349    FACTURA    TABLE       CREATE TABLE "FACTURA" (
    "ID" integer NOT NULL,
    "FECHA" timestamp without time zone,
    "ID_VENDEDOR" bigint,
    "ID_CLIENTE" bigint,
    "TOTAL" double precision,
    "RECIBIDO" double precision,
    "CAMBIO" double precision,
    "ESTADO" integer DEFAULT 1 NOT NULL
);
    DROP TABLE ventas."FACTURA";
       ventas         fvargas    false    11            �            1259    49358    FACTURA_DETALLE    TABLE       CREATE TABLE "FACTURA_DETALLE" (
    "ID" integer NOT NULL,
    "ID_FACTURA" bigint NOT NULL,
    "ID_PRODUCTO" bigint NOT NULL,
    "PRODUCTO" text,
    "PRECIO" double precision,
    "CANTIDAD" integer,
    "IMPORTE" double precision,
    "ESTADO" integer DEFAULT 1 NOT NULL
);
 %   DROP TABLE ventas."FACTURA_DETALLE";
       ventas         fvargas    false    11            �            1259    49356    FACTURA_DETALLE_ID_seq    SEQUENCE     z   CREATE SEQUENCE "FACTURA_DETALLE_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE ventas."FACTURA_DETALLE_ID_seq";
       ventas       fvargas    false    11    219            �	           0    0    FACTURA_DETALLE_ID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "FACTURA_DETALLE_ID_seq" OWNED BY "FACTURA_DETALLE"."ID";
            ventas       fvargas    false    218            �            1259    49347    FACTURA_ID_seq    SEQUENCE     r   CREATE SEQUENCE "FACTURA_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE ventas."FACTURA_ID_seq";
       ventas       fvargas    false    217    11            �	           0    0    FACTURA_ID_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE "FACTURA_ID_seq" OWNED BY "FACTURA"."ID";
            ventas       fvargas    false    216            �           2604    49299    ID    DEFAULT     \   ALTER TABLE ONLY "ROLES" ALTER COLUMN "ID" SET DEFAULT nextval('"ROLES_ID_seq"'::regclass);
 B   ALTER TABLE autenticacion."ROLES" ALTER COLUMN "ID" DROP DEFAULT;
       autenticacion       fvargas    false    213    212    213            �           2604    49308    ID    DEFAULT     b   ALTER TABLE ONLY "USUARIOS" ALTER COLUMN "ID" SET DEFAULT nextval('"USUARIOS_ID_seq"'::regclass);
 E   ALTER TABLE autenticacion."USUARIOS" ALTER COLUMN "ID" DROP DEFAULT;
       autenticacion       fvargas    false    215    214    215            �           2604    49461    ID    DEFAULT     b   ALTER TABLE ONLY "NEGOCIOS" ALTER COLUMN "ID" SET DEFAULT nextval('"NEGOCIOS_ID_seq"'::regclass);
 <   ALTER TABLE core."NEGOCIOS" ALTER COLUMN "ID" DROP DEFAULT;
       core       fvargas    false    222    223    223            �           2604    49497    ID    DEFAULT     ~   ALTER TABLE ONLY "NEGOCIOS_DEPARTAMENTOS" ALTER COLUMN "ID" SET DEFAULT nextval('"NEGOCIOS_DEPARTAMENTOS_ID_seq"'::regclass);
 J   ALTER TABLE core."NEGOCIOS_DEPARTAMENTOS" ALTER COLUMN "ID" DROP DEFAULT;
       core       fvargas    false    224    225    225            �           2604    49516    ID    DEFAULT     t   ALTER TABLE ONLY "NEGOCIOS_USUARIOS" ALTER COLUMN "ID" SET DEFAULT nextval('"NEGOCIOS_USUARIOS_ID_seq"'::regclass);
 E   ALTER TABLE core."NEGOCIOS_USUARIOS" ALTER COLUMN "ID" DROP DEFAULT;
       core       fvargas    false    227    226    227            �           2604    49535    ID    DEFAULT     ^   ALTER TABLE ONLY "CARGOS" ALTER COLUMN "ID" SET DEFAULT nextval('"CARGOS_ID_seq"'::regclass);
 @   ALTER TABLE financiero."CARGOS" ALTER COLUMN "ID" DROP DEFAULT;
    
   financiero       fvargas    false    229    228    229            �           2604    49607    ID    DEFAULT     d   ALTER TABLE ONLY "EMPLEADOS" ALTER COLUMN "ID" SET DEFAULT nextval('"EMPLEADOS_ID_seq"'::regclass);
 C   ALTER TABLE financiero."EMPLEADOS" ALTER COLUMN "ID" DROP DEFAULT;
    
   financiero       fvargas    false    232    233    233            �           2604    32888    id    DEFAULT     n   ALTER TABLE ONLY "MOVIMIENTO_CAJA" ALTER COLUMN id SET DEFAULT nextval('"MOVIMIENTO_CAJA_id_seq"'::regclass);
 G   ALTER TABLE financiero."MOVIMIENTO_CAJA" ALTER COLUMN id DROP DEFAULT;
    
   financiero       fvargas    false    192    193    193            �           2604    49593    ID    DEFAULT     l   ALTER TABLE ONLY "TIPO_EMPLEADO" ALTER COLUMN "ID" SET DEFAULT nextval('"TIPO_EMPLEADO_ID_seq"'::regclass);
 G   ALTER TABLE financiero."TIPO_EMPLEADO" ALTER COLUMN "ID" DROP DEFAULT;
    
   financiero       fvargas    false    230    231    231            �           2604    32947    id    DEFAULT     ~   ALTER TABLE ONLY "DEPARTAMENTOS_PRODUCTOS" ALTER COLUMN id SET DEFAULT nextval('"DEPARTAMENTOS_PRODUCTOS_id_seq"'::regclass);
 O   ALTER TABLE inventario."DEPARTAMENTOS_PRODUCTOS" ALTER COLUMN id DROP DEFAULT;
    
   inventario       fvargas    false    205    204    205            �           2604    32911    id    DEFAULT     n   ALTER TABLE ONLY "FOTOS_PRODUCTOS" ALTER COLUMN id SET DEFAULT nextval('"FOTOS_PRODUCTOS_id_seq"'::regclass);
 G   ALTER TABLE inventario."FOTOS_PRODUCTOS" ALTER COLUMN id DROP DEFAULT;
    
   inventario       fvargas    false    200    199    200            �           2604    32930    id    DEFAULT     z   ALTER TABLE ONLY "MOVIMIENTO_INVENTARIO" ALTER COLUMN id SET DEFAULT nextval('"MOVIMIENTO_INVENTARIO_id_seq"'::regclass);
 M   ALTER TABLE inventario."MOVIMIENTO_INVENTARIO" ALTER COLUMN id DROP DEFAULT;
    
   inventario       fvargas    false    203    202    203            �           2604    49272    ID    DEFAULT     n   ALTER TABLE ONLY "TIPO_DOCUMENTO" ALTER COLUMN "ID" SET DEFAULT nextval('"TIPO_DOCUMENTO_ID_seq"'::regclass);
 H   ALTER TABLE inventario."TIPO_DOCUMENTO" ALTER COLUMN "ID" DROP DEFAULT;
    
   inventario       fvargas    false    211    210    211            �           2604    49397    ID    DEFAULT     z   ALTER TABLE ONLY "DEPARTAMENTOS_VENTAS" ALTER COLUMN "ID" SET DEFAULT nextval('"DEPARTAMENTOS_VENTAS_ID_seq"'::regclass);
 J   ALTER TABLE ventas."DEPARTAMENTOS_VENTAS" ALTER COLUMN "ID" DROP DEFAULT;
       ventas       fvargas    false    220    221    221            �           2604    49352    ID    DEFAULT     `   ALTER TABLE ONLY "FACTURA" ALTER COLUMN "ID" SET DEFAULT nextval('"FACTURA_ID_seq"'::regclass);
 =   ALTER TABLE ventas."FACTURA" ALTER COLUMN "ID" DROP DEFAULT;
       ventas       fvargas    false    216    217    217            �           2604    49361    ID    DEFAULT     p   ALTER TABLE ONLY "FACTURA_DETALLE" ALTER COLUMN "ID" SET DEFAULT nextval('"FACTURA_DETALLE_ID_seq"'::regclass);
 E   ALTER TABLE ventas."FACTURA_DETALLE" ALTER COLUMN "ID" DROP DEFAULT;
       ventas       fvargas    false    219    218    219            �	          0    49296    ROLES 
   TABLE DATA               4   COPY "ROLES" ("ID", "NOMBRE", "ESTADO") FROM stdin;
    autenticacion       fvargas    false    213   ��       �	           0    0    ROLES_ID_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('"ROLES_ID_seq"', 1, false);
            autenticacion       fvargas    false    212            �	          0    49305    USUARIOS 
   TABLE DATA               �   COPY "USUARIOS" ("ID", "NOMBRES", "APELLIDOS", "DOCUMENTO", "TIPO_DOCUMENTO", "DIRECCCION", "TELEFONO", "ID_ROL", "USERNAME", "PASSWORD", "ESTADO") FROM stdin;
    autenticacion       fvargas    false    215   ��       �	           0    0    USUARIOS_ID_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('"USUARIOS_ID_seq"', 1, false);
            autenticacion       fvargas    false    214            �	          0    49458    NEGOCIOS 
   TABLE DATA               �   COPY "NEGOCIOS" ("ID", "NOMBRE", "DESCRIPCION", "LOGO", "URL", "LINK", "ID_PROPIETARIO", "NRO_EMPLEADOS", "ESTADO") FROM stdin;
    core       fvargas    false    223   ��       �	          0    49494    NEGOCIOS_DEPARTAMENTOS 
   TABLE DATA               \   COPY "NEGOCIOS_DEPARTAMENTOS" ("ID", "ID_NEGOCIO", "ID_DEPARTAMENTO", "ESTADO") FROM stdin;
    core       fvargas    false    225   ��       �	           0    0    NEGOCIOS_DEPARTAMENTOS_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"NEGOCIOS_DEPARTAMENTOS_ID_seq"', 1, false);
            core       fvargas    false    224            �	           0    0    NEGOCIOS_ID_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('"NEGOCIOS_ID_seq"', 1, false);
            core       fvargas    false    222            �	          0    49513    NEGOCIOS_USUARIOS 
   TABLE DATA               R   COPY "NEGOCIOS_USUARIOS" ("ID", "ID_NEGOCIO", "ID_USUARIO", "ESTADO") FROM stdin;
    core       fvargas    false    227   ��       �	           0    0    NEGOCIOS_USUARIOS_ID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"NEGOCIOS_USUARIOS_ID_seq"', 1, false);
            core       fvargas    false    226            �	          0    32958    CAJA 
   TABLE DATA               �   COPY "CAJA" (id, "DEPARTAMENTO", "SALDO_INICIAL", "FECHA_APERTURA", "FECHA_CIERRE", "SALDO_ACTUAL", "SALDO_FINAL", "FECHA_REGISTRO") FROM stdin;
 
   financiero       fvargas    false    206   �       �	           0    0    CAJA_SEQ    SEQUENCE SET     2   SELECT pg_catalog.setval('"CAJA_SEQ"', 1, false);
         
   financiero       fvargas    false    207            �	          0    49532    CARGOS 
   TABLE DATA               C   COPY "CARGOS" ("ID", "NPMBRE", "ID_NEGOCIO", "ESTADO") FROM stdin;
 
   financiero       fvargas    false    229   /�       �	           0    0    CARGOS_ID_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('"CARGOS_ID_seq"', 1, false);
         
   financiero       fvargas    false    228            �	          0    41086 	   CONCEPTOS 
   TABLE DATA               6   COPY "CONCEPTOS" (id, "NOMBRE", "ESTADO") FROM stdin;
 
   financiero       fvargas    false    208   L�       �	          0    49604 	   EMPLEADOS 
   TABLE DATA               �   COPY "EMPLEADOS" ("ID", "ID_CARGO", "ID_USUARIO", "NOMBRES", "APELLIDOS", "EMAIL", "TELEFONO", "DIRECCION", "FECHA_CONTRATACION", "SUELDO") FROM stdin;
 
   financiero       fvargas    false    233   i�       �	           0    0    EMPLEADOS_ID_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('"EMPLEADOS_ID_seq"', 1, false);
         
   financiero       fvargas    false    232            �	          0    32885    MOVIMIENTO_CAJA 
   TABLE DATA               Q   COPY "MOVIMIENTO_CAJA" (id, "CONCEPTO", "CANTIDAD", "FECHA", "CAJA") FROM stdin;
 
   financiero       fvargas    false    193   ��       �	           0    0    MOVIMIENTO_CAJA_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"MOVIMIENTO_CAJA_id_seq"', 1, false);
         
   financiero       fvargas    false    192            �	          0    49590    TIPO_EMPLEADO 
   TABLE DATA               J   COPY "TIPO_EMPLEADO" ("ID", "NOMBRE", "ID_NEGOCIO", "ESTADO") FROM stdin;
 
   financiero       fvargas    false    231   ��       �	           0    0    TIPO_EMPLEADO_ID_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('"TIPO_EMPLEADO_ID_seq"', 1, false);
         
   financiero       fvargas    false    230            �	          0    32789    DEPARTAMENTOS 
   TABLE DATA               I   COPY "DEPARTAMENTOS" (id, "NOMBRE", "DESCRIPCION", "ESTADO") FROM stdin;
 
   inventario       fvargas    false    188   ��       �	          0    32944    DEPARTAMENTOS_PRODUCTOS 
   TABLE DATA               V   COPY "DEPARTAMENTOS_PRODUCTOS" (id, "PRODUCTO", "DEPARTAMENTO", "ESTADO") FROM stdin;
 
   inventario       fvargas    false    205   ��       �	           0    0    DEPARTAMENTOS_PRODUCTOS_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"DEPARTAMENTOS_PRODUCTOS_id_seq"', 1, false);
         
   inventario       fvargas    false    204            �	           0    0    DEPARTAMENTOS_SEQ    SEQUENCE SET     ;   SELECT pg_catalog.setval('"DEPARTAMENTOS_SEQ"', 1, false);
         
   inventario       fvargas    false    194            �	          0    32873 
   DESCUENTOS 
   TABLE DATA               k   COPY "DESCUENTOS" (id, "PRODUCTO", "PRECIO", "DESCUENTO", "VIGENTE_DE", "VIGENTE_A", "ESTADO") FROM stdin;
 
   inventario       fvargas    false    191   ��       �	           0    0    DESCUENTOS_SEQ    SEQUENCE SET     8   SELECT pg_catalog.setval('"DESCUENTOS_SEQ"', 1, false);
         
   inventario       fvargas    false    195            �	          0    32908    FOTOS_PRODUCTOS 
   TABLE DATA               E   COPY "FOTOS_PRODUCTOS" (id, "URL", "PRODUCTO", "ESTADO") FROM stdin;
 
   inventario       fvargas    false    200   �       �	           0    0    FOTOS_PRODUCTOS_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"FOTOS_PRODUCTOS_id_seq"', 1, false);
         
   inventario       fvargas    false    199            �	          0    32853    INVENTARIOS 
   TABLE DATA               N   COPY "INVENTARIOS" (id, "EXISTENCIA", "PRECIO", "COSTO", "FECHA") FROM stdin;
 
   inventario       fvargas    false    190   4�       �	           0    0    INVENTARIOS_SEQ    SEQUENCE SET     9   SELECT pg_catalog.setval('"INVENTARIOS_SEQ"', 1, false);
         
   inventario       fvargas    false    196            �	          0    32777    MARCAS 
   TABLE DATA               3   COPY "MARCAS" (id, "NOMBRE", "ESTADO") FROM stdin;
 
   inventario       fvargas    false    187   Q�       �	           0    0 
   MARCAS_SEQ    SEQUENCE SET     4   SELECT pg_catalog.setval('"MARCAS_SEQ"', 1, false);
         
   inventario       fvargas    false    197            �	          0    32832    MOTIVOS 
   TABLE DATA               <   COPY "MOTIVOS" (id, "NOMBRE", "ESTADO", "TIPO") FROM stdin;
 
   inventario       fvargas    false    189   n�       �	           0    0    MOTIVOS_SEQ    SEQUENCE SET     5   SELECT pg_catalog.setval('"MOTIVOS_SEQ"', 1, false);
         
   inventario       fvargas    false    198            �	          0    32927    MOVIMIENTO_INVENTARIO 
   TABLE DATA               M   COPY "MOVIMIENTO_INVENTARIO" (id, "FECHA", "CANTIDAD", "MOTIVO") FROM stdin;
 
   inventario       fvargas    false    203   ��       �	           0    0    MOVIMIENTO_INVENTARIO_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('"MOVIMIENTO_INVENTARIO_id_seq"', 1, false);
         
   inventario       fvargas    false    202            �	          0    32769 	   PRODUCTOS 
   TABLE DATA               �   COPY "PRODUCTOS" (id, "NOMBRE", "CODIGO", "COSTO", "PRECIO_VENTA", "PRECIO_MAYOREO", "DESCRIPCION", "MARCA", "EXISTENCIA", "INVENTARIABLE") FROM stdin;
 
   inventario       fvargas    false    186   ��       �	          0    49261    PRODUCTOS_INVENTARIO 
   TABLE DATA               Y   COPY "PRODUCTOS_INVENTARIO" ("ID", "ID_INVENTARIO", "ID_PRODUCTO", "ESTADO") FROM stdin;
 
   inventario       fvargas    false    209   ��       �	           0    0    PRODUCTOS_SEQ    SEQUENCE SET     7   SELECT pg_catalog.setval('"PRODUCTOS_SEQ"', 1, false);
         
   inventario       fvargas    false    201            �	          0    49269    TIPO_DOCUMENTO 
   TABLE DATA               =   COPY "TIPO_DOCUMENTO" ("ID", "NOMBRE", "ESTADO") FROM stdin;
 
   inventario       fvargas    false    211   ��       �	           0    0    TIPO_DOCUMENTO_ID_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"TIPO_DOCUMENTO_ID_seq"', 1, false);
         
   inventario       fvargas    false    210            �	          0    49394    DEPARTAMENTOS_VENTAS 
   TABLE DATA               Z   COPY "DEPARTAMENTOS_VENTAS" ("ID", "ID_DEPARTAMENTO", "ID_FACTURA", "ESTADO") FROM stdin;
    ventas       fvargas    false    221   ��       �	           0    0    DEPARTAMENTOS_VENTAS_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"DEPARTAMENTOS_VENTAS_ID_seq"', 1, false);
            ventas       fvargas    false    220            �	          0    49349    FACTURA 
   TABLE DATA               q   COPY "FACTURA" ("ID", "FECHA", "ID_VENDEDOR", "ID_CLIENTE", "TOTAL", "RECIBIDO", "CAMBIO", "ESTADO") FROM stdin;
    ventas       fvargas    false    217   �       �	          0    49358    FACTURA_DETALLE 
   TABLE DATA               ~   COPY "FACTURA_DETALLE" ("ID", "ID_FACTURA", "ID_PRODUCTO", "PRODUCTO", "PRECIO", "CANTIDAD", "IMPORTE", "ESTADO") FROM stdin;
    ventas       fvargas    false    219   9�       �	           0    0    FACTURA_DETALLE_ID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"FACTURA_DETALLE_ID_seq"', 1, false);
            ventas       fvargas    false    218            �	           0    0    FACTURA_ID_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('"FACTURA_ID_seq"', 1, false);
            ventas       fvargas    false    216            �           2606    49302 
   ROLES_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY "ROLES"
    ADD CONSTRAINT "ROLES_pkey" PRIMARY KEY ("ID");
 E   ALTER TABLE ONLY autenticacion."ROLES" DROP CONSTRAINT "ROLES_pkey";
       autenticacion         fvargas    false    213    213            �           2606    49314    USUARIOS_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY "USUARIOS"
    ADD CONSTRAINT "USUARIOS_pkey" PRIMARY KEY ("ID");
 K   ALTER TABLE ONLY autenticacion."USUARIOS" DROP CONSTRAINT "USUARIOS_pkey";
       autenticacion         fvargas    false    215    215            �           2606    49500    NEGOCIOS_DEPARTAMENTOS_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "NEGOCIOS_DEPARTAMENTOS"
    ADD CONSTRAINT "NEGOCIOS_DEPARTAMENTOS_pkey" PRIMARY KEY ("ID");
 ^   ALTER TABLE ONLY core."NEGOCIOS_DEPARTAMENTOS" DROP CONSTRAINT "NEGOCIOS_DEPARTAMENTOS_pkey";
       core         fvargas    false    225    225            �           2606    49519    NEGOCIOS_USUARIOS_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "NEGOCIOS_USUARIOS"
    ADD CONSTRAINT "NEGOCIOS_USUARIOS_pkey" PRIMARY KEY ("ID");
 T   ALTER TABLE ONLY core."NEGOCIOS_USUARIOS" DROP CONSTRAINT "NEGOCIOS_USUARIOS_pkey";
       core         fvargas    false    227    227            �           2606    49467    NEGOCIOS_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY "NEGOCIOS"
    ADD CONSTRAINT "NEGOCIOS_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY core."NEGOCIOS" DROP CONSTRAINT "NEGOCIOS_pkey";
       core         fvargas    false    223    223            �           2606    41070 
   CAJA_ID_PK 
   CONSTRAINT     J   ALTER TABLE ONLY "CAJA"
    ADD CONSTRAINT "CAJA_ID_PK" PRIMARY KEY (id);
 A   ALTER TABLE ONLY financiero."CAJA" DROP CONSTRAINT "CAJA_ID_PK";
    
   financiero         fvargas    false    206    206            �           2606    49538    CARGOS_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY "CARGOS"
    ADD CONSTRAINT "CARGOS_pkey" PRIMARY KEY ("ID");
 D   ALTER TABLE ONLY financiero."CARGOS" DROP CONSTRAINT "CARGOS_pkey";
    
   financiero         fvargas    false    229    229            �           2606    49609    EMPLEADOS_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY "EMPLEADOS"
    ADD CONSTRAINT "EMPLEADOS_pkey" PRIMARY KEY ("ID");
 J   ALTER TABLE ONLY financiero."EMPLEADOS" DROP CONSTRAINT "EMPLEADOS_pkey";
    
   financiero         fvargas    false    233    233            �           2606    32890    MOVIMIENTO_CAJA_ID_PK 
   CONSTRAINT     `   ALTER TABLE ONLY "MOVIMIENTO_CAJA"
    ADD CONSTRAINT "MOVIMIENTO_CAJA_ID_PK" PRIMARY KEY (id);
 W   ALTER TABLE ONLY financiero."MOVIMIENTO_CAJA" DROP CONSTRAINT "MOVIMIENTO_CAJA_ID_PK";
    
   financiero         fvargas    false    193    193            �           2606    41093    OPERACIONES_ID_PK 
   CONSTRAINT     V   ALTER TABLE ONLY "CONCEPTOS"
    ADD CONSTRAINT "OPERACIONES_ID_PK" PRIMARY KEY (id);
 M   ALTER TABLE ONLY financiero."CONCEPTOS" DROP CONSTRAINT "OPERACIONES_ID_PK";
    
   financiero         fvargas    false    208    208            �           2606    49596    TIPO_EMPLEADO_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY "TIPO_EMPLEADO"
    ADD CONSTRAINT "TIPO_EMPLEADO_pkey" PRIMARY KEY ("ID");
 R   ALTER TABLE ONLY financiero."TIPO_EMPLEADO" DROP CONSTRAINT "TIPO_EMPLEADO_pkey";
    
   financiero         fvargas    false    231    231            �           2606    32796    DEPARTAMENTO_id_PK 
   CONSTRAINT     [   ALTER TABLE ONLY "DEPARTAMENTOS"
    ADD CONSTRAINT "DEPARTAMENTO_id_PK" PRIMARY KEY (id);
 R   ALTER TABLE ONLY inventario."DEPARTAMENTOS" DROP CONSTRAINT "DEPARTAMENTO_id_PK";
    
   inventario         fvargas    false    188    188            �           2606    32916    FOTO_PRODUCTO_id_PK 
   CONSTRAINT     ^   ALTER TABLE ONLY "FOTOS_PRODUCTOS"
    ADD CONSTRAINT "FOTO_PRODUCTO_id_PK" PRIMARY KEY (id);
 U   ALTER TABLE ONLY inventario."FOTOS_PRODUCTOS" DROP CONSTRAINT "FOTO_PRODUCTO_id_PK";
    
   inventario         fvargas    false    200    200            �           2606    32857    INVENTARIO_ID_PK 
   CONSTRAINT     W   ALTER TABLE ONLY "INVENTARIOS"
    ADD CONSTRAINT "INVENTARIO_ID_PK" PRIMARY KEY (id);
 N   ALTER TABLE ONLY inventario."INVENTARIOS" DROP CONSTRAINT "INVENTARIO_ID_PK";
    
   inventario         fvargas    false    190    190            �           2606    32782    MARCA_id_PK 
   CONSTRAINT     M   ALTER TABLE ONLY "MARCAS"
    ADD CONSTRAINT "MARCA_id_PK" PRIMARY KEY (id);
 D   ALTER TABLE ONLY inventario."MARCAS" DROP CONSTRAINT "MARCA_id_PK";
    
   inventario         fvargas    false    187    187            �           2606    32836    MOTIVOS_ID_PK 
   CONSTRAINT     P   ALTER TABLE ONLY "MOTIVOS"
    ADD CONSTRAINT "MOTIVOS_ID_PK" PRIMARY KEY (id);
 G   ALTER TABLE ONLY inventario."MOTIVOS" DROP CONSTRAINT "MOTIVOS_ID_PK";
    
   inventario         fvargas    false    189    189            �           2606    32933    MOVIMIENTO_INVENTARIO_PK 
   CONSTRAINT     i   ALTER TABLE ONLY "MOVIMIENTO_INVENTARIO"
    ADD CONSTRAINT "MOVIMIENTO_INVENTARIO_PK" PRIMARY KEY (id);
 `   ALTER TABLE ONLY inventario."MOVIMIENTO_INVENTARIO" DROP CONSTRAINT "MOVIMIENTO_INVENTARIO_PK";
    
   inventario         fvargas    false    203    203            �           2606    32776    Producto_id_PK 
   CONSTRAINT     S   ALTER TABLE ONLY "PRODUCTOS"
    ADD CONSTRAINT "Producto_id_PK" PRIMARY KEY (id);
 J   ALTER TABLE ONLY inventario."PRODUCTOS" DROP CONSTRAINT "Producto_id_PK";
    
   inventario         fvargas    false    186    186            �           2606    49275    TIPO_DOCUMENTO_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY "TIPO_DOCUMENTO"
    ADD CONSTRAINT "TIPO_DOCUMENTO_pkey" PRIMARY KEY ("ID");
 T   ALTER TABLE ONLY inventario."TIPO_DOCUMENTO" DROP CONSTRAINT "TIPO_DOCUMENTO_pkey";
    
   inventario         fvargas    false    211    211            �           2606    49400    DEPARTAMENTOS_VENTAS_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "DEPARTAMENTOS_VENTAS"
    ADD CONSTRAINT "DEPARTAMENTOS_VENTAS_pkey" PRIMARY KEY ("ID");
 \   ALTER TABLE ONLY ventas."DEPARTAMENTOS_VENTAS" DROP CONSTRAINT "DEPARTAMENTOS_VENTAS_pkey";
       ventas         fvargas    false    221    221            �           2606    49367    FACTURA_DETALLE_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "FACTURA_DETALLE"
    ADD CONSTRAINT "FACTURA_DETALLE_pkey" PRIMARY KEY ("ID");
 R   ALTER TABLE ONLY ventas."FACTURA_DETALLE" DROP CONSTRAINT "FACTURA_DETALLE_pkey";
       ventas         fvargas    false    219    219            �           2606    49355    FACTURA_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY "FACTURA"
    ADD CONSTRAINT "FACTURA_pkey" PRIMARY KEY ("ID");
 B   ALTER TABLE ONLY ventas."FACTURA" DROP CONSTRAINT "FACTURA_pkey";
       ventas         fvargas    false    217    217            �           1259    41105    fki_CAJA_ID_FK    INDEX     I   CREATE INDEX "fki_CAJA_ID_FK" ON "MOVIMIENTO_CAJA" USING btree ("CAJA");
 (   DROP INDEX financiero."fki_CAJA_ID_FK";
    
   financiero         fvargas    false    193            �           1259    41079    fki_DEPARTAMENTO_FK    INDEX     K   CREATE INDEX "fki_DEPARTAMENTO_FK" ON "CAJA" USING btree ("DEPARTAMENTO");
 -   DROP INDEX financiero."fki_DEPARTAMENTO_FK";
    
   financiero         fvargas    false    206            �           1259    41099    fki_OPERACION_ID_FK    INDEX     R   CREATE INDEX "fki_OPERACION_ID_FK" ON "MOVIMIENTO_CAJA" USING btree ("CONCEPTO");
 -   DROP INDEX financiero."fki_OPERACION_ID_FK";
    
   financiero         fvargas    false    193            �           1259    32788    fki_MARCA_id_FK    INDEX     E   CREATE INDEX "fki_MARCA_id_FK" ON "PRODUCTOS" USING btree ("MARCA");
 )   DROP INDEX inventario."fki_MARCA_id_FK";
    
   inventario         fvargas    false    186            �           1259    32939    fki_MOTIVO_ID_FK    INDEX     S   CREATE INDEX "fki_MOTIVO_ID_FK" ON "MOVIMIENTO_INVENTARIO" USING btree ("MOTIVO");
 *   DROP INDEX inventario."fki_MOTIVO_ID_FK";
    
   inventario         fvargas    false    203            	           2606    49320    USUARIOS_ROLE_FK    FK CONSTRAINT     s   ALTER TABLE ONLY "USUARIOS"
    ADD CONSTRAINT "USUARIOS_ROLE_FK" FOREIGN KEY ("ID_ROL") REFERENCES "ROLES"("ID");
 N   ALTER TABLE ONLY autenticacion."USUARIOS" DROP CONSTRAINT "USUARIOS_ROLE_FK";
       autenticacion       fvargas    false    2278    215    213            	           2606    49315    USUARIOS_TIPO_DOCUMENTO_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "USUARIOS"
    ADD CONSTRAINT "USUARIOS_TIPO_DOCUMENTO_FK" FOREIGN KEY ("TIPO_DOCUMENTO") REFERENCES inventario."TIPO_DOCUMENTO"("ID");
 X   ALTER TABLE ONLY autenticacion."USUARIOS" DROP CONSTRAINT "USUARIOS_TIPO_DOCUMENTO_FK";
       autenticacion       fvargas    false    215    2276    211            	           2606    49506 &   NEGOCIOS_DEPARTAMENTOS_DEPARTAMENTO_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "NEGOCIOS_DEPARTAMENTOS"
    ADD CONSTRAINT "NEGOCIOS_DEPARTAMENTOS_DEPARTAMENTO_FK" FOREIGN KEY ("ID_DEPARTAMENTO") REFERENCES inventario."DEPARTAMENTOS"(id);
 i   ALTER TABLE ONLY core."NEGOCIOS_DEPARTAMENTOS" DROP CONSTRAINT "NEGOCIOS_DEPARTAMENTOS_DEPARTAMENTO_FK";
       core       fvargas    false    225    188    2256            
	           2606    49501 !   NEGOCIOS_DEPARTAMENTOS_NEGOCIO_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "NEGOCIOS_DEPARTAMENTOS"
    ADD CONSTRAINT "NEGOCIOS_DEPARTAMENTOS_NEGOCIO_FK" FOREIGN KEY ("ID_NEGOCIO") REFERENCES "NEGOCIOS"("ID");
 d   ALTER TABLE ONLY core."NEGOCIOS_DEPARTAMENTOS" DROP CONSTRAINT "NEGOCIOS_DEPARTAMENTOS_NEGOCIO_FK";
       core       fvargas    false    223    225    2288            		           2606    49468    NEGOCIOS_PROPIETARIOS_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "NEGOCIOS"
    ADD CONSTRAINT "NEGOCIOS_PROPIETARIOS_FK" FOREIGN KEY ("ID_PROPIETARIO") REFERENCES autenticacion."USUARIOS"("ID");
 M   ALTER TABLE ONLY core."NEGOCIOS" DROP CONSTRAINT "NEGOCIOS_PROPIETARIOS_FK";
       core       fvargas    false    215    2280    223            	           2606    49520    NEGOCIOS_USUARIOS_NEGOCIO_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "NEGOCIOS_USUARIOS"
    ADD CONSTRAINT "NEGOCIOS_USUARIOS_NEGOCIO_FK" FOREIGN KEY ("ID_NEGOCIO") REFERENCES "NEGOCIOS"("ID");
 Z   ALTER TABLE ONLY core."NEGOCIOS_USUARIOS" DROP CONSTRAINT "NEGOCIOS_USUARIOS_NEGOCIO_FK";
       core       fvargas    false    223    227    2288            	           2606    49525    NEGOCIOS_USUARIOS_USUARIO_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "NEGOCIOS_USUARIOS"
    ADD CONSTRAINT "NEGOCIOS_USUARIOS_USUARIO_FK" FOREIGN KEY ("ID_USUARIO") REFERENCES autenticacion."USUARIOS"("ID");
 Z   ALTER TABLE ONLY core."NEGOCIOS_USUARIOS" DROP CONSTRAINT "NEGOCIOS_USUARIOS_USUARIO_FK";
       core       fvargas    false    215    227    2280            �           2606    41100 
   CAJA_ID_FK    FK CONSTRAINT     o   ALTER TABLE ONLY "MOVIMIENTO_CAJA"
    ADD CONSTRAINT "CAJA_ID_FK" FOREIGN KEY ("CAJA") REFERENCES "CAJA"(id);
 L   ALTER TABLE ONLY financiero."MOVIMIENTO_CAJA" DROP CONSTRAINT "CAJA_ID_FK";
    
   financiero       fvargas    false    2271    193    206            	           2606    49539    CARGOS_NEGOCIOS_FK    FK CONSTRAINT        ALTER TABLE ONLY "CARGOS"
    ADD CONSTRAINT "CARGOS_NEGOCIOS_FK" FOREIGN KEY ("ID_NEGOCIO") REFERENCES core."NEGOCIOS"("ID");
 K   ALTER TABLE ONLY financiero."CARGOS" DROP CONSTRAINT "CARGOS_NEGOCIOS_FK";
    
   financiero       fvargas    false    2288    223    229            	           2606    41074    DEPARTAMENTO_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "CAJA"
    ADD CONSTRAINT "DEPARTAMENTO_FK" FOREIGN KEY ("DEPARTAMENTO") REFERENCES inventario."DEPARTAMENTOS"(id);
 F   ALTER TABLE ONLY financiero."CAJA" DROP CONSTRAINT "DEPARTAMENTO_FK";
    
   financiero       fvargas    false    188    206    2256            	           2606    49610    EMPLEADOS_CARGOS_FK    FK CONSTRAINT     z   ALTER TABLE ONLY "EMPLEADOS"
    ADD CONSTRAINT "EMPLEADOS_CARGOS_FK" FOREIGN KEY ("ID_CARGO") REFERENCES "CARGOS"("ID");
 O   ALTER TABLE ONLY financiero."EMPLEADOS" DROP CONSTRAINT "EMPLEADOS_CARGOS_FK";
    
   financiero       fvargas    false    233    2294    229            	           2606    49615    EMPLEADOS_USUARIO_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "EMPLEADOS"
    ADD CONSTRAINT "EMPLEADOS_USUARIO_FK" FOREIGN KEY ("ID_USUARIO") REFERENCES core."NEGOCIOS_USUARIOS"("ID");
 P   ALTER TABLE ONLY financiero."EMPLEADOS" DROP CONSTRAINT "EMPLEADOS_USUARIO_FK";
    
   financiero       fvargas    false    227    233    2292            �           2606    41094    OPERACION_ID_FK    FK CONSTRAINT     }   ALTER TABLE ONLY "MOVIMIENTO_CAJA"
    ADD CONSTRAINT "OPERACION_ID_FK" FOREIGN KEY ("CONCEPTO") REFERENCES "CONCEPTOS"(id);
 Q   ALTER TABLE ONLY financiero."MOVIMIENTO_CAJA" DROP CONSTRAINT "OPERACION_ID_FK";
    
   financiero       fvargas    false    193    208    2274            	           2606    49597    TIPO_EMPLEADO_NEGOCIOS_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "TIPO_EMPLEADO"
    ADD CONSTRAINT "TIPO_EMPLEADO_NEGOCIOS_FK" FOREIGN KEY ("ID_NEGOCIO") REFERENCES core."NEGOCIOS"("ID");
 Y   ALTER TABLE ONLY financiero."TIPO_EMPLEADO" DROP CONSTRAINT "TIPO_EMPLEADO_NEGOCIOS_FK";
    
   financiero       fvargas    false    223    231    2288             	           2606    32948    DEPARTAMENTO_id_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "DEPARTAMENTOS_PRODUCTOS"
    ADD CONSTRAINT "DEPARTAMENTO_id_FK" FOREIGN KEY ("DEPARTAMENTO") REFERENCES "DEPARTAMENTOS"(id);
 \   ALTER TABLE ONLY inventario."DEPARTAMENTOS_PRODUCTOS" DROP CONSTRAINT "DEPARTAMENTO_id_FK";
    
   inventario       fvargas    false    188    2256    205            �           2606    32783    MARCA_id_FK    FK CONSTRAINT     m   ALTER TABLE ONLY "PRODUCTOS"
    ADD CONSTRAINT "MARCA_id_FK" FOREIGN KEY ("MARCA") REFERENCES "MARCAS"(id);
 G   ALTER TABLE ONLY inventario."PRODUCTOS" DROP CONSTRAINT "MARCA_id_FK";
    
   inventario       fvargas    false    187    186    2254            �           2606    32934    MOTIVO_ID_FK    FK CONSTRAINT     |   ALTER TABLE ONLY "MOVIMIENTO_INVENTARIO"
    ADD CONSTRAINT "MOTIVO_ID_FK" FOREIGN KEY ("MOTIVO") REFERENCES "MOTIVOS"(id);
 T   ALTER TABLE ONLY inventario."MOVIMIENTO_INVENTARIO" DROP CONSTRAINT "MOTIVO_ID_FK";
    
   inventario       fvargas    false    2258    189    203            �           2606    32917    PRODUCTO_id_FK    FK CONSTRAINT     |   ALTER TABLE ONLY "FOTOS_PRODUCTOS"
    ADD CONSTRAINT "PRODUCTO_id_FK" FOREIGN KEY ("PRODUCTO") REFERENCES "PRODUCTOS"(id);
 P   ALTER TABLE ONLY inventario."FOTOS_PRODUCTOS" DROP CONSTRAINT "PRODUCTO_id_FK";
    
   inventario       fvargas    false    2251    200    186            	           2606    32953    PRODUCTO_id_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "DEPARTAMENTOS_PRODUCTOS"
    ADD CONSTRAINT "PRODUCTO_id_FK" FOREIGN KEY ("PRODUCTO") REFERENCES "PRODUCTOS"(id);
 X   ALTER TABLE ONLY inventario."DEPARTAMENTOS_PRODUCTOS" DROP CONSTRAINT "PRODUCTO_id_FK";
    
   inventario       fvargas    false    2251    186    205            	           2606    49401 $   DEPARTAMENTOS_VENTAS_DEPARTAMENTO_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "DEPARTAMENTOS_VENTAS"
    ADD CONSTRAINT "DEPARTAMENTOS_VENTAS_DEPARTAMENTO_FK" FOREIGN KEY ("ID_DEPARTAMENTO") REFERENCES inventario."DEPARTAMENTOS"(id);
 g   ALTER TABLE ONLY ventas."DEPARTAMENTOS_VENTAS" DROP CONSTRAINT "DEPARTAMENTOS_VENTAS_DEPARTAMENTO_FK";
       ventas       fvargas    false    2256    188    221            	           2606    49406    DEPARTAMENTOS_VENTAS_FACTURA_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "DEPARTAMENTOS_VENTAS"
    ADD CONSTRAINT "DEPARTAMENTOS_VENTAS_FACTURA_FK" FOREIGN KEY ("ID_FACTURA") REFERENCES "FACTURA"("ID");
 b   ALTER TABLE ONLY ventas."DEPARTAMENTOS_VENTAS" DROP CONSTRAINT "DEPARTAMENTOS_VENTAS_FACTURA_FK";
       ventas       fvargas    false    2282    217    221            	           2606    49373    FACTURAS_DETALLE_ID_PRODUCTO_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "FACTURA_DETALLE"
    ADD CONSTRAINT "FACTURAS_DETALLE_ID_PRODUCTO_FK" FOREIGN KEY ("ID_PRODUCTO") REFERENCES inventario."PRODUCTOS"(id);
 ]   ALTER TABLE ONLY ventas."FACTURA_DETALLE" DROP CONSTRAINT "FACTURAS_DETALLE_ID_PRODUCTO_FK";
       ventas       fvargas    false    2251    186    219            	           2606    49368    FACTURA_DETALLE_ID_FACTURA_FK    FK CONSTRAINT     �   ALTER TABLE ONLY "FACTURA_DETALLE"
    ADD CONSTRAINT "FACTURA_DETALLE_ID_FACTURA_FK" FOREIGN KEY ("ID_FACTURA") REFERENCES "FACTURA"("ID");
 [   ALTER TABLE ONLY ventas."FACTURA_DETALLE" DROP CONSTRAINT "FACTURA_DETALLE_ID_FACTURA_FK";
       ventas       fvargas    false    2282    219    217            �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �     