PGDMP                     
    w            cursada     11.5 (Ubuntu 11.5-1.pgdg18.04+1) #   11.5 (Ubuntu 11.5-0ubuntu0.19.04.1) ]    n6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            o6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            p6           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            q6           1262    16384    cursada    DATABASE     y   CREATE DATABASE cursada WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE cursada;
             postgres    false                        2615    216456    unc_esq_wireless    SCHEMA         CREATE SCHEMA unc_esq_wireless;
    DROP SCHEMA unc_esq_wireless;
             postgres    false            r6           0    0    SCHEMA unc_esq_wireless    ACL     e   GRANT ALL ON SCHEMA unc_esq_wireless TO unc_staff;
GRANT USAGE ON SCHEMA unc_esq_wireless TO PUBLIC;
                  postgres    false    22            �           1259    216457    barrio    TABLE     �   CREATE TABLE unc_esq_wireless.barrio (
    id_barrio integer NOT NULL,
    nombre character varying(20) NOT NULL,
    id_ciudad integer NOT NULL
);
 $   DROP TABLE unc_esq_wireless.barrio;
       unc_esq_wireless         postgres    false    22            s6           0    0    TABLE barrio    ACL     }   GRANT ALL ON TABLE unc_esq_wireless.barrio TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.barrio TO PUBLIC;
            unc_esq_wireless       postgres    false    415            �           1259    216460 	   categoria    TABLE     t   CREATE TABLE unc_esq_wireless.categoria (
    id_cat integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 '   DROP TABLE unc_esq_wireless.categoria;
       unc_esq_wireless         postgres    false    22            t6           0    0    TABLE categoria    ACL     �   GRANT ALL ON TABLE unc_esq_wireless.categoria TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.categoria TO PUBLIC;
            unc_esq_wireless       postgres    false    416            �           1259    216463    ciudad    TABLE     t   CREATE TABLE unc_esq_wireless.ciudad (
    id_ciudad integer NOT NULL,
    nombre character varying(80) NOT NULL
);
 $   DROP TABLE unc_esq_wireless.ciudad;
       unc_esq_wireless         postgres    false    22            u6           0    0    TABLE ciudad    ACL     }   GRANT ALL ON TABLE unc_esq_wireless.ciudad TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.ciudad TO PUBLIC;
            unc_esq_wireless       postgres    false    417            �           1259    216466    cliente    TABLE     d   CREATE TABLE unc_esq_wireless.cliente (
    id_cliente integer NOT NULL,
    saldo numeric(18,3)
);
 %   DROP TABLE unc_esq_wireless.cliente;
       unc_esq_wireless         postgres    false    22            v6           0    0    TABLE cliente    ACL        GRANT ALL ON TABLE unc_esq_wireless.cliente TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.cliente TO PUBLIC;
            unc_esq_wireless       postgres    false    418            �           1259    216469    comprobante    TABLE     �  CREATE TABLE unc_esq_wireless.comprobante (
    id_comp bigint NOT NULL,
    id_tcomp integer NOT NULL,
    fecha timestamp without time zone,
    id_lugar integer NOT NULL,
    comentario character varying(2048) NOT NULL,
    estado character varying(20),
    fecha_vencimiento timestamp without time zone,
    id_turno integer,
    importe numeric(18,5) NOT NULL,
    id_cliente integer NOT NULL
);
 )   DROP TABLE unc_esq_wireless.comprobante;
       unc_esq_wireless         postgres    false    22            w6           0    0    TABLE comprobante    ACL     �   GRANT ALL ON TABLE unc_esq_wireless.comprobante TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.comprobante TO PUBLIC;
            unc_esq_wireless       postgres    false    419            �           1259    216475 	   direccion    TABLE     
  CREATE TABLE unc_esq_wireless.direccion (
    id_direccion integer NOT NULL,
    id_persona integer NOT NULL,
    calle character varying(50) NOT NULL,
    numero integer NOT NULL,
    piso integer,
    depto character varying(50),
    id_barrio integer NOT NULL
);
 '   DROP TABLE unc_esq_wireless.direccion;
       unc_esq_wireless         postgres    false    22            x6           0    0    TABLE direccion    ACL     �   GRANT ALL ON TABLE unc_esq_wireless.direccion TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.direccion TO PUBLIC;
            unc_esq_wireless       postgres    false    420            �           1259    216478    equipo    TABLE     j  CREATE TABLE unc_esq_wireless.equipo (
    id_equipo integer NOT NULL,
    nombre character varying(80) NOT NULL,
    mac character varying(20),
    ip character varying(20),
    ap character varying(20),
    id_servicio integer NOT NULL,
    id_cliente integer NOT NULL,
    fecha_alta timestamp without time zone,
    fecha_baja timestamp without time zone
);
 $   DROP TABLE unc_esq_wireless.equipo;
       unc_esq_wireless         postgres    false    22            y6           0    0    TABLE equipo    ACL     }   GRANT ALL ON TABLE unc_esq_wireless.equipo TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.equipo TO PUBLIC;
            unc_esq_wireless       postgres    false    421            �           1259    216481    lineacomprobante    TABLE       CREATE TABLE unc_esq_wireless.lineacomprobante (
    nro_linea integer NOT NULL,
    id_comp bigint NOT NULL,
    id_tcomp integer NOT NULL,
    descripcion character varying(80) NOT NULL,
    cantidad integer NOT NULL,
    importe numeric(18,5) NOT NULL,
    id_servicio integer
);
 .   DROP TABLE unc_esq_wireless.lineacomprobante;
       unc_esq_wireless         postgres    false    22            z6           0    0    TABLE lineacomprobante    ACL     �   GRANT ALL ON TABLE unc_esq_wireless.lineacomprobante TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.lineacomprobante TO PUBLIC;
            unc_esq_wireless       postgres    false    422            �           1259    216484    lugar    TABLE     i   CREATE TABLE unc_esq_wireless.lugar (
    id_lugar integer NOT NULL,
    nombre character varying(80)
);
 #   DROP TABLE unc_esq_wireless.lugar;
       unc_esq_wireless         postgres    false    22            {6           0    0    TABLE lugar    ACL     {   GRANT ALL ON TABLE unc_esq_wireless.lugar TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.lugar TO PUBLIC;
            unc_esq_wireless       postgres    false    423            �           1259    216487    mail    TABLE     �   CREATE TABLE unc_esq_wireless.mail (
    id_persona integer NOT NULL,
    mail character varying(120) NOT NULL,
    tipo character varying(20) NOT NULL
);
 "   DROP TABLE unc_esq_wireless.mail;
       unc_esq_wireless         postgres    false    22            |6           0    0 
   TABLE mail    ACL     y   GRANT ALL ON TABLE unc_esq_wireless.mail TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.mail TO PUBLIC;
            unc_esq_wireless       postgres    false    424            �           1259    216490    persona    TABLE     �  CREATE TABLE unc_esq_wireless.persona (
    id_persona integer NOT NULL,
    tipo character varying(10) NOT NULL,
    tipodoc character varying(10) NOT NULL,
    nrodoc character varying(10) NOT NULL,
    nombre character varying(40) NOT NULL,
    apellido character varying(40) NOT NULL,
    fecha_nacimiento timestamp without time zone NOT NULL,
    fecha_baja timestamp without time zone,
    cuit character varying(20),
    activo boolean NOT NULL
);
 %   DROP TABLE unc_esq_wireless.persona;
       unc_esq_wireless         postgres    false    22            }6           0    0    TABLE persona    ACL        GRANT ALL ON TABLE unc_esq_wireless.persona TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.persona TO PUBLIC;
            unc_esq_wireless       postgres    false    425            �           1259    216493    personal    TABLE     j   CREATE TABLE unc_esq_wireless.personal (
    id_personal integer NOT NULL,
    id_rol integer NOT NULL
);
 &   DROP TABLE unc_esq_wireless.personal;
       unc_esq_wireless         postgres    false    22            ~6           0    0    TABLE personal    ACL     �   GRANT ALL ON TABLE unc_esq_wireless.personal TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.personal TO PUBLIC;
            unc_esq_wireless       postgres    false    426            �           1259    216496    rol    TABLE     n   CREATE TABLE unc_esq_wireless.rol (
    id_rol integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 !   DROP TABLE unc_esq_wireless.rol;
       unc_esq_wireless         postgres    false    22            6           0    0 	   TABLE rol    ACL     w   GRANT ALL ON TABLE unc_esq_wireless.rol TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.rol TO PUBLIC;
            unc_esq_wireless       postgres    false    427            �           1259    216499    servicio    TABLE       CREATE TABLE unc_esq_wireless.servicio (
    id_servicio integer NOT NULL,
    nombre character varying(80) NOT NULL,
    periodico boolean NOT NULL,
    costo numeric(18,3) NOT NULL,
    intervalo integer,
    tipo_intervalo character varying(20),
    activo boolean DEFAULT true NOT NULL,
    id_cat integer NOT NULL,
    CONSTRAINT check_0 CHECK (((tipo_intervalo)::text = ANY (ARRAY[('semana'::character varying)::text, ('quincena'::character varying)::text, ('mes'::character varying)::text, ('bimestre'::character varying)::text])))
);
 &   DROP TABLE unc_esq_wireless.servicio;
       unc_esq_wireless         postgres    false    22            �6           0    0    TABLE servicio    ACL     �   GRANT ALL ON TABLE unc_esq_wireless.servicio TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.servicio TO PUBLIC;
            unc_esq_wireless       postgres    false    428            �           1259    216504    telefono    TABLE     �   CREATE TABLE unc_esq_wireless.telefono (
    id_persona integer NOT NULL,
    carac integer NOT NULL,
    numero integer NOT NULL
);
 &   DROP TABLE unc_esq_wireless.telefono;
       unc_esq_wireless         postgres    false    22            �6           0    0    TABLE telefono    ACL     �   GRANT ALL ON TABLE unc_esq_wireless.telefono TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.telefono TO PUBLIC;
            unc_esq_wireless       postgres    false    429            �           1259    216507    tipocomprobante    TABLE     �   CREATE TABLE unc_esq_wireless.tipocomprobante (
    id_tcomp integer NOT NULL,
    nombre character varying(30) NOT NULL,
    tipo character varying(80) NOT NULL
);
 -   DROP TABLE unc_esq_wireless.tipocomprobante;
       unc_esq_wireless         postgres    false    22            �6           0    0    TABLE tipocomprobante    ACL     �   GRANT ALL ON TABLE unc_esq_wireless.tipocomprobante TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.tipocomprobante TO PUBLIC;
            unc_esq_wireless       postgres    false    430            �           1259    216510    turno    TABLE     '  CREATE TABLE unc_esq_wireless.turno (
    id_turno integer NOT NULL,
    id_lugar integer NOT NULL,
    desde timestamp without time zone NOT NULL,
    hasta timestamp without time zone,
    dinero_inicio numeric(18,3) NOT NULL,
    dinero_fin numeric(18,3),
    id_personal integer NOT NULL
);
 #   DROP TABLE unc_esq_wireless.turno;
       unc_esq_wireless         postgres    false    22            �6           0    0    TABLE turno    ACL     {   GRANT ALL ON TABLE unc_esq_wireless.turno TO unc_staff;
GRANT SELECT,REFERENCES ON TABLE unc_esq_wireless.turno TO PUBLIC;
            unc_esq_wireless       postgres    false    431            [6          0    216457    barrio 
   TABLE DATA               H   COPY unc_esq_wireless.barrio (id_barrio, nombre, id_ciudad) FROM stdin;
    unc_esq_wireless       postgres    false    415   �w       \6          0    216460 	   categoria 
   TABLE DATA               =   COPY unc_esq_wireless.categoria (id_cat, nombre) FROM stdin;
    unc_esq_wireless       postgres    false    416   {       ]6          0    216463    ciudad 
   TABLE DATA               =   COPY unc_esq_wireless.ciudad (id_ciudad, nombre) FROM stdin;
    unc_esq_wireless       postgres    false    417   M{       ^6          0    216466    cliente 
   TABLE DATA               >   COPY unc_esq_wireless.cliente (id_cliente, saldo) FROM stdin;
    unc_esq_wireless       postgres    false    418          _6          0    216469    comprobante 
   TABLE DATA               �   COPY unc_esq_wireless.comprobante (id_comp, id_tcomp, fecha, id_lugar, comentario, estado, fecha_vencimiento, id_turno, importe, id_cliente) FROM stdin;
    unc_esq_wireless       postgres    false    419   ��       `6          0    216475 	   direccion 
   TABLE DATA               n   COPY unc_esq_wireless.direccion (id_direccion, id_persona, calle, numero, piso, depto, id_barrio) FROM stdin;
    unc_esq_wireless       postgres    false    420   ~�       a6          0    216478    equipo 
   TABLE DATA               {   COPY unc_esq_wireless.equipo (id_equipo, nombre, mac, ip, ap, id_servicio, id_cliente, fecha_alta, fecha_baja) FROM stdin;
    unc_esq_wireless       postgres    false    421   ��       b6          0    216481    lineacomprobante 
   TABLE DATA                  COPY unc_esq_wireless.lineacomprobante (nro_linea, id_comp, id_tcomp, descripcion, cantidad, importe, id_servicio) FROM stdin;
    unc_esq_wireless       postgres    false    422   G�       c6          0    216484    lugar 
   TABLE DATA               ;   COPY unc_esq_wireless.lugar (id_lugar, nombre) FROM stdin;
    unc_esq_wireless       postgres    false    423   ��       d6          0    216487    mail 
   TABLE DATA               @   COPY unc_esq_wireless.mail (id_persona, mail, tipo) FROM stdin;
    unc_esq_wireless       postgres    false    424   ��       e6          0    216490    persona 
   TABLE DATA               �   COPY unc_esq_wireless.persona (id_persona, tipo, tipodoc, nrodoc, nombre, apellido, fecha_nacimiento, fecha_baja, cuit, activo) FROM stdin;
    unc_esq_wireless       postgres    false    425   
�       f6          0    216493    personal 
   TABLE DATA               A   COPY unc_esq_wireless.personal (id_personal, id_rol) FROM stdin;
    unc_esq_wireless       postgres    false    426   L�       g6          0    216496    rol 
   TABLE DATA               7   COPY unc_esq_wireless.rol (id_rol, nombre) FROM stdin;
    unc_esq_wireless       postgres    false    427   ��       h6          0    216499    servicio 
   TABLE DATA               ~   COPY unc_esq_wireless.servicio (id_servicio, nombre, periodico, costo, intervalo, tipo_intervalo, activo, id_cat) FROM stdin;
    unc_esq_wireless       postgres    false    428   ��       i6          0    216504    telefono 
   TABLE DATA               G   COPY unc_esq_wireless.telefono (id_persona, carac, numero) FROM stdin;
    unc_esq_wireless       postgres    false    429   p�       j6          0    216507    tipocomprobante 
   TABLE DATA               K   COPY unc_esq_wireless.tipocomprobante (id_tcomp, nombre, tipo) FROM stdin;
    unc_esq_wireless       postgres    false    430   ��       k6          0    216510    turno 
   TABLE DATA               s   COPY unc_esq_wireless.turno (id_turno, id_lugar, desde, hasta, dinero_inicio, dinero_fin, id_personal) FROM stdin;
    unc_esq_wireless       postgres    false    431   ��       b4           2606    216517    barrio barrio_pk 
   CONSTRAINT     _   ALTER TABLE ONLY unc_esq_wireless.barrio
    ADD CONSTRAINT barrio_pk PRIMARY KEY (id_barrio);
 D   ALTER TABLE ONLY unc_esq_wireless.barrio DROP CONSTRAINT barrio_pk;
       unc_esq_wireless         postgres    false    415            d4           2606    216519    categoria categoria_pk 
   CONSTRAINT     b   ALTER TABLE ONLY unc_esq_wireless.categoria
    ADD CONSTRAINT categoria_pk PRIMARY KEY (id_cat);
 J   ALTER TABLE ONLY unc_esq_wireless.categoria DROP CONSTRAINT categoria_pk;
       unc_esq_wireless         postgres    false    416            f4           2606    216521    ciudad ciudad_pk 
   CONSTRAINT     _   ALTER TABLE ONLY unc_esq_wireless.ciudad
    ADD CONSTRAINT ciudad_pk PRIMARY KEY (id_ciudad);
 D   ALTER TABLE ONLY unc_esq_wireless.ciudad DROP CONSTRAINT ciudad_pk;
       unc_esq_wireless         postgres    false    417            h4           2606    216523    cliente cliente_pk 
   CONSTRAINT     b   ALTER TABLE ONLY unc_esq_wireless.cliente
    ADD CONSTRAINT cliente_pk PRIMARY KEY (id_cliente);
 F   ALTER TABLE ONLY unc_esq_wireless.cliente DROP CONSTRAINT cliente_pk;
       unc_esq_wireless         postgres    false    418            l4           2606    216525    direccion direccion_pk 
   CONSTRAINT     t   ALTER TABLE ONLY unc_esq_wireless.direccion
    ADD CONSTRAINT direccion_pk PRIMARY KEY (id_direccion, id_persona);
 J   ALTER TABLE ONLY unc_esq_wireless.direccion DROP CONSTRAINT direccion_pk;
       unc_esq_wireless         postgres    false    420    420            n4           2606    216527    equipo equipo_pk 
   CONSTRAINT     _   ALTER TABLE ONLY unc_esq_wireless.equipo
    ADD CONSTRAINT equipo_pk PRIMARY KEY (id_equipo);
 D   ALTER TABLE ONLY unc_esq_wireless.equipo DROP CONSTRAINT equipo_pk;
       unc_esq_wireless         postgres    false    421            t4           2606    216529    mail mail_pk 
   CONSTRAINT     b   ALTER TABLE ONLY unc_esq_wireless.mail
    ADD CONSTRAINT mail_pk PRIMARY KEY (id_persona, mail);
 @   ALTER TABLE ONLY unc_esq_wireless.mail DROP CONSTRAINT mail_pk;
       unc_esq_wireless         postgres    false    424    424            x4           2606    216531    personal personal_pk 
   CONSTRAINT     e   ALTER TABLE ONLY unc_esq_wireless.personal
    ADD CONSTRAINT personal_pk PRIMARY KEY (id_personal);
 H   ALTER TABLE ONLY unc_esq_wireless.personal DROP CONSTRAINT personal_pk;
       unc_esq_wireless         postgres    false    426            j4           2606    216533    comprobante pk_comprobante 
   CONSTRAINT     q   ALTER TABLE ONLY unc_esq_wireless.comprobante
    ADD CONSTRAINT pk_comprobante PRIMARY KEY (id_comp, id_tcomp);
 N   ALTER TABLE ONLY unc_esq_wireless.comprobante DROP CONSTRAINT pk_comprobante;
       unc_esq_wireless         postgres    false    419    419            p4           2606    216535    lineacomprobante pk_lineacomp 
   CONSTRAINT        ALTER TABLE ONLY unc_esq_wireless.lineacomprobante
    ADD CONSTRAINT pk_lineacomp PRIMARY KEY (nro_linea, id_comp, id_tcomp);
 Q   ALTER TABLE ONLY unc_esq_wireless.lineacomprobante DROP CONSTRAINT pk_lineacomp;
       unc_esq_wireless         postgres    false    422    422    422            r4           2606    216537    lugar pk_lugar 
   CONSTRAINT     \   ALTER TABLE ONLY unc_esq_wireless.lugar
    ADD CONSTRAINT pk_lugar PRIMARY KEY (id_lugar);
 B   ALTER TABLE ONLY unc_esq_wireless.lugar DROP CONSTRAINT pk_lugar;
       unc_esq_wireless         postgres    false    423            v4           2606    216539    persona pk_persona 
   CONSTRAINT     b   ALTER TABLE ONLY unc_esq_wireless.persona
    ADD CONSTRAINT pk_persona PRIMARY KEY (id_persona);
 F   ALTER TABLE ONLY unc_esq_wireless.persona DROP CONSTRAINT pk_persona;
       unc_esq_wireless         postgres    false    425            |4           2606    216541    servicio pk_servicio 
   CONSTRAINT     e   ALTER TABLE ONLY unc_esq_wireless.servicio
    ADD CONSTRAINT pk_servicio PRIMARY KEY (id_servicio);
 H   ALTER TABLE ONLY unc_esq_wireless.servicio DROP CONSTRAINT pk_servicio;
       unc_esq_wireless         postgres    false    428            �4           2606    216543 #   tipocomprobante pk_tipo_comprobante 
   CONSTRAINT     q   ALTER TABLE ONLY unc_esq_wireless.tipocomprobante
    ADD CONSTRAINT pk_tipo_comprobante PRIMARY KEY (id_tcomp);
 W   ALTER TABLE ONLY unc_esq_wireless.tipocomprobante DROP CONSTRAINT pk_tipo_comprobante;
       unc_esq_wireless         postgres    false    430            z4           2606    216545 
   rol rol_pk 
   CONSTRAINT     V   ALTER TABLE ONLY unc_esq_wireless.rol
    ADD CONSTRAINT rol_pk PRIMARY KEY (id_rol);
 >   ALTER TABLE ONLY unc_esq_wireless.rol DROP CONSTRAINT rol_pk;
       unc_esq_wireless         postgres    false    427            ~4           2606    216547    telefono telefono_pk 
   CONSTRAINT     s   ALTER TABLE ONLY unc_esq_wireless.telefono
    ADD CONSTRAINT telefono_pk PRIMARY KEY (id_persona, carac, numero);
 H   ALTER TABLE ONLY unc_esq_wireless.telefono DROP CONSTRAINT telefono_pk;
       unc_esq_wireless         postgres    false    429    429    429            �4           2606    216549    turno turno_pk 
   CONSTRAINT     \   ALTER TABLE ONLY unc_esq_wireless.turno
    ADD CONSTRAINT turno_pk PRIMARY KEY (id_turno);
 B   ALTER TABLE ONLY unc_esq_wireless.turno DROP CONSTRAINT turno_pk;
       unc_esq_wireless         postgres    false    431            �4           2606    216550    barrio fk_barrio_ciudad    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.barrio
    ADD CONSTRAINT fk_barrio_ciudad FOREIGN KEY (id_ciudad) REFERENCES unc_esq_wireless.ciudad(id_ciudad);
 K   ALTER TABLE ONLY unc_esq_wireless.barrio DROP CONSTRAINT fk_barrio_ciudad;
       unc_esq_wireless       postgres    false    417    415    13414            �4           2606    216555    cliente fk_cliente_persona    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.cliente
    ADD CONSTRAINT fk_cliente_persona FOREIGN KEY (id_cliente) REFERENCES unc_esq_wireless.persona(id_persona);
 N   ALTER TABLE ONLY unc_esq_wireless.cliente DROP CONSTRAINT fk_cliente_persona;
       unc_esq_wireless       postgres    false    13430    418    425            �4           2606    216560 "   comprobante fk_comprobante_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.comprobante
    ADD CONSTRAINT fk_comprobante_cliente FOREIGN KEY (id_cliente) REFERENCES unc_esq_wireless.cliente(id_cliente);
 V   ALTER TABLE ONLY unc_esq_wireless.comprobante DROP CONSTRAINT fk_comprobante_cliente;
       unc_esq_wireless       postgres    false    418    13416    419            �4           2606    216565     comprobante fk_comprobante_lugar    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.comprobante
    ADD CONSTRAINT fk_comprobante_lugar FOREIGN KEY (id_lugar) REFERENCES unc_esq_wireless.lugar(id_lugar);
 T   ALTER TABLE ONLY unc_esq_wireless.comprobante DROP CONSTRAINT fk_comprobante_lugar;
       unc_esq_wireless       postgres    false    419    423    13426            �4           2606    216570 *   comprobante fk_comprobante_tipocomprobante    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.comprobante
    ADD CONSTRAINT fk_comprobante_tipocomprobante FOREIGN KEY (id_tcomp) REFERENCES unc_esq_wireless.tipocomprobante(id_tcomp);
 ^   ALTER TABLE ONLY unc_esq_wireless.comprobante DROP CONSTRAINT fk_comprobante_tipocomprobante;
       unc_esq_wireless       postgres    false    13440    419    430            �4           2606    216575     comprobante fk_comprobante_turno    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.comprobante
    ADD CONSTRAINT fk_comprobante_turno FOREIGN KEY (id_turno) REFERENCES unc_esq_wireless.turno(id_turno);
 T   ALTER TABLE ONLY unc_esq_wireless.comprobante DROP CONSTRAINT fk_comprobante_turno;
       unc_esq_wireless       postgres    false    431    419    13442            �4           2606    216580    direccion fk_direccion    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.direccion
    ADD CONSTRAINT fk_direccion FOREIGN KEY (id_persona) REFERENCES unc_esq_wireless.persona(id_persona);
 J   ALTER TABLE ONLY unc_esq_wireless.direccion DROP CONSTRAINT fk_direccion;
       unc_esq_wireless       postgres    false    425    420    13430            �4           2606    216585    direccion fk_direccion_barrio    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.direccion
    ADD CONSTRAINT fk_direccion_barrio FOREIGN KEY (id_barrio) REFERENCES unc_esq_wireless.barrio(id_barrio);
 Q   ALTER TABLE ONLY unc_esq_wireless.direccion DROP CONSTRAINT fk_direccion_barrio;
       unc_esq_wireless       postgres    false    415    420    13410            �4           2606    216590    equipo fk_equipo_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.equipo
    ADD CONSTRAINT fk_equipo_cliente FOREIGN KEY (id_cliente) REFERENCES unc_esq_wireless.cliente(id_cliente);
 L   ALTER TABLE ONLY unc_esq_wireless.equipo DROP CONSTRAINT fk_equipo_cliente;
       unc_esq_wireless       postgres    false    418    421    13416            �4           2606    216595    equipo fk_equipo_servicio    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.equipo
    ADD CONSTRAINT fk_equipo_servicio FOREIGN KEY (id_servicio) REFERENCES unc_esq_wireless.servicio(id_servicio);
 M   ALTER TABLE ONLY unc_esq_wireless.equipo DROP CONSTRAINT fk_equipo_servicio;
       unc_esq_wireless       postgres    false    428    421    13436            �4           2606    216600 0   lineacomprobante fk_lineacomprobante_comprobante    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.lineacomprobante
    ADD CONSTRAINT fk_lineacomprobante_comprobante FOREIGN KEY (id_comp, id_tcomp) REFERENCES unc_esq_wireless.comprobante(id_comp, id_tcomp);
 d   ALTER TABLE ONLY unc_esq_wireless.lineacomprobante DROP CONSTRAINT fk_lineacomprobante_comprobante;
       unc_esq_wireless       postgres    false    419    422    422    419    13418            �4           2606    216605    mail fk_mail_persona    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.mail
    ADD CONSTRAINT fk_mail_persona FOREIGN KEY (id_persona) REFERENCES unc_esq_wireless.persona(id_persona);
 H   ALTER TABLE ONLY unc_esq_wireless.mail DROP CONSTRAINT fk_mail_persona;
       unc_esq_wireless       postgres    false    425    424    13430            �4           2606    216610    personal fk_personal_persona    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.personal
    ADD CONSTRAINT fk_personal_persona FOREIGN KEY (id_personal) REFERENCES unc_esq_wireless.persona(id_persona);
 P   ALTER TABLE ONLY unc_esq_wireless.personal DROP CONSTRAINT fk_personal_persona;
       unc_esq_wireless       postgres    false    13430    425    426            �4           2606    216615    personal fk_personal_rol    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.personal
    ADD CONSTRAINT fk_personal_rol FOREIGN KEY (id_rol) REFERENCES unc_esq_wireless.rol(id_rol);
 L   ALTER TABLE ONLY unc_esq_wireless.personal DROP CONSTRAINT fk_personal_rol;
       unc_esq_wireless       postgres    false    426    13434    427            �4           2606    216620    turno fk_personal_turno    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.turno
    ADD CONSTRAINT fk_personal_turno FOREIGN KEY (id_personal) REFERENCES unc_esq_wireless.personal(id_personal);
 K   ALTER TABLE ONLY unc_esq_wireless.turno DROP CONSTRAINT fk_personal_turno;
       unc_esq_wireless       postgres    false    431    426    13432            �4           2606    216625    servicio fk_servicio_categoria    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.servicio
    ADD CONSTRAINT fk_servicio_categoria FOREIGN KEY (id_cat) REFERENCES unc_esq_wireless.categoria(id_cat);
 R   ALTER TABLE ONLY unc_esq_wireless.servicio DROP CONSTRAINT fk_servicio_categoria;
       unc_esq_wireless       postgres    false    13412    428    416            �4           2606    216630    telefono fk_telefono    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.telefono
    ADD CONSTRAINT fk_telefono FOREIGN KEY (id_persona) REFERENCES unc_esq_wireless.persona(id_persona);
 H   ALTER TABLE ONLY unc_esq_wireless.telefono DROP CONSTRAINT fk_telefono;
       unc_esq_wireless       postgres    false    425    429    13430            �4           2606    216635    turno fk_turno_lugar    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.turno
    ADD CONSTRAINT fk_turno_lugar FOREIGN KEY (id_lugar) REFERENCES unc_esq_wireless.lugar(id_lugar);
 H   ALTER TABLE ONLY unc_esq_wireless.turno DROP CONSTRAINT fk_turno_lugar;
       unc_esq_wireless       postgres    false    423    431    13426            �4           2606    216640 *   lineacomprobante lineacomprobante_servicio    FK CONSTRAINT     �   ALTER TABLE ONLY unc_esq_wireless.lineacomprobante
    ADD CONSTRAINT lineacomprobante_servicio FOREIGN KEY (id_servicio) REFERENCES unc_esq_wireless.servicio(id_servicio);
 ^   ALTER TABLE ONLY unc_esq_wireless.lineacomprobante DROP CONSTRAINT lineacomprobante_servicio;
       unc_esq_wireless       postgres    false    13436    422    428            [6   2  x�U��v7����/ ��m�%��HJ1''D"�FK��˱�>m�Ԯ\�)�ˀ����Y��o�����	N���m?�Z�z�zC�p,	��c�6	���c�Td1]�6䰍�pv߆��֒�,tCx̰�D�m�Mzr:�cw�i�����&�p�>E4~��d�ۖO�5$�V0�D�G�C�;�K臱kB�ڒpx3��0�BDQq|R <�
��&W��eI
lگ��OM�Q$%VpVX5)�>��h��cs|�E�4x;���j�7���K�1$-ֹ�w�X9��.�����(M�c��BפXǐwO��{(AJ�ziII\\�K��y�3y��䊔���
U��ґ:�:&��Jp��<��N�b���
��&��)n-����+lx)���&�����I�f�H���C�t��%8�b9=]఼�$�1MO�	Q���v�qEF��1���Oyr�6�ͿM�����\_36��"c1+���,�����m�R�y��TW���[�fsO��?&�n�5���7:��Ϲ+�цj��G�泸����,XGN)�σ+,<xlW�
�X�1�G&�yT�l������s\�e�[���,˝�����m��ƾ�����;T�:M��2�]�*����܇���u�Z��h=����/�
߅c�N�,������Iܬ�9��94�h�P����J!���@u|#x�<759��#�WX/
}/0�i^��qy��?�x��g�;V��.i�Go������1�f{���!��Y�a��yq��*\�������0?�"�� ��/�      \6   5   x�3��M,.N�2���O�/*�,�2�,��)-)H,�2����2�L-����� ?R�      ]6   �  x�MT�r�6<�|@��M%�$�,Y��/��rg����������$�T��䔛��Jc]q��$�==ݓӕsv��l��ݭ5,!��n̴�a<K{��G'\у��^7�g��gd���?Y�v�uPu�Е��qKo���4�<z�{|6a-n9_ѝ�p&��V�Z�r^Э	2�a4��'̫ n0q�Wt.6���aqV܆�nt�	\Ђ�<��9�Ÿ��:����A��Y�Xt��Z��"��`_��(�	��2q���	+��j5pQ��_4�֚��}4Q�������&�}a�>x�,Z�^A%E��2{� 3�8��߸\ѥP�~�'1'��_Y�+sH�����eIo���`��ˊn=PNXzv�N�}4'I�lP����-��Y���s���b��=]�e�g��f�K�*�Y/a�UNo��[�UA�J�>��q�o��,.3S���8�;Y�*鵞޸�П�3�j�����s�$�2k�Ý-��>�ۈX�::�Q���a@�>�e7r���j^~U�U�>��^{��C2`]�=��ϋZ�uE��1~=��h�ҡ��Ս�n�n�UИ�}7�֪{����QnVt��q�%�����c2^��%,�Q~\L�]�TP�����$P7��a֭8�}��������e�{y��Ȧ����I�"l�S|�Q(��>p�B�ө#m~j�쐳� C�K�8r�k�E�/�Ĕ۔��;n�|M\۞B�N�����x��`]�4���KΌ����[�Y����Y��@_xka����9�
 9�]���Q��*4{�SW�c'���w��:�$w-�r����u�S���F��s)4��]ȑ{�S� �~�	��^C�K����gy�S���uJ�EP�o裄�hfL�/�\�P�utm<���~�nŚg̚ՊΧI�և��3�>P�      ^6   �  x�%Rɭ%1<ӹ|ľ�2��1��YEmؕ�u9S>7��e-�N͡�T7�s���^��u�&��{r)�:�%mm�/������ݚ�a��	�p8 ��ds��v� 	n�\�s�&S3��<d��v�K6�,�M!�l`��:v��F*�����
�`�/�,Ș70k���*�ts(0֭.��CҢ�������f���'Zt��c�&tYM�� Ț���)��Ś�د�B�[��4D���@+U�0|~mT�g�1�F��p74#����R�x�w��h���__��3,��j��M��5h�{y�#��ϡ$X�����5w�_�A�n�c9�n8�;J�D���O0�Y��ߢ�-e��{xց|Xؠ���^���ȷ�ͣ9ʦ�_�;(	�����*r�������}�H��      _6      x��}ێ#I���W�D	nw�xk��.ة�E��^T�*-⒣0��f��ܣ0�H����.���!ͦE/zS�O��I�u۞�����k��g���6����v>g�?m�'�u߱�?/�߮�/��`�._T�E��UX��_>�/���������G�_�?��ߊ�A-�~/��iU�IoO:�o/������qZ�������z�\�������?4�rf�ʟ����y�y �w?)�R|�Ï�����~�\/�~���M�t��}0��G�4ϛj�o������|���0������u���#�W����.����?�
�n)�����|Y�o���������y?IN?�2Ix,,�_�{��ch5o��a^"~��R�Ub��-iZ7�d��\mˏ��e��l�vq�)�&��V~_O�<Z=a�-Ϲ�^����)���J�TyY�����q=ߞ�2}�#*ӧ����ʺ�@���0�����cy>/+V��̟�n2XҸ�ʐx-���l���~}��;�����ᯭ�0�/C)���[��ۏ���~��!�G�6���hhyh�ͺJ�	�b��G���|F�q�z���J�TÏj��sU,ƌ�������ࡰ�q�	���p}������K\>��k/�C?`S�����mqڤ�������c~^��=����;ټ�c��+OG�l�'��8��]n��������q-�<`�ʴa�<`�о{���猣SiA>/o�Y�_�N�|;<� [�]����u�>_>W:�篏[�#�������AǺ��dו���^��~�pf��MF��K��6ژ0�?�N�Ko�3��E�q��]�5�f:�r�`A�\�����'g���H��/������V���o��F�7�bO۪�C������cʓx�6�dS��O�a������J'��_z�ds�+����I���N'���_��5,v��ԧͳ�7��C4١Y�*�Ht��.1�S�_�p����8�Z�]i�����ۭ99�vȰ�����8���'�N���sD-N�S�O��i��䊳7�V��ܯ��Ĳ�҇���3��r��{?���Г����Y]���F��F�,�����O���=����p��l�]��񁖮�K:���2��ǯ��b�Ǎ�-+��J;��Np�i#/���|}�~��]`�`S���T�0�aKykY�_Y(:�>�����������ُu;[6�S��Xl�xV9m�f��r~�|��&�������0Ύ���ذ�l ��Q~��~} z=?_n�/����jUܶQ�g<ۂ�_� s��]Wږ��Å��g�N}5�eUF��<0iGO��ߕz�q�|]�o��ӹ����T�-!!�
3l�Ϋ����_n��[�h{]�T����'r��r���,��u�#���{��E+L�2�p?���e��֟b���J:fM��.�w8�+L2,t7DJ�}u�1�w�m( A�zq��}�:Y�h�)�i���b!i�ټ+=v?��o2zx��<O���u����Y�
�Tfa}?}4�3fv���M-���aQ1��������q}�_���s���d�VF��@�_�x$4�[]f���:���_:��,L\���χq0e��I����$z�%;��� ��x�����`�lcyM�	z4Qv��;q[��-���/ ��t�\�ț2���{\����|��߲�G��
#�G�=DQe�6<��=�9�<�F(�@���E����yX����猲>��\=�(Eo��",�!�|H�`+�%ǭF3np�X����v�r�4[m1n )QU���״op� 8K�޽�]�5ண���cW���n�|Uq�f�h�a��a(S�q��)�<;�R|Ѱ��A��Nֲe�V�-�"��m~M�O�e��#L�r���	���~9�\�8������*�ɟ���'�,k��� ���|=���Z��Q�e��h<O��0����vtTw�ym@�1�5�	�d=�k�0g�� �ٲ�n�lV`js��v��t���m�����j��F�i[(�]�ql��xՋ���!�_M>G�(����@�H������|Z���!X8�xRұ�8B���;rD2 
P)�!XBp@�P'.��__��/׃�-B��4ƪ"��q_���yf��B�d8�O�.jqa�"�T����Z��`��|�//'& �����zM^�������`��y:@�o�M��AB5 ��Rxa[����1��::��mcƼ��t�\&�Q���>n�^W<�eQHn4�s�1�23�����wi�A�Ml4m/5,����f:��M�Å+U�5�Y���Ұ}+f�q��T�@�����6
���5�/��+UB�n�J$T°�l�l�zP�D�-ܚv?�]�.��P�<��;��`԰͒>��u��k\b�>#��v���Lү���b[:�%��@�@%e�m��]yr\v����豣2'c��(�z��S��Yȧ�������t"-���J5o �Y��J;as��z�,Q�|{�σ��ؠ;
I\~�����y~�Kޙ� �lI@|�u�ج*TB��� 5�m`"�də�@����~ĥ`�Umf�-���!�_����f�<{�n�l��`�:G���{�a�}>�G��Ҩ��Q�T �V���r�mt!���v���~��F���ԧ���
k�^~�(gX"��W�2����@#Km��n�{{�����z=?߁msdq0����q�v�����t=_~|}|���'�����3�n��7G����|mI�6�#�m�g�
Wx{�A!#՛qG
��82U��~�0�1�m�iO���V����F���eh@^���<� ��I��=mn%q��^�����::!E�'~�v8��W����G�:�j��l��NYWx��k�_��f#�3e@= F<q�ck2g�I/��ldzzJ>2��A�䞅�	�C��Gq����!��>	R>?s��l0��N�$��$�����I񔄠W�w�Ռ�>ޙ��I����8&/�T�DN�y�l���|�}Nk�}f�x�y�x,�������7t�:x1|���i�[Ea吔#J�
���B�)drM̥(��$��1��h�Ox�p ��
�|�J��.�pU�S��tl���( lB��4/9��,��V�Ȉ�
� ���\��Yã3uA�A�^�z��-;s� � ��љ� �`��O�0�eT�g��JT��S�\*/h x�+,�yY��؄��=bY�8q���v34��Y��<K�d0?@"���D�ߨN5�7|k9�=ӹ�"	oB�,��P������C<L��섁%�����ͮu�Sɔ�f"�.'��U
��m����������Vx�UW�tɄ�����ʒɇ����8S[�8N1���,���	������ٍ�z��,�p�r���ū�?��9��	���������0���O+{�a�,J,���@8#��E�F�����.���}��#���Q�6Ś��5�\9eyZ�����2�	p���TU3�OD)<4\���r^���&���v�Ǵ����=Ma��9�9�G@�N��x,�>�t���������9�0�1	 M-�xӓ�@�ŕ�=��_�_n���S��l8� �,�J���m#���~}�D�����8anS����!���Q��������/�iv�L�?�"�9	Lo�|�r�K����s6{PY��n����,A4fZoU,D{�Slq�v�߄A��q'e9��[A�z�8o�B5��6nC+�2G�V�m��#�G�Mnϟ��� ﵙ��}n�#M�@%`�q����x��I������<��@�<�wJ&���#c�h1��r��s�x0ƬC��%-��E�x����L%đ�\��8��-���Ii�
�h��,쁝�e��ك�1v�/�l�c��W�w��jK�N8$d�ӛ$�v�ji�Qͤ:�C=�;5����P��6������>
$�����,sيu��  (��F�۸�h��A h��FɘNs    p2��k�>�{�U���8��+���+�̃�MX)<N�[��͜f�f��կc��D���:|�t��-#:���Ӗ�65����0�$��:��Ŵ��A,��+`������
����!�#ݏa,��� ���.���9�y���?__�m����ٝ�]��͐����=��e� G�%���EV���oR1g�H-�V?R.��	3��p�fʠQ��D���ϕ�Tr/�#��0�U�Xa�`�7�@�
U���ń#�m�Lȋx�(���݁����7���4mC<�=DBS(C�TEg.�v�Z'X�?.�_��1��e�Q���1��V���Y���]�T�/?W�<��Co`�sp� �f@�)����! d�a7MF����@D��(�Iz�"��#���t�S̈oF���9��Y��5����֐���#��,	���dN�SV�u��,�24Bb���(x�����a͇����v�1g�h2�Vg������1�J͆���Pv���j�&�l�4s�C���+�ېq�V��<ٱg�������hi ����8��!��>�!Su��;���=�D�^�rʘ0)	��IkN���a�CR�Q	5�ʞװg���#�b]�Sf$��7{S��a��5��`*�Fy�Y�/����PT���T�Jk��&��(�])�.AV�<�Rc�O!���nJ����W���y�(�C%5��(<XI�I&�X&A`;��������(�p1�ځ�.n5T��d'�s��'����a/a^~��TE��;�ᜉڢS��ӛ��O�p��&f@		�XY�Q�Ib ���.��w$��G�)�J`��y��倌��J��LF�;�p����>������,��#h��'+�(���(�����,m�U�x���k`a��=Rԋ������A��y�=�	/7�%����0��c�ߌ`�0E;/I��U�o���db��bg���Kɜ��b氌�`d%�B����YՔ���2�W�f��X!IoݲH*���
[��l}n2;���P6Jd�����9P�H{��~)L���gj��E���q�g[\�qO�z[��xHJW|��,0�� �u8o��fYNO�Yl��L�=������9R�ge�T`uy��OY��#��}
׎�2)�r��i��C!g�ty���R�w�09E��~����G牪/���je��ն!F�*j]@
�𧋰��������&lg26E%}2E|�i�r�b���(�Z�|d��lUN��n�1O��ͥ,�.m,͙P#�b]�J&��!?�Y��+P|���� Uf趪���Q沨����TE��'��QM�a�XP%��+�*����Z;΋�^1c�c��T^LM�M"���f��[-����	-���#b�g�BU	Q��#��3�&�zi��!��<Hms��5�.�iNY�SvoF���h�Mӵe�0�:J����έ�T��r�c���J��1�5�[=���tu.a}����j��hU�d�Gz8��kj 0�ܰ5t�?����)���w��E��Ԩ����z̸� c/�,�<m��q⥎���QC6���R�t[��5�-���!����V��q&mv��r��9)�*��|Hu���s�^������G3�2�ч�/ǂ�q��@��u�^Ҙ��N6���U)��Zr*�C��f 4�00/C?�z����ʽZ!٩/�iňJ��f@_�;�HO���Y2����e�Y#Zp�{������e_}��$*����jTN��K8���q���Wi9�߸'O�QI�ɏB�x��?aꇃb �<#y�^>UX2�u����x����6��I��bEM���MJ�Ao��,ٍ�෢�{�*��"9T�1��唽y��Tbb}���K��h�t��2��(�vNQ�K.b�Jgδ\��g0�% B:/Y7��v���u�e��n��k���D��\$G� 9�0��K�AŦ!N_�����t��^�
��丈{01��J�\�HG,z��a(�&��)i^�ثB�B�lf:���:l���ENP&���$l�����T�TM0�e�-��m���u�>-�T���R�)��i��5��5��Rݢ4_�;/D��AU^�D��}�NJ��M,V00iq&�#�� ͔���$n��G�v��)7> �7f-�Y������a�r
e�`퓚����e(���ꗋș��\k�̂JGiwl��\3	+���Ԓ�T��m���ː�9�Y�Uc����kaK�;J�Ӄ�f�J��r�E��+0�3<�P����>qyV���4��(�-;G�Z7U�*��m����R�T&q)vy�l��t���pN������bwt��3�V�l䆦$�HA��`E�K��K�L��26׎�Nn`7ݹ��I�L������ڤ:����*2��T���E��Or��|�f7�u��FR���I�ngV�t�1��*����6��.�����/��C��_��*A���9���R��V����uجJ$�n<M|�

��6Ff*�5�
.��(U��g�+Q�����%��&f�ߪ�X�n�i��Y�UJ�B).rA�� qD��0��s2���x)\dy��Y��i��5�!T�iʢ���h�;q�N,=��\HI�L��T%p-jەUV=,��n�ޢSPY�`~K���=u(y�q���VG7���5FU�I��D2�]ɢa.�!��Y�Jԩx�&�(A��V�o@�6����v��=&���T��Ȩ��P��Rzbf�zzt���4�)�'aУ�Y�4�A��	4�+�0��hI����Im�d�eV��>생?ᨁ��ٺ��m�6/�u�r�]Չzb<�vR��(n׉�K��`��Í��D?�Z��B������&oM?�1J�m�:UY3'04'0�nt>-^cI�W�p�Ťim�hm��,�S�664�liC�p�D5R��Y)�m�m �9^�\��y�&��:d����&�qe�1��W0�c�}C�����"-��D���Yd�Y�l�-�����.w��T։8����͵`�Ӓ�~ŭ�&[X՘��\E�Y�ƒ>`�R�G�\ҧ��(dXX;�H�$���Z	����$��4	��+�)Vΰ�é���w�����d���Yb��8��{)�%�[�f�h�qhŜ�('�j�	x2��(�3ap6\��.꺶\��2�]̱k�p|&첒�"�K�]���on�i0B�V��6�}iSBqZ	��@b���/Mo-���U�;WQ�nͤߐ@�I2`�,��&7N�H	$2����������SE���"Mq�cE|��8����qVQ*X$o�����W��xh���;����A�>a�$��S�8^��⮜b��dP�Fh����7�M/+�Xz��G񘖰���A�)�_�d��c*��������Б����,;����M%�&���uƷ�/	��Zx7%~mI�7��Ze��]z��=lM�ؒ�@�����a�3���+*E>n.z!�dW��O����|���"��J�.�c\/��tl�P�	�tN�=�]%f6��-5��52�Z�\u;16=��ޏ�CP#h# �枢-��������B�#������ro��PS��q����r�f�H�%O-X|�c��/�T��)�Z�ٱdIW���=�r$���%���y��|)9�Է[�4`L��.{�K/�Ѐ��J��S#�B<�F����	⧺c,�R��H?�Q��%���Z$Z��8�ӊ۲G
����*>s�Vk�����o��ɸ/��B;�1���1���<��H�ڈ P���>8��T��6N�4���I�2L��Zz�z:!�γ˔g�a���<�NE	�&N�hn�}r�������!�BE$f�$�<;�Ԏ?_֪�M�?o��(��~�*|SO>޳��ʕ.��a�4�f�/iuK1��A�Tn��hVl9n.��n*�ig�Sn�Im,4��Yd�� �|��s93�t�cx�'�*P���uz��	�iׅ��l5U��$�5KFtn:�: ��%����s뻷++y���8�ҫ?�F����     m�=m(c3��4ևi)j5��k�����d<o���c'��%En�$��Z��{%�Q�R.㌛0�cM\ޭ�N(�.��ӄ�͞�3'%Z�T���.�����K��5ѻ����8���
 kg*�?�'�$��s������Cާ�9�2+0�?��^z�l�6i����B�gȳ�}Нmt~Ho,��Q��{��kǑI'����s�.�T,V�AeZj�H�an��h�b+�p6�F�����I�*H���I���Z	wMI���x#%=S{4)����.���@�\!Y�ՠ3�P�?�˴f�A�U�]��}�qI^Y����˕H���n��?7��P��$/���$�`����uq���1՞3���;,�U��z�%tرq���k
����u-����%N�ճevEdU�H�������"f��A����`k���h�"Yo���&��-:Ss߈�/�s�;����Z�ȮVʇ�-�����s�^Ҍ�����A�Y�S��.ߺNə��+d�yJ��p�s�'�o㶈>�)�q��>���Ej%�S?��(UU.4���QB/>�\��'y�Z�ea����]{k�$�)4k�#_�e)֍�,�u#Ӝ4 �ե��h�����/LO�H�����_�qeI�7�u���l?'n���]���3+���=wCLY�͋�]R�fK��c=$4	&���]Sm��i����']��kq��O���] U�+�� �!�d�7)ML�H���h{=��*q|M���hsW�@���c	�G��+���v8l�i�(8Jg"E�Z%����~�Ar�vj���?�.����
6`��SVD����dG^���=:II+w��m��E7=����?gvi5�̩��s���A�����.v*�^A�����Y��j���V��B��*iG���k./*�E�bϢ�5s���0,�e4"�LA���4�{��:%]��%8�N���LM��w<�����Ug(<������x6������ G�륓���JI�W��U���w�����־�#y���zx��7]����{�L�y���[�ZS�N���?p	�j���tѰ&$Ԝ���GR7]�m95MDmҷZ�Z���D,F!K��`C����'9� p�Z��Q8��E{u�n�ibD�Ru�<�Re7%{0j�,ۜ���t5&�? L�EZ�Ā4��CF�Eի͎��2>�����RhԵ-��L
d��E?Y�%sMn�s7�9Hk�3�@���gU�aU3ſ��t��M���z���'/G������dB��ܐ�����/��0��gG�'�2�����|�A�7̦5풞����q��j���;���T�ʮ��R��e���iN�T��0ݺu�5c����G*�CO=���Z��hP���H��_�������zi�*l�A����R�,���*��R�΍���<H��<���{-�k�`l,����������v�T�ݴ�	n��a>�.����A�H�55��d򬭾$��g\Ue�+�Is:�&���\�R��ꮍ̔�+=���"/:	�j����<�5����쇈ɳs�7��ߨ=�V��?�J��u����괕�q��+�J]�!޵�n&�٧k��#kŇ�J��Jj�T7Ц�A��E�܏w�U�X�ȯK5Pɣ�b١�����η��sN��H�H��On�0�F��)�f�:"j�Ƕ�0��,z�������x��Q���I���/��$�o�r�Ȝ�����e̪�����\$�=J���L�����e��y�B2EW$?8u걥�6]w��1�E�Xc?ki�܉�ݔ7�i�FY���9v�(a�؎�����bh�@M763v�BŠ���ρ#�bW{X+������U˗�eb�)�y��rW~rZ!t��{_�珷�����;�L���c��H4�K��4�uG�������ri�g�>�jHRׅ-���҂��t�%mW4�]�G$h�,��1��d�������CeְT�A�^���B$������<�Âm�X$�ƺz���}X5I���~���Jٳx�fE��]���:���:G�q�i��bak=������;Y�,�:'�M=u�ܥ0��w<���������L�i�m�o�����v�Q����Si��V&�_N�ԪY�5��a��tt��Of!x˝���\�Q�F�U6R��ul�EZ	��-I��S��Hdt1}v���HY,nPU�<�E��`s�W8���m:�_��)Ƨ�l���N{j�I��=YpU,�w�{Ւ�vN}~��f\�����s��Xڽ�jj�aJ��}��g����UuwZ$iJ�	�b�6�f�L�D�L8EN����n��.J�P^r9Va�
�'�(�/׻T����ݸ�C��A�p��-�|p�����q%y`8y@@�(q�*Ͽ�@�~U��b����|�[�LA���4���5MwT^Hw����4���{bO�7�[aF��Ip����w0���oP����j$���7\��#z
|qc��t��K�Y�X*
��9.���0���_	��#]�9��!]� U5پ�"K>�s�nŕNvt���[�b�Q��z^;HĹ�NFS�tb=�>U�=��o�3f[�Z��%L��A�gc�}�.�JV��痫r(�؊�Q���S��j�clɚ�׸�x��m^�j$��x��xM�7��tߞ��4�������κ+y�������R_��wEM�WS8��P$J&�z�{�.T��'���N��u��==_����W% �}\Y(�/������{ma�Y�Y�n��n$���[Х�M3c_d��ܨ���a��ߑ�zT��}����*Z	-r<Po�R/Cc��%s�6q���]��� ����pR�>v��wg�nםF%���=Ƿ��{��G�8+�_,Tn�ǝ����,�j�ں_��psm��@v�`�t�6g���1]SA�N�V�@Ql}s�셒�K����2wy�ZDs��Qة ��b��z���MQ��ו;*+	O��ab�]�W�;��\S)�$M���9�M	���]������j�Ю{sS�]i�3pɟ ���PLN�Q��u	�"�KK��:fP��|qF������|�g>���#�`�?i'���v�\ Wj΋e9p�Dm��R$��B��86�>�k�G�3��V�/Z��nc���w���>�g"��ˑ��&�ף����8��x����I~���-��E�3]���[qk9�1��{uO���3�׌u�Z$�9Z�6���˿B*�|혅d�HZm\�t�n�Q۸��7�9��3X��2ߠ�n(]<wQP]�$���{����2a��V+�k{0���,w88�4W��7GK�.�6�2���ˎ�:�t6oQ���5Q֊ny��}���̖�ʄ��L�Gjw��cT��\ٕ����;�ok�[�A.u,k�9TDp��vΤ^+�U�vQt����Ti���A��Ph�^�*6�U��-kgC#��^ ����Nˊ�V�=*j�ց{\l����LsK�r���
W�
b=��"���V�vN��{צ@5�K;<�*��e�{#J�s�	�v`��m1��tyϑ�����Tꤠ=l1b@j�,�}�'G6�r�ta���|͑1Y�Wk��sNYf��x�ݲ��c���ߕ�$����о��16Ŗ��GY
�'{��^��Oݟ&3E���s*eaƁ��v-��\�1ͬjX��i���UŜ��:S�fU2F��b��� �Y9�G=���&Kb�z5W�����cД�ܦ��d"Oѥ��V���ۆ�%-Bz
��D�QN�9�V�g�x/�~pse"���41@�Ҙ@���ƥ
s/��ʹ�4��
��$�mW>N%���Zͻ��3��uG�nd����Ĩ�$�̊: ښI��

�x�D��|��ybj&�.�oW��ݩ�v���$&�����Q�>�]��,M��n���G�Cw��7Z%�z�N�?���`Ma�AtS��<�Z×�gY�u���
5�N�r(]���ä�'љ�\�8��*��+����"�23�"�z%E�X�|�] �  ���ݜ�9�Zե�?��Fi�UO��#d��[��Y6�zIjs˲��Ӭ+i����r���:5�+����)-�;���)X����xBY���j����
`��<�:o���|����O̠ɶ�q��F~�F&��q�~8M>+�:ٝ|h:I�k�}u�\)��R�J��2��k,�t����p����Y&E��K��X͹�xu�MAMY��Y��c����K�d�j N��ܘ�).�Y�(�u�[��n\���M
�D
���^qT�O2!'�.Tx�jH�~��^�#�:��7o�n -c	�Zs��B�爹��&:��>�q�4vit��1-�Hh��t�m\v��EŚ|
AB�B�oP���K��\)ò�ʭ$�b")��� �i�l��	����(��87a��t�����$[>�4��
頶R4}p5�*,qlm����Aj}�L�c8�_�Q������x�I�ߕ� �x������$�r��Ih�=cr�gW���v��8�|�/77�U�-�]�^�o�N���^�����I��e�&r\
�R��k�OG���� =�3���*A+Uy��i/�捔J���bn?�R[D�5���5v�f��bE�����]F���s�I��B��E��,	����/������M��TaҀ��Y���b;N��?���4��x��������;mm����ne�z�S��h�Jִ��i����������l�o����*7��a��c��ǫ4D�߹�u�sH�<y���	R�6�h���S���5�pW2�+���B;9��Kw<XR}��^��K><��*&��(���E�f0ٚ�)~��{��������ˏ���av�v�o��{���H"GWsU\�$]o5���l�!J�樬�j���J)��)�"c�@�㻻���,��T�~�|�0�?��4��@|6f�AրI�F�<�pga\�����H��3*u�e��;4��n��ڶ<P�Dx#ѕK���B�6�"ϔ���w�u�_�ѧ��%i�X���ע�4ۑ���-j��@q��v�,���FU���θ��7��2�Κ��Y�B��k@-V���m�����9ft���
�0�{���\a<�C������x��d)�7�z��rz�D�&`������M�2�uR:�P��ڶ����J�я�c*zӹk�7��r�ݝ����D)��'Qu�Y&�����H�W��z���A[1n���b,���eOѠ�ޘ���x��ʭ )<�����t1��I����h=̜c&y޵��KA�b{��t��)��nx{�̥�ᩡi�b�\�y�&t9�3���I��Z{��RSjw8Xj�[�����n�sG%��:��u�c��k�w&���%���h�}�����|���HH�^[+M]H(C���N�;�"��t�
˟��cM'��;ѷ����>�3HE�o��@ $��(6��qGʕ"�?��B;�$��	�M�e-SR�u��`O�r@�Q��xj��N��I��0���#]gV*v����b��>9�Bw�s{�xT�\S���^���r�Lɴq�oJ`����.�I��Z0'cG�F��4���eijL�q��n�Լ6����kmM��{�>�E�{�d]?_����P*q��<|�����]��	l[an�����k��2߮�`Wkںnd�����Tp��0J�ĕ������Vn��f%y'�o�#s�'�|��u�ע���y=h�*_���ʭ���bn�#Vud���g�V=�db�w��1��+@����w;9���Z�[z�(*Vɼu���7�"�H_$E�U���δ!%��U+ǂ�I%xAh��"X?��곒�:�}����k*U/�6�F���R�A�
%����7Xo7��bb8@.�)��@�t����Õ��xI]�hJM�n�N�ZD%.\KÄ>�!Ch9�X����������,      `6   j  x�mY͒�6>O�6�;�����*�I�NN����*�4KI~������#UM�����4���5!PK�F���~�6�4�v�4�yzݟ�?G�mH)�_��Y7�[Šl:��K�?�������Yg7ڦ����~�L����u�5q�8t�eCN��w�a<��D����|cb�R�����Cc�_o�"��o�3�a�5���'�[��IE�l�Sh�3V�>����z�O��+˽W	14��5ܑ~ڏ��y7�!�i.��7��)n�]�7��l����N�?�ܺ/��3�CBc����2|&�0��U2����1ɴ�[��z��9c�:)2���9�k�޿�j��#E���.��x�������}8���S�5A��ʒ5m4������PE��?:��n�C���r�^��S�dT��b�[��G%��F�%�{�&�%�.V�?�K�h�����Ԑ���qQ:����u[�!��p���C�y0�J���1ĥm8*�5��L#g:���a�z�7�2�DBg����4,8b�5�Ơ#��SjG��O��X�,��2}_h�6����p��R���T[�e\
Z�qm�&����{/�o���a���3���->R)\��W�[2Mv���5l���)�?v�rA�z=o�CWC��R��+Ɂ�8���V>ae��e�kE�ۏ���z���E��a����'���V��H�S����p8ԅ�����+P�O��<:3T�)k*�8��њ��Z��D �u����aRr����]��"��	�A���ߎ���J���AH>ǐ\l�Y� �خ)�R��-cC� u5�  Ya'����%v���aB!�e�Bg���"-�W�Y�O�&�"�O���p�6�Jkj�:娑�ݰ��O��5]
�A�ƀ�;���aı�)ز��<�a邏�L>�*��rh�{�%(�<���9���da{��%��Y௃X�Mi
�����[G~�`���=}�5d&�	'��w�V�N1�m��~^�*lBR�W��Bkb���ɒ���6+���{�c��'(����eM������H2�['46����*��M��g��y~c?\,�)���b��9���)	��J��0v$��xw-u2��E:(�� >J(�{��%���H�!�w۝& h�T;Ud�ڀ�t&,�(�.�'$6�r�8G_�	a	?b�(}O����X�G�����t������5���W���C��Z}_���&C���=����x��C�☪��܂�GJI�5��J|�B�P��P�Lҿ��?g2�[��(�0����9tP�t3�Fa�p�ZX܎t��{�}W�q����Fs0��P�~.���a+�Z8Uk�]ָZMz?�Ä|��_a���yX��U���^5j��g��,,��z�ĸ�/E�d\\i�NE�+�1!.z�T⪥TPds�/A'���ٿ�o5�c�
8�"Þ���ĕ�b%�@
��-lgZC��^w�u:��A�(�jء"T�NI��X�'c#p|��� ��
f��BA���a<�HդN��tPL�?��i��@�=�4�]D�����[���n�w���4�D�Q�w�Zk�@�`���9[�f���*�Qp�,�ҭ�k�y�� �"����it�|��4]N��bi�����C0yn3ᕅ�oƦ�gP��q��F�PL8t��>c� �Q��β��%q`j �?�k����C�-YN\�=�p�ȫO�H���܌q�5.���P���XKb��ڀJ��an.W����X���2IFص�:9�:�#�l��$�� :�|����l�&�k' I��,z����<�f1�[�<�oS�t->5�*����y�U�m1�rv�*u��:XvŬ���O��j�	QcJ�GY�z�yL�n�jH��	b_�˩�a��5��ܬ�� J��-�&]R�k�#���ȅ���ofq�%QZꤔ��K�1�_N�%i�����]����(�}���4)�CO������y���r��I	����ǈ�Ʊ�&�ZC��j��]�>��vz�C��<�2��˒�n��΃�B�Ձ��D���e1 $����p����G#�g��ˬ�������A��Q�'t���p�2@�$��sc~Ёfb6$��`�e,.���u�"��`�]������Uq�D��C���~�f�%�n��bi�Ĥ?�߮�~%�:�a|'1Ā	��x���Tn�f�����H�S�Ӂ�mi6IG�/odJX6��ԑ������`�F��	8e�C�9�c�)����C���#:	��V��C���hO�&���ؗ�E�͠�x�44�5�Q`�����g,��zV���3�h8ב��wX���tk罹y"X%�/Pȯ�tʣ��K��[I0 ���y�jE�OdBv�sKG�Z�˜�N����d���=��K`�X���m5J_�� ���8d��h<3��
������L�x�MP���E���0�b��>K��fw����m]��7��6�AbY� ��SX�FL�,��]�6˱k12E��e�o:�F��G��<1��<ݬR��� e���j���X*�U��A�#������C�g������&E��`�<t4��J��>��A�qk���x�����fL������z�P�_�A��˚��T�5d+Ha~���?��;��x�d#��n�I05�A��r:;(|=ä��Ԯ<��#��r�� �w>ζ���W�zy{�[�y���+���nW��Ba_w >����mn�1>�'�Ϟi� �V����n���DK��sab�'y������`�u�n���sNĝ����=�}!�]fM�]��4��{���?d�K      a6   ?  x�mXˎ�6<�_��1�~�f$����E�Q6
fGi��Ou�ɵ�=�M�U��Q�}�M��__˟6"i��
i.:�H?�0�����6�������)�+}��E����h�7b�k��Rd��%nփ��qi���>��yz6�ha]�[�	e�n����q�o��9���P����\�^|���z�Kp�h��� �	1���4ƪ�P\�͋6����r���+�S�G��(D��Nb_cs�A�e���:� ����=ǭ"��7��/���[�����$�t	�땢\���oӳ��"�
 Oc����P6}Í�]�j��h+����Ƌr,#��`'�vow��-ՋL�pc8�w�B�N���ߒ�vH:���ۧ&<�K���H��x,KE���s�p��8�T�q��Lbݟ���a%�<~�B� �H�����hb*��� �Pf���wߞK��K@#:2qF8u���N�sNJ1h�  �ˣ	>������!���Y��|]���A����?��;1v C�mm&�� 2�r�_�YAL(��-�@(��]���lRBm��E�/u�>��3��I��H=ltֻļ��Ujm�K��d3;�}@xn�'EhDC2U}I�(���ڦ�YղOi��s��? ��O��&W�xP J�w�A<�VW%z�Ѷ���T(*F��8���|=��]�rL:;iXN�O8ڋ��\��`���<	G�_�|����v��M^�C�1�K�Q�H8)�`;v��$��:��m���cM ��`��^��rT�%��:������\ڱʳ�(���s &�c���\��~����K�^0�7z�m�� 4���T��Q���~��щ����8￼ �L�vջ�!|?�,X`��>�k�0���(�d��h�eݯl�Z�?���u���
��=�c1��x�_��yd�d'S�I�ezLc��l�Sk�Z���3�ܮ�t��xƱ����K�Iք	Z�����-hh��
�mh�݉�^�uۛ�e���G���O4\Ve�t���"�H�|b3^b'+>63�U6Z�]n�}jW��(>Q7�*�J��/�Ͷ;�gwPd��b�m�u^��`*�o���1������W@�5�"=�K7���S�����:�m�,��KU|�d�r�a_ZJ�����)�L[�kF��]�˭��D��z:S6t+d/V���h����F�Ұ�M��Z�O�		Mt(�0�i�G�^�>"v���5��R4'�!��v���:o�a�\L�6�ݗG��ۈɶ����X9�N7���t��f"U{�ʓ^*�`нь���s�L2�i2P��� ������WLv�����:���dH��Bqj0��NG[�ldM1OL1�����m�߻/�x����+�� ~���VQ���ɛE��4C3��� [}�b"�sx�ܟ+v]+��$V�������{�|r�yi����@~�C�8h���T�H?j��Ϲ[غ��Đ�dò\E��G�Y��� ����=��Y=)�<��e�F'n���3���g@�\��wm�o��W,%��I?,R蔬�(B�i�c���������֞�!;#�i�ܞ�\� ��'ћ�g~x�iQ��(m����`0����9w�ԙ�H�����b� BkWܕ�4��ӿ���/�6�@�|�3A��s�C��o��B��g:~��j�s�#�P�L��#��nG�O5�e��/����8ѝj�U^\���`2�Yљ��O��zzD��S��q�>����ͩ\M���[��R��8����O�>�e��      b6      x�m[ɮ�H�<�_��86�g�>L��i.L��ņ�W������yl��ٗ�,E�⋹�Bs�C<����}[^�������1�:p6`�v��s����0t��-~����\o���\��51�-�����o�_��<����W��`����ױ��^������m�ddA������y*?���?�~����ٯ/���o\s��?������]�w��"ә�G����|ܷ[�~�6�P.�Ό?y,�m,߶���O��s�kǽ�L\g��hy����?�ߗ+n4y��ÏqH7�k_��z���#�5��h��Wr��Cd��x�m����r]!7������2�@�<�^?�~},/��ǲ���*�>����#/]��ϝ3��P�������6	:�q�j��V)1t����Ŏ�e��}<̼�ῖ�u�l��;��@9������v�p�+Nr�9S�q-�e����ㅝdMPB�]�aM��^��e?�v�Qhv�DS��i%��.�|�����{����/z����@��r=�����߶�V3�;M�+�p]�ߖ���.O��a4�ZS7�0
!����<�@;7�������}���ׅ"n�:�� �^O�my���my��'������c1��v����FT.��n��Т�c��<vp�i�!.��}��b{�V\��?�Zb,�b���g��½��3�_�����I[
a�� ��:B�#��5k�O�(8���&�	��$�]�P�q��_���e� ����@0	���d��L�4�h��'ݰX��ŭ������c��r�.X������_ <��/���DWUb���+V܆�D�>�!����72��>o�vq���X�[P��_ ��'+�Uj,RJ��^�'āB��{��?���p��a��G@�JP�D���zl�m}V��%�Nx�.�֮[ �([��=QD��G�ަ��X�����0	n��O��E4����j�bi����_��@���1$ W>H0�~���m�^�
�.V���/ʮj�z����H��v?�܈Ŗ=\
���l��	ᆞ��7���.��z���eXn��땊��`�ǔ��y?/0w:�im�����}��O�J�:���6��i㭗����*���&��|�]��
���>~�`Mh�s���-����e��?n׎*8[���+�J���lg���J�L��>�;!��
˥���m��Krz]3��iC�D�e}�7�_��7:��Q?�*�̰8A�0��9(qCsn�Ռ�W,#�9�nqB�M<���<����}b����x����d����_�4[a렼�w�p�d�|�UO�`��v`��@��_�++�B��(�+�OR��°��޹��:��o�d}� ���۶�����X�:� �m���� �2��jt���j���fy��o���ƭ�	�J�%i������>4�� )�%��A�F�+AL,~���'89F�B��#	�N&^��1tV������ɚ��P��Iʝ`e�� ��/��m����#�����ꥃ�"�Ӡ:����C��Fp��a��T	6l�f��mJv�[HrX	t� �k}��k~�m�A#2���I�ː��s�xsگO��e�ɒ���ɱJ�u_��Qe���,�k�2Xը�!2QҤA�on�I��D'�%��x	�?���9+��R- I�0¼��3��k6��IAi�(W:o�5%�\U� ϴ�B܅ �j(#��/���>BL�N� �1�B�����<JBT���9*�t�ƀ��I��K�9�]��<r- ��аO��TX�\Ȅ�H�or嚢�΄]����Ldrj�'"�{�^�+�{'ķ�z�* ���.�!���@�p!�!J(��Z�bNI����_e����m�F �T�U��0�N&jfp:�
�]�7�*����r~�q���B�4�Ds�K�u� v�H ^o�U�,}���Uń��B�CO�BBՄ����5K Z_5�O�~�Hi�T#��Ϛ<x�7�C�{��pP�MĔ
�Xcxc1$�/�H�P�F��-A`����k����B�tu��5���
�-Q��G�7��(�F��9HC���q�J����Պ;~,?��D��"��B{p�vK�*4l���@Hq��k1�|����Hi����w2t6$.��Pkg�tFܒ��P���=ào3ݪ�W��&#��0���L63V`?Y�xۯ��/v�DN��S�������=�L�
p܆�!�r(h�ې}��e��X�$N�d�ȝ�+������1&���:j%�Xs����r>c�{O�_*5�lҌ�����* ��u���^r�W��eU��x9��������K���)g���SR�'j;KRN8����S������R"B�����Wઈmvh�����sn�� 
J]fAl���b�^/�t|u
~_��۱�A*ϗ�������.� �g��>�����Z�ɓ�Ʀ����[�p~�i#��eS��พ�4I�K�%Q�B\G���� KG]���82��e1I�L�jM����/���]b��1��H�8^��R�LIB��&pr�R!��_:��"y���U�^�Ǡ��E�q�OG$M�vuP��O��wq��[�e�:���ڐ��VI��r)����^��Mܖ�G�
O��KN i�m�.r!O���>S�
oS��A,ۀ��ӱN����8�b����u���}h��R����~����tn
��������҉*���ŝ��s*�Ne/��Y-��7��E�X�&�ԩ��u�a$6�
[���R3P���%rR�P��١		�R��f PQ	N�F�Ԭd2�SOó�ˉq����%5I%�_:5}�CsҀ(f�_��ї���Gq� �NLD��L+�l��?����ri)��$2�T�a<趑���b#��X�����= �~��*��#(r*����U�{���^UQ�,�h���T$�"�b�� h�C����Aq�0�����Q��]��S�u������� ��B�O\�:d���Z�0�}��v�럁���O�OJ�R�X��V j\,�}jW��2�*#s�H���?��`� ��n��؇b`�4�U,T$P{w��c�Ԫ&�/K����w5�!G���KȤkX��d���iS� �,F@M�Z�==Sp�w%������zJ�9c�w��)�����s-��I#kR3M���`�\��Fl���GS����� �f�e�_x�փ�o7Ik�i.9:�gLHn#*�<b	�E���q)]NFs9F��~�۲�hU�b�=�eR�(˪��2���@(R��%1��|ʛJ�((��܋4�����*L�D�K*����0c��e�+ �sI���=b]iH��v�����q4_#�Uv�E�����
 �8єFm(:�"`1X����ۖ�nQ�6���n۷��_���0�,� �;�R���=wK]`W�luF�$2N��wb�("�H��M�	��㎑��K�>�r�3�bd�?��ɫjw@����1�sy�Cm�cP�z%Mp���Y��*��MCIl���Z^,�@�&�Ku��4�Lf�wRZ�e8�dP�(Y:B0UF��!i��D�l�V���M�̦��)�yC�׉�'��M�%�4��,��Tҧ��-�nM�nr��P>�:/���p#lLL�$��Cx�yKD�D�b0��H�j�*V=k�V���۟��{<�M�Y
����_��Y�\�V��J�)�4^�R��RǥQ�	u����X�&�=�T@wP�!M�H�*��ZR���P��w�ץ�	�L�R�JHtLŅ��3myJ��uU���\!LD>I�;��	�@���t��.x�l�8�c;���\<V��<9e�](��5hCk�F���h�;u�eT����ꕌ���>�$�!RL�K@!�!��/d�)�`dRi�D
1��]}�}:��G����k zNydw!2�������;-NtӪ:o�8W���H 6	  R�NQ��K\�Ppz��@5�	Tr*i>eޮNy� �I{내vK7�r�<y[�[�D[��crwY����
��a���Cf�Z3�w3�3�7��T�yT��Mt^Y�rauR��kV@�ɽ�/��sye e�V��&����d���H���jJ�ar73cڒHqn�>\l�k���&�K�
�F�%���9K߉x99uq��D�4sUs�a/�Ä��	�(�����AM��T��Z��.#��C��`UAL���[�T�IIm�+%��Z|�_F�Z�[��6#�3��̩��V�Vc�<�~ʰR�Q�n�r�]����56\
(�@B۬\r�,���S�K�2y�!�ǳ��7r9��L��_�8wf���.%�s*=�X3��s#,�9>PjN��x�(S@n[b�&���6Ah�!������A�F�"@*50~J[��)�h�ط���q&)u-*i>曙V���A��<f""�ԣW�/Zbe	�2����G.���i�3=�:���Y�v�0�c��S�vvZ�TLB��4g�׷0���#��������U�4����r�zq>#q�V+�j��!��,��5�,��(W�16�j�VC�(�[�Lm�$�2rш�.&�fm#(��E�@��1��Q4s����ɳ<�A��Ĕ;��g�Ta�-��f��{��M1�L�Jz\*���#��`�)zH�Ы�qQ��8f�V��6iO3�r���^_�{�\8�%�9�|S�[ �}�0ƥ��@��:S�]��K��j���z�Čy�,2W�~��sD�X��LM�x��l��Y�7�TkH"#�C���4��_Օ�z#,+U	q�:���]N�c�(��΀U�m\��u�)���Y�ȕ�}{�aZQr��aH� ��:Sae�����N�:�e78�>4B5�=G�bύg2Jd�krD:C#�mԱȉ{p����`?����'�I��O,�x����=t�����2�y>r��aZz�x:t����	��2o�C�mjH58U?7,��@$g�p�uճD��%��ž���9fG/mC%��Z�3{�HN��"�����;2!N)��_F-����Q�m�rU"�j6�����u,��a�^��T礢�ՑJH]�d���4�NPB��%�6��fD�L쵚d�%����Z�6�7���p�M<pµ�}�~T[ó�"��Q���[K%j�"]+f�o���E9q"rSq�6��b�Ȁ���^�y����md0c��M3wb��)�ſj�#w���E5t��y��r�Iڒ���|���PP�|����R�&,b*u��ۉ� ��FBj�A04�k4<X�����F���2�"�_X5�A����t��Yu&���R�-����L5����Mv/)��Mk�v6\3g|��ES����w�Y����O]�Uцj7@;���VD�S`�cA��������$�dLp1.�g� T+�yJ
�Z�6ڑsI�ޛq��l����9�6k>�
�I4O�S�jo[���wc𒪓|��ңq��(��jg��Et�$�������X�H\����?68՞��*9��Q1�^qa�H#���|�}�,�17��U����
ZJDl�D~��6�}�"^�'/6��@��!U�L���IB\iʫ&��B����[K��#�=�_�p�ڙ�7��� �;��2[�ңC"Sf�^i�Q���T9��!��4�L�(�����:%zt�����!9b�z�_h�}�"��x�}3}12yeǓL��uƷ8"N���j��b��3R?d�-Ӱm��d�}b*���F�p�'~�E���,m�4�[d�ﻀz11�2��Z�g
\6c�[Z���5�<���s�E�0K��K�t����m����_�;t���O��	]k��a���7&c���	�I+z��sR��pb)j����߿�'�Te�����S���s�ж�����Z�8�\���b��^|7}�6���o[r4���b>��e�B1��Yf���[<V��@��j�o�/A�z�n�VlUU\ �+��g%
>E��c/x�낂���&���e�PQ�ؗ��Q?V�	��t-�-o@�2�X�$"�������D��F~��F��>O�&
IK,���h	ޘ+6�TAN�d��~5ū>k�iN#���X?}���)��F�䢢�9{�31?��]�z��Ij(Yܛ@ɦ�a��CR��_����"�ZwcRg'f�Ce��{!�f��,`+ݟ6��������-����fK$)_�P<S���d������kU�s]�w��D}TaT�'$f'R�Y�%�^�N��k�v{W㴼U,@)��̏]�^��?������      c6   K  x���NBAE��W��+3��0B"�Q7e^�0N��<�Ɲ_��c�e{{oO���k�hᾍ{����9N؇'��7Q�� &�Q��T5W��8����~wf��ѻaz��gw��Kl8�858���5�.,���XJ�#��0#�>({0%ŐtBӇ��9�ګg ����\m�+�ڬ���(�8B3���%H5��P�f�bq��Y�(�ú��vᙏ�h�rITmX���ə�T��6�	��5��S�>�Z�N0�B�D>u��Y'}���U.)-�fo{��NЎ�9�;f�9��g�)
��*8GU}3I�����!�x      d6      x������ � �      e6   2	  x�}X�nI<��b��z?����cI�,6��KY{���Iɜ����.j� `��ʬ�Ȉ�얝��I��ΰ���c�l�a�Dj!�B�p���c|���dgSd��:���>��M������̂˅0oCU������۲ӘSF��T����F"��}�/)�t�j�B�߆���¡^o������J�a�C3�քFX��ag��#��"��z��B��q���H����ľ��_]ߏsN�����V��W�ivu�#�����~o�BS������]d7���9 �k�V�m����R�`%��n���e_�)���[���}}�����S\��]�}��*���(!�P����<�g�i<L���6� G����Xv>���n5e���X��Y�v2X�9v+t*JN��|#�L9��s_r��}J�6QVP�&��ZxL(m{��<��Bh8��$��$-�fǗ�W�l��MR�����)g̩"��o��@J���M�9���`A�8���!m'0bodN�״V�@E��a*w�0���DKjT�RP�ΐ7�+���q$ �=��4{,�*��A[�~о���a9.���يUsZ���Kwq�m�eิ�Y����(��\)�;O}��5�6�*����#iq,t�I��n�r��DJ<�(��o5�)��M��DL�l�,��
�^#�Q���r��9�vD�� �e#�ϡ^q �0�W��������V�0�Wz�--]�)B.^
�i��:$,7 g7)/�
��}-H��HR�����vM��ϻ�.�7RUNX�T�w���{�&Rh0��7�T�b�h�0�}�a�Qpe����pB�`$8�"^�Fn�s�Z�L�p�5 1�dd�9�!��6����H���e���3�EyZ�=�W�!�Ԏ�{���170�����'kk6��v�j�q�g��0-@��T8v2k��\�<���a&b�};.�Vt��O��h��"w��Y?&�j�IW�S�̏`W�������PK�j��Y� *� ��g��u���k��Y�2^��:��8MÎ4Dr���\�>����y�	0���^���ߣ	m�@�@Y��.�0���C7�����k[�� <�ڭi�c&�$&<�^������f~�㍨��]Y<� S��.�^�����x��Xb~�d~�PW'wՑ^!�mMj�{Daxu?V|�u@�㸣�*��6U��NY�m�"G�b�[z�-+[5��*H���r$�kZ�j�Ө��^���؀���g�0ze����V�~eo��y��ݍ��"�/HhxS�n��YaL��a���n�cg�3a?'�p�ax�PlD����	n���/����ʶ9It�i9�&��{�"�����%��Af&��*e5����G�O�O���o�*r@�< �i�����I�'���Z��q�{c�����@�}�tdʊ���Xy�n��p��↤V��7�hc4�xȁX�j�Y�]���y�[}�eXK���z�=���0aW	�����������Ad����tV-d����#o�Lۗ���'�򾌵~�j �y�0<	\$wY�n�w[/:���V�TI�Әi���k��(r�bg��B���i�΢�^YǏ�.�u��{��tJNwN�c�)�Q��YC�t�I+v���cK�]^�<}�Nz!�]wÊl�S���>ԩ90�`-�r���Fv���t�5:��q�0�t���0t����E�E+k�8���6�}�۸[DZ[D�A�����Rb��^��ݜЮ�j���Y��<�7�/(��c�)�|�	��q��l��6�Ү�}�����ںz�Yc]�wtk@rv�1I���2��L:\�ؼ;B0�*��fh?+̡��{�q?�����틃��l�31	b�J��/��`h�������:O�G���4ڳ���!a2��y]�H�@�_�2�t���Z�İ�Z�up ������u���zh:k4�Cv��@��e���>���u��x�I���n�}�nB�W���(����W�'#t��[����uX:4	��*!��z�����[xuy�-�	ξa��j�1-�DeD���Q��x;�L�	�=��gK��������,�1���R�VٯzG�����c��NTZ%���p��@`M�>�������%��{��'��Bऽ�h�-}�,׺U�7�"?`bU� ��d���c�X�k�W݃D��@������Rϓ3��PO;I���Ǡ�n��g�_�q�l�Es�B8z� ׉�8F:I'~ղ؋��=^��	��}Aq�;��>�o��9rT��?���Ç��lC�      f6   X   x����0ߢ��A>�^���,�T]�Y��ܮ��-�zr�@f��ؑ�&��y�� �n6+��J�V�;-�B(��� ?b�      g6   7   x�3�tL����2��/H-JL�/�2�tO-J�+I�2�IM��L��2�*����� ���      h6   e  x�mWˎ�8<S_�0�)�8���ۍ����d�ͅn=��7����\@]�J����)�n��]��|�}��-L�m�,��>�7�P�Y?��u
-�UJ��d�d��84��YX�e���)�xi��p���o�Y������haT����Lt�-,�q��K=�x�KD�P�±p�]�u�����.*�.ޮq�G��J%��)j��qh���c�/ty%�I�w�d��g\B{��x]��WB����J8{���;bM0�U	��-�dߦ0�8,�t]{A�JQ�2:]H����������P>��A3���E!�+�ԡ9e�`�˰�b�l�Q^&��78�
�^8������}m�Jh�К��Tt��?�b��
���d�����EY%��y�+|�����q��x[�:�Θ�͒!k�y�yPfԇ�)ɦx��ڭ3�י�]�-�6](�2-K��:so�L�[ݙ��P:���v]�����ҹ�
Y�(�H�~B83�@�L�ʝi��-�Mq�Ǯ�'fϼPՑ��P����'���~c��*soޅ&g_U��;- �f?V��[��c�&�JXuV�lh)ݍrd,�R�j��W�Q���#��gA�BK(쳝�}�n�P��#kW޷���JX{�қ}����k2	��GM�B�f��0��f���D[֌=Ld��1g�:���%�p��"����џo������Mh�N��]ڳ?�k@����u��)-��)~[R��%��nI��vԈ.�dW�mf�T���źqj��P��gU Ho�z��!�s�,���$��#��GYQ��da,&���NU�SK#�ďv��n̼��T&ʩ=�8�A��꬏>�sHܒ_07�\���#N�#�e���;U*�� 8�����-��K�6�}��nLW	��?�>n����bJ�d�9������c��t���F~NΈЧ��A??`� �WQ�:�R�!mkYv���nD�J��L�汉q�CXF��T�Tg�8��Ry�bxg�(!�S�
�N������?����B�&��=F] ��~�g:�|��,���+�D?�/���A�*���/�s�,�Ε:��#X�k����f:�+��G���`���k�n4ڵ��e�u���p�vH�qϚ?}�9��l��BT��䈯z�\��3�kb ��z�gk�@Ϩ�<�C]�C�t�>cĽ�Q>�)�*�
�P�&���+��[mvE���S��wd�5�ܤ�vm��D���
mի{�l�w�A������Ѝ�<�˓�H��g&V./��qj�O�zno��.�YY�ᐚm}��)|�k��P��r#�ޡp�JJ�:R����������u�~S1���/��ۡ���eB���)�ƷN<��_a�:� {lX��G�����!�p��nZۖ�6�^/�������Q�g
���-�a������l����L),��u��t�6�4<=?�s_��=��� �d7��3-�]
�XD�s[�b�0-�<k�^M��V>}͜��5�}*�>5��
E���s����}��a��HlQ'����(@IC����[_m��sp��#��>I��;v�fz囧 ̳o�?���u��Y�T��<�@�M���,ٿEQ�*_5�      i6      x������ � �      j6   -   x�3�tKL.)-J�t�2�J��,��t�22�3��9��b���� �1	�      k6      x�U�ۭ�D��QL�!Jԫc���q�������޶%�Q$=���SK���W��������dm��[�����Q>u^�������g�qo�^V�+��g����:����v�O]|e�Aŏ���=Y��n�w�����L������o�{1�s'�lW���?�������W*����fV��5��/�|������������_-��ެ�d��o���.>ٮ����V��Wǯևa<�y�./�ծ�9G��Y�ON����d}�������;r��̽�����3���?�6�p��_���&��^u�l�nl���ڱ�b߂��r�}<6k����5{3� X[C뾯��U�����`�of�̱|�^�wv�����:��_[o��[c;-��-�;h��r��>�_��}�ěs�K����]�?+߶���6�G���`���29��V�ν��4s|z���v2�1����e���_`���2��o�H6p�|���dB0���6��F4X�=����6����wp��v�?����xW�����ftl1C��-����]���W�z�WƳ��̓��oS˫]|ӳW�_��j�o�6v��b�[� �<�,��㹅x��f��`�;�`u�;E����|�qq=���p�`�v<A���}!�س�t�B�+��J6����_�~]�P{�q���-��{�Z��0��p���s�?m�O$���6��s��T23�t=&�2u�n���V ��|���?r�S�0m�n���a��'�iߺb;�Mf�qf�;33�n2���|�Pč�|[���1;�l+�y��MG��,�Ũw���%ԅ��f�0��w�֞�յ���z�v����a����� ������^;,�V��/֔N��v��8|�K�7�=`�L�f�}o�`&�X Б���E��bݎ�8�����l5(�ܫ���d�8���
p�=w`$��]6��W��E�=�Ȉ�m��Pl5d1S(�
��!捙���j��6�#�u8�0������?d�1�w�-�#�X�[��k��Ѽ�
f�R4C����n�FMFEp��rKG���Ko�l��܂��T�j5��Pp6�0�*1g4l�Vܠ݇8eq�]v�A0la�?TJϫ]�W �x/�Ňa���'����v_~Daה$AN�oFI"6��k�C��t|���u�=X!v���mZa0�aEӡn#��Pj�n<������G1|_��+m`�ae��b3�1��H�(�*���|$���4
 ��Nf�J-CZC�m2�k��X��2�� �V�3+5�W�OJ`�vI@��u�d��FD�����_�m�2D"FA������S�ĥ�.h��\3b���Z:&�!�R�BH����v����U��ϖ㖊��XV,$C��v�,Տ�bQ@]�0)�`<��MkeJR!�5s��������dV"m��h��>�
6�`H*8a}3J*���2CRmm�Є���B�S��N$j2e@�m�@�����:��W@��~�y�ݗ�-��%Hcf�hr�ɘ�m�)�R�g4��B}��盅*��J �HM��F��q�UQXt3k�ր�+�q{��h�q���C��v<o���߲�B�n�'oFQ,֦7��W���F�o�
`���J�J����-������T��,�@���q��FʊטY^�LuS�x3lc��ay}���vW�YFE*8NLY\2�A= =3�cE�L{3sY0�����j�s��Q�P:uesc�Qe�}�#@Ga`L~M��3�Jx��j����JATiū|[H�Y?��xo��ul+�(�ƔN�\y^��^����� ��Y����0�k�X�Ul��e� �vI�d$U
�90{�bS-)A���ft%�f���	i�Xe]s�&��a��<��aTD�أ9��A��LM�~ ��^��u0�2ٚ�\�T����\�t������7[�ZdS���%M5���L�2C��J��N]�S��E�<�*�4�`ld��M.+��\�\뾖euc�"n�����H�򜻟�y��M����p*�� h�db��\a�=��(���ڛ�b���PXZL����C	&���f̴� Ǩ�k�)�J�;d��_�6�0���a+KLu	˘:x��V�̮(�h��"}��v�+���d�l�U% ��+ٛ1ȉ�>t�|�z��8c�������d�_�fxc��Nq[�^�ѫ�ͪ��� ��Me7/ZC�~�S���7�%���s�zmKK���Ȍ�ߌK��6����8�]?G���R2X�x3�b��F6��L3R�na�C��d�:�އ�D��2�w��P�
�`����K)��g%�lYt+a�E���o}����J4ΓI�[�Gz�j�nI�����Z�6U�1�0�{�^C��$�:�<��9�M���?�$�{���>�j��u�AU�]�����	u�xX����o�������d�B}��T���s����nQj���u�7�[���C�&�X�d-��B��K� ��4�Lμ��L<�F��&my�j�gnf�}*�/���W7��L����7��	�<�h�Cʔ7cHcD�<�!W��$�й��~	ϛ�'[��P�#�r3$�*d�y��""k�_Őڿ�)��7��3����F��a츈-vZ:�~;+�� 8{G���b�ʆ{�x�X�������N6����y�@����U7��W��*"���!a {���.�ou�;����R���w��m�H6����N`,
�KUo�aR��X'f�[��\,^*n�"4��T����ߌ�71F�ùB��)�u2Ri���fl�Q(1�3<H�s�ԣ�EbT^>ޅcT^��pulB��"a�=D��ӽ���EA,��)E�!i7��"��(l����J��E�D��i�s���Q�d�f+��VT��L�w^���2���ŐA�Q���Yx�FM����p\�����\�}�`�1�c0���9-���Ԝ��WG�G��טLɅ�c��<������,�j�p��>yl������1n��-� $B�v4bC�YzZ�i��8��$F�bGz� �R��_��Kxc�+��֌#�	�}F;�Ҹ��7�L�z/
�v&N%Y�X�+�W�Vp��|�hoً�eG���ᗼ�ʞnxPWo����l�0i���!��!.f,���x3� ��"+Z9�Tso���;73��X�1`�P
�8˖�tt���^Q&��� e|�J}� �Dđl j�aR,dY*�{ΚϰY���M>�2��9",ۢ�M�|%���ɵ���%���`�i�H�%����Mi���9}��KI^��v��6Ό-�����b!����B���:Gm����s�^�ې�I�/���.�U{���r@�Z�n�f+$�q�� W�3�M�Ԋ���@0ղ�8jVޡ>ٗ���L�v���M<v��V�9M!�@�Oy��DcSi#?�8�Z���М��>���<��Q���+�ًu�W166$7&���~�SUǀt�콷7��;�����̺����������Ւ0G�,a�p\F����iѪ��i�eZ��pLc^y Suw��~^L�4؂xZ�I>ϸ��·2�0z6h�5i�d+�Ԩ�q��B��~�s=�`�VfI�v�[���7gj�=���	�d֥�7��T|���1��5�؂5�{��g�ly��D!̮���g��aOlS7�q���8{X��$�6N)�S�5��LF�V|�l�����%ؤP���{��K�S����Vq>��[�J8R�01�U��w�{�D�������#�Z}��&�9�+���a�����xr]��fl[��_��n�S��*��=��Xu���x��6qݟ��4�h3g@�d��|�Yz��^����*Q�����l'�kųm��n�+婩�f ��0;�
NS j��a�*Q4ʱQ�p�)��n�7֣��G}��<2t<:r*��R�a*�9�4-e�V��s�oqX���N��
��b��ϩ�ն�f��'=l'[웹:o��M�~�}|� e  ����f��:63z>H�
�$�<&>�ljy����V��bÖ"�`�Xi9�y�,������e��;*~fJ��w��@Y�-��t����던�pv���}R	�r7��� P3<��U���b,t��lx4�6��lQ�OQ���x��i�a;�L���]�Ilìw�Mߘ�7���ajC�������+ c͖�\_�!�S*쐒�:77�A�h�u�xqzz~%ৠ�<�ۛ��P�tO9-8��s�������N�BD�����T�����3#��-��֞�9ܤ�+�������N����C���Gl@��Ε��\w�Yj�MuM���� �,?�����a�������ش�0�\�ե�җ� �c�F�y���ߌ
S�"Jy[m�r�R�7:���ƛ�'��hL�-�(� ��#a\96r����v�GOXL|�����J�m"F�?l%��Q[���Z�̻<d��3 ����a+�dm·��:�G��9M�S�L��7�Q�ܗ��8���͑�nˌ�r���A�a��Q5�V�0�5��KS[sh<�]1G�\5zƹxx�Z�8��7�0�C��N�iL��]Ȯdӗ��|�z��L}eջ�4���o(�`1�:�R߬�d�����^���K^ⳑE˦b)oFeߢ��T�����H��rEof-�D�j�ĕ�P Q[�#_�����z��$���|�3���$�4s�Y�ذ��,j^G���ƴ��m�R��1Y~Dp����h]�+�j�O�=�������q X�ى,1��f&���{g%�˛�k�-*J*r�L)ǉ�q����㊝�;F�`mF'��ǽ��U�6�����J��P5�_�7<^����>�0�dP��qy�r��{]��j�     