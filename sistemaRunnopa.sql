--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.5
-- Dumped by pg_dump version 9.4.5
-- Started on 2016-10-03 14:10:21 VET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 8 (class 2615 OID 109659)
-- Name: general; Type: SCHEMA; Schema: -; Owner: gperez
--

CREATE SCHEMA general;


ALTER SCHEMA general OWNER TO gperez;

--
-- TOC entry 7 (class 2615 OID 109649)
-- Name: registro_productor; Type: SCHEMA; Schema: -; Owner: gperez
--

CREATE SCHEMA registro_productor;


ALTER SCHEMA registro_productor OWNER TO gperez;

--
-- TOC entry 328 (class 3079 OID 11861)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2946 (class 0 OID 0)
-- Dependencies: 328
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = general, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 189 (class 1259 OID 109750)
-- Name: cat_asociacionesAgricolas; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_asociacionesAgricolas (
    int_idAsociaciones bigint NOT NULL,
    str_nombreAsociacion character varying(100) NOT NULL,
    str_rif character varying(10) NOT NULL,
    int_tipoOrganizacion integer NOT NULL
);


ALTER TABLE cat_asociacionesAgricolas OWNER TO gperez;

--
-- TOC entry 2947 (class 0 OID 0)
-- Dependencies: 189
-- Name: TABLE cat_asociacionesAgricolas; Type: COMMENT; Schema: general; Owner: gperez
--

COMMENT ON TABLE cat_asociacionesAgricolas IS 'se registran la asociaciones agricolas ';


--
-- TOC entry 2948 (class 0 OID 0)
-- Dependencies: 189
-- Name: COLUMN cat_asociacionesAgricolas.int_idAsociaciones; Type: COMMENT; Schema: general; Owner: gperez
--

COMMENT ON COLUMN cat_asociacionesAgricolas.int_idAsociaciones IS 'primary key de asociaciones';


--
-- TOC entry 188 (class 1259 OID 109748)
-- Name: cat_asociacionesAgricolas_int_idAsociaciones_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_asociacionesAgricolas_int_idAsociaciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_asociacionesAgricolas_int_idAsociaciones_seq OWNER TO gperez;

--
-- TOC entry 2949 (class 0 OID 0)
-- Dependencies: 188
-- Name: cat_asociacionesAgricolas_int_idAsociaciones_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_asociacionesAgricolas_int_idAsociaciones_seq OWNED BY cat_asociacionesAgricolas.int_idAsociaciones;


--
-- TOC entry 227 (class 1259 OID 110008)
-- Name: cat_clasificacionMaquinaria; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_clasificacionMaquinaria (
    int_idClasificacionMaquinaria bigint NOT NULL,
    str_descripcionClasificacion character varying(30) NOT NULL
);


ALTER TABLE cat_clasificacionMaquinaria OWNER TO gperez;

--
-- TOC entry 226 (class 1259 OID 110006)
-- Name: cat_clasificacionMaquinaria_int_idClasificacionMaquinaria_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_clasificacionMaquinaria_int_idClasificacionMaquinaria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_clasificacionMaquinaria_int_idClasificacionMaquinaria_seq OWNER TO gperez;

--
-- TOC entry 2950 (class 0 OID 0)
-- Dependencies: 226
-- Name: cat_clasificacionMaquinaria_int_idClasificacionMaquinaria_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_clasificacionMaquinaria_int_idClasificacionMaquinaria_seq OWNED BY cat_clasificacionMaquinaria.int_idClasificacionMaquinaria;


--
-- TOC entry 273 (class 1259 OID 110449)
-- Name: cat_clasificacionRubroPecuario; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_clasificacionRubroPecuario (
    int_idclarificacionPecuario bigint NOT NULL,
    str_descripcion character varying NOT NULL,
    int_idrubroPecuario integer NOT NULL,
    bool_eliminado boolean NOT NULL,
    bool_activo boolean NOT NULL
);


ALTER TABLE cat_clasificacionRubroPecuario OWNER TO gperez;

--
-- TOC entry 272 (class 1259 OID 110447)
-- Name: cat_clasificacionRubroPecuario_int_idclarificacionPecuario_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_clasificacionRubroPecuario_int_idclarificacionPecuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_clasificacionRubroPecuario_int_idclarificacionPecuario_seq OWNER TO gperez;

--
-- TOC entry 2951 (class 0 OID 0)
-- Dependencies: 272
-- Name: cat_clasificacionRubroPecuario_int_idclarificacionPecuario_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_clasificacionRubroPecuario_int_idclarificacionPecuario_seq OWNED BY cat_clasificacionRubroPecuario.int_idclarificacionPecuario;


--
-- TOC entry 311 (class 1259 OID 110754)
-- Name: cat_clasificacionUP; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_clasificacionUP (
    int_idClasificacionUP bigint NOT NULL,
    str_clasificacionUP character varying NOT NULL
);


ALTER TABLE cat_clasificacionUP OWNER TO gperez;

--
-- TOC entry 310 (class 1259 OID 110752)
-- Name: cat_clasificacionUP_int_idClasificacionUP_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_clasificacionUP_int_idClasificacionUP_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_clasificacionUP_int_idClasificacionUP_seq OWNER TO gperez;

--
-- TOC entry 2952 (class 0 OID 0)
-- Dependencies: 310
-- Name: cat_clasificacionUP_int_idClasificacionUP_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_clasificacionUP_int_idClasificacionUP_seq OWNED BY cat_clasificacionUP.int_idClasificacionUP;


--
-- TOC entry 279 (class 1259 OID 110487)
-- Name: cat_comercializacion; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_comercializacion (
    int_idcomercializacion bigint NOT NULL,
    str_comercializacion character varying NOT NULL
);


ALTER TABLE cat_comercializacion OWNER TO gperez;

--
-- TOC entry 278 (class 1259 OID 110485)
-- Name: cat_comercializacion_int_idcomercializacion_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_comercializacion_int_idcomercializacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_comercializacion_int_idcomercializacion_seq OWNER TO gperez;

--
-- TOC entry 2953 (class 0 OID 0)
-- Dependencies: 278
-- Name: cat_comercializacion_int_idcomercializacion_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_comercializacion_int_idcomercializacion_seq OWNED BY cat_comercializacion.int_idcomercializacion;


--
-- TOC entry 199 (class 1259 OID 109828)
-- Name: cat_comunidadIndigena; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_comunidadIndigena (
    int_idComunidadIndigena bigint NOT NULL,
    int_idPueblosIndigenas integer NOT NULL
);


ALTER TABLE cat_comunidadIndigena OWNER TO gperez;

--
-- TOC entry 2954 (class 0 OID 0)
-- Dependencies: 199
-- Name: TABLE cat_comunidadIndigena; Type: COMMENT; Schema: general; Owner: gperez
--

COMMENT ON TABLE cat_comunidadIndigena IS 'se relaciona con cat_pueblosIndigenas';


--
-- TOC entry 198 (class 1259 OID 109826)
-- Name: cat_comunidadIndigena_int_idComunidadIndigena_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_comunidadIndigena_int_idComunidadIndigena_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_comunidadIndigena_int_idComunidadIndigena_seq OWNER TO gperez;

--
-- TOC entry 2955 (class 0 OID 0)
-- Dependencies: 198
-- Name: cat_comunidadIndigena_int_idComunidadIndigena_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_comunidadIndigena_int_idComunidadIndigena_seq OWNED BY cat_comunidadIndigena.int_idComunidadIndigena;


--
-- TOC entry 277 (class 1259 OID 110476)
-- Name: cat_destinoPecuario; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_destinoPecuario (
    int_iddestinoPecuario bigint NOT NULL,
    str_destinoPecuario character varying NOT NULL
);


ALTER TABLE cat_destinoPecuario OWNER TO gperez;

--
-- TOC entry 276 (class 1259 OID 110474)
-- Name: cat_destinoPecuario_int_iddestinoPecuario_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_destinoPecuario_int_iddestinoPecuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_destinoPecuario_int_iddestinoPecuario_seq OWNER TO gperez;

--
-- TOC entry 2956 (class 0 OID 0)
-- Dependencies: 276
-- Name: cat_destinoPecuario_int_iddestinoPecuario_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_destinoPecuario_int_iddestinoPecuario_seq OWNED BY cat_destinoPecuario.int_iddestinoPecuario;


--
-- TOC entry 185 (class 1259 OID 109704)
-- Name: cat_documentoIdentidad; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_documentoIdentidad (
    int_idDocumentoIdentidad integer NOT NULL,
    str_descripcionTipoDocumento character varying(10)
);


ALTER TABLE cat_documentoIdentidad OWNER TO gperez;

--
-- TOC entry 2957 (class 0 OID 0)
-- Dependencies: 185
-- Name: TABLE cat_documentoIdentidad; Type: COMMENT; Schema: general; Owner: gperez
--

COMMENT ON TABLE cat_documentoIdentidad IS 'documentos de identidad con el cual se registra (cedula o rif)';


--
-- TOC entry 2958 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN cat_documentoIdentidad.int_idDocumentoIdentidad; Type: COMMENT; Schema: general; Owner: gperez
--

COMMENT ON COLUMN cat_documentoIdentidad.int_idDocumentoIdentidad IS 'primary key';


--
-- TOC entry 184 (class 1259 OID 109702)
-- Name: cat_documentoIdentidad_int_idDocumentoIdentidad_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_documentoIdentidad_int_idDocumentoIdentidad_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_documentoIdentidad_int_idDocumentoIdentidad_seq OWNER TO gperez;

--
-- TOC entry 2959 (class 0 OID 0)
-- Dependencies: 184
-- Name: cat_documentoIdentidad_int_idDocumentoIdentidad_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_documentoIdentidad_int_idDocumentoIdentidad_seq OWNED BY cat_documentoIdentidad.int_idDocumentoIdentidad;


--
-- TOC entry 327 (class 1259 OID 111173)
-- Name: cat_documentoidentidad; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--


CREATE TABLE cat_edificaciones (
    int_idEdificaciones bigint NOT NULL,
    str_descripcionEdificacion character varying(50) NOT NULL
);


ALTER TABLE cat_edificaciones OWNER TO gperez;

--
-- TOC entry 218 (class 1259 OID 109974)
-- Name: cat_edificaciones_int_idEdificaciones_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_edificaciones_int_idEdificaciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_edificaciones_int_idEdificaciones_seq OWNER TO gperez;

--
-- TOC entry 2963 (class 0 OID 0)
-- Dependencies: 218
-- Name: cat_edificaciones_int_idEdificaciones_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_edificaciones_int_idEdificaciones_seq OWNED BY cat_edificaciones.int_idEdificaciones;


--
-- TOC entry 179 (class 1259 OID 109668)
-- Name: cat_estadoCivil; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_estadoCivil (
    int_idEstadoCivil integer NOT NULL,
    str_descripcionEstadoCivil character varying NOT NULL
);


ALTER TABLE cat_estadoCivil OWNER TO gperez;

--
-- TOC entry 178 (class 1259 OID 109666)
-- Name: cat_estadoCivil_int_idEstadoCivil_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_estadoCivil_int_idEstadoCivil_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_estadoCivil_int_idEstadoCivil_seq OWNER TO gperez;

--
-- TOC entry 2964 (class 0 OID 0)
-- Dependencies: 178
-- Name: cat_estadoCivil_int_idEstadoCivil_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_estadoCivil_int_idEstadoCivil_seq OWNED BY cat_estadoCivil.int_idEstadoCivil;


--
-- TOC entry 203 (class 1259 OID 109857)
-- Name: cat_estatusRegistro; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_estatusRegistro (
    int_idEstatusRegistro bigint NOT NULL,
    str_descripcionEstatus character varying(15) NOT NULL
);


ALTER TABLE cat_estatusRegistro OWNER TO gperez;

--
-- TOC entry 2965 (class 0 OID 0)
-- Dependencies: 203
-- Name: TABLE cat_estatusRegistro; Type: COMMENT; Schema: general; Owner: gperez
--

COMMENT ON TABLE cat_estatusRegistro IS 'relaciona con tbl_solicitudRegistro';


--
-- TOC entry 202 (class 1259 OID 109855)
-- Name: cat_estatusRegistro_int_idEstatusRegistro_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_estatusRegistro_int_idEstatusRegistro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_estatusRegistro_int_idEstatusRegistro_seq OWNER TO gperez;

--
-- TOC entry 2966 (class 0 OID 0)
-- Dependencies: 202
-- Name: cat_estatusRegistro_int_idEstatusRegistro_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_estatusRegistro_int_idEstatusRegistro_seq OWNED BY cat_estatusRegistro.int_idEstatusRegistro;


--
-- TOC entry 239 (class 1259 OID 110117)
-- Name: cat_estatusSiembra; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_estatusSiembra (
    int_idestatusSiembra bigint NOT NULL,
    str_descripcionEstatus character varying(30)
);


ALTER TABLE cat_estatusSiembra OWNER TO gperez;

--
-- TOC entry 238 (class 1259 OID 110115)
-- Name: cat_estatusSiembra_int_idestatusSiembra_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_estatusSiembra_int_idestatusSiembra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_estatusSiembra_int_idestatusSiembra_seq OWNER TO gperez;

--
-- TOC entry 2967 (class 0 OID 0)
-- Dependencies: 238
-- Name: cat_estatusSiembra_int_idestatusSiembra_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_estatusSiembra_int_idestatusSiembra_seq OWNED BY cat_estatusSiembra.int_idestatusSiembra;


--
-- TOC entry 243 (class 1259 OID 110136)
-- Name: cat_faseSiembra; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_faseSiembra (
    int_idpreparacionTierra bigint NOT NULL,
    str_preparacionTierra character varying NOT NULL
);


ALTER TABLE cat_faseSiembra OWNER TO gperez;

--
-- TOC entry 177 (class 1259 OID 109662)
-- Name: cat_generoPersona; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_generoPersona (
    int_idGeneroPersona integer NOT NULL,
    str_descripcionGenero character varying(15)
);


ALTER TABLE cat_generoPersona OWNER TO gperez;

--
-- TOC entry 176 (class 1259 OID 109660)
-- Name: cat_generoPersona_int_idPersona_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_generoPersona_int_idPersona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_generoPersona_int_idPersona_seq OWNER TO gperez;

--
-- TOC entry 2968 (class 0 OID 0)
-- Dependencies: 176
-- Name: cat_generoPersona_int_idPersona_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_generoPersona_int_idPersona_seq OWNED BY cat_generoPersona.int_idGeneroPersona;


--
-- TOC entry 181 (class 1259 OID 109677)
-- Name: cat_gradoIntruccion; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_gradoIntruccion (
    int_idGradoIntruccion integer NOT NULL,
    str_descripcionGradoIntruccion character varying(30) NOT NULL
);


ALTER TABLE cat_gradoIntruccion OWNER TO gperez;

--
-- TOC entry 180 (class 1259 OID 109675)
-- Name: cat_gradoIntruccion_int_idGradoIntruccion_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_gradoIntruccion_int_idGradoIntruccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_gradoIntruccion_int_idGradoIntruccion_seq OWNER TO gperez;

--
-- TOC entry 2969 (class 0 OID 0)
-- Dependencies: 180
-- Name: cat_gradoIntruccion_int_idGradoIntruccion_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_gradoIntruccion_int_idGradoIntruccion_seq OWNED BY cat_gradoIntruccion.int_idGradoIntruccion;


--
-- TOC entry 215 (class 1259 OID 109939)
-- Name: cat_identificacionTierras; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_identificacionTierras (
    int_idIdentificacionTierras bigint NOT NULL,
    str_descripcionIdentificacionTierras character varying(50) NOT NULL
);


ALTER TABLE cat_identificacionTierras OWNER TO gperez;

--
-- TOC entry 2970 (class 0 OID 0)
-- Dependencies: 215
-- Name: TABLE cat_identificacionTierras; Type: COMMENT; Schema: general; Owner: gperez
--

COMMENT ON TABLE cat_identificacionTierras IS 'indica el documento de identificacion de la unidad de produccion';


--
-- TOC entry 214 (class 1259 OID 109937)
-- Name: cat_identificacionTierras_int_idIdentificacionTierras_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_identificacionTierras_int_idIdentificacionTierras_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_identificacionTierras_int_idIdentificacionTierras_seq OWNER TO gperez;

--
-- TOC entry 2971 (class 0 OID 0)
-- Dependencies: 214
-- Name: cat_identificacionTierras_int_idIdentificacionTierras_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_identificacionTierras_int_idIdentificacionTierras_seq OWNED BY cat_identificacionTierras.int_idIdentificacionTierras;


--
-- TOC entry 221 (class 1259 OID 109984)
-- Name: cat_instalaciones; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_instalaciones (
    int_idInstalaciones bigint NOT NULL,
    str_descripcionInstalacion character varying(50) NOT NULL
);


ALTER TABLE cat_instalaciones OWNER TO gperez;

--
-- TOC entry 220 (class 1259 OID 109982)
-- Name: cat_instalaciones_int_idInstalaciones_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_instalaciones_int_idInstalaciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_instalaciones_int_idInstalaciones_seq OWNER TO gperez;

--
-- TOC entry 2972 (class 0 OID 0)
-- Dependencies: 220
-- Name: cat_instalaciones_int-idInstalaciones_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_instalaciones_int_idInstalaciones_seq OWNED BY cat_instalaciones.int_idInstalaciones;


--
-- TOC entry 207 (class 1259 OID 109888)
-- Name: cat_institucionResponsable; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_institucionResponsable (
    int_idIntitucionResponsable bigint NOT NULL,
    str_descripcionInstitucion character varying(100)
);


ALTER TABLE cat_institucionResponsable OWNER TO gperez;

--
-- TOC entry 206 (class 1259 OID 109886)
-- Name: cat_institucionResponsable_int_idIntitucionResponsable_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_institucionResponsable_int_idIntitucionResponsable_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_institucionResponsable_int_idIntitucionResponsable_seq OWNER TO gperez;

--
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 206
-- Name: cat_institucionResponsable_int_idIntitucionResponsable_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_institucionResponsable_int_idIntitucionResponsable_seq OWNED BY cat_institucionResponsable.int_idIntitucionResponsable;


--
-- TOC entry 235 (class 1259 OID 110098)
-- Name: cat_metodoRiego; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_metodoRiego (
    int_idmetodoRiego bigint NOT NULL,
    str_descripcionRiego character varying(45)
);


ALTER TABLE cat_metodoRiego OWNER TO gperez;

--
-- TOC entry 234 (class 1259 OID 110096)
-- Name: cat_metodoRiego_int_idmetodoRiego_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_metodoRiego_int_idmetodoRiego_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_metodoRiego_int_idmetodoRiego_seq OWNER TO gperez;

--
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 234
-- Name: cat_metodoRiego_int_idmetodoRiego_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_metodoRiego_int_idmetodoRiego_seq OWNED BY cat_metodoRiego.int_idmetodoRiego;


--
-- TOC entry 295 (class 1259 OID 110589)
-- Name: cat_modalidadProduccion; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_modalidadProduccion (
    int_idModalidadProduccion bigint NOT NULL,
    str_modalidadProduccion character varying NOT NULL
);


ALTER TABLE cat_modalidadProduccion OWNER TO gperez;

--
-- TOC entry 294 (class 1259 OID 110587)
-- Name: cat_modalidadProduccion_int_idModalidadProduccion_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_modalidadProduccion_int_idModalidadProduccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_modalidadProduccion_int_idModalidadProduccion_seq OWNER TO gperez;

--
-- TOC entry 2975 (class 0 OID 0)
-- Dependencies: 294
-- Name: cat_modalidadProduccion_int_idModalidadProduccion_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_modalidadProduccion_int_idModalidadProduccion_seq OWNED BY cat_modalidadProduccion.int_idModalidadProduccion;


--
-- TOC entry 265 (class 1259 OID 110400)
-- Name: cat_modoOrdenio; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_modoOrdenio (
    int_idmodoOrdenio bigint NOT NULL,
    str_Descripcion character varying NOT NULL
);


ALTER TABLE cat_modoOrdenio OWNER TO gperez;

--
-- TOC entry 264 (class 1259 OID 110398)
-- Name: cat_modoOrdenio_int_idmodoOrdenio_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_modoOrdenio_int_idmodoOrdenio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_modoOrdenio_int_idmodoOrdenio_seq OWNER TO gperez;

--
-- TOC entry 2976 (class 0 OID 0)
-- Dependencies: 264
-- Name: cat_modoOrdenio_int_idmodoOrdenio_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_modoOrdenio_int_idmodoOrdenio_seq OWNED BY cat_modoOrdenio.int_idmodoOrdenio;


--
-- TOC entry 195 (class 1259 OID 109790)
-- Name: cat_organizacionPopular; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_organizacionPopular (
    int_idOrganizacionPopular bigint NOT NULL,
    str_organizacionPopular character varying(100) NOT NULL
);


ALTER TABLE cat_organizacionPopular OWNER TO gperez;

--
-- TOC entry 2977 (class 0 OID 0)
-- Dependencies: 195
-- Name: TABLE cat_organizacionPopular; Type: COMMENT; Schema: general; Owner: gperez
--

COMMENT ON TABLE cat_organizacionPopular IS 'registro de consejos comunales, colectivos u otra organizacion popular integrada por productores';


--
-- TOC entry 194 (class 1259 OID 109788)
-- Name: cat_organizacionPopular_int_idOrganizacionPopular_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_organizacionPopular_int_idOrganizacionPopular_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_organizacionPopular_int_idOrganizacionPopular_seq OWNER TO gperez;

--
-- TOC entry 2978 (class 0 OID 0)
-- Dependencies: 194
-- Name: cat_organizacionPopular_int_idOrganizacionPopular_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_organizacionPopular_int_idOrganizacionPopular_seq OWNED BY cat_organizacionPopular.int_idOrganizacionPopular;


--
-- TOC entry 293 (class 1259 OID 110578)
-- Name: cat_planSanitario; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_planSanitario (
    int_idPlanSanitario bigint NOT NULL,
    str_planSanitario character varying NOT NULL
);


ALTER TABLE cat_planSanitario OWNER TO gperez;

--
-- TOC entry 323 (class 1259 OID 110919)
-- Name: cat_planSanitarioRubro; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_planSanitarioRubro (
    int_idPlanSanitarioRubro bigint NOT NULL,
    int_idRubroPecuario integer NOT NULL,
    int_idPlanSanitario integer NOT NULL
);


ALTER TABLE cat_planSanitarioRubro OWNER TO gperez;

--
-- TOC entry 322 (class 1259 OID 110917)
-- Name: cat_planSanitarioRubro_int_idPlanSanitarioRubro_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_planSanitarioRubro_int_idPlanSanitarioRubro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_planSanitarioRubro_int_idPlanSanitarioRubro_seq OWNER TO gperez;

--
-- TOC entry 2979 (class 0 OID 0)
-- Dependencies: 322
-- Name: cat_planSanitarioRubro_int_idPlanSanitarioRubro_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_planSanitarioRubro_int_idPlanSanitarioRubro_seq OWNED BY cat_planSanitarioRubro.int_idPlanSanitarioRubro;


--
-- TOC entry 292 (class 1259 OID 110576)
-- Name: cat_planSanitario_int_idPlanSanitario_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_planSanitario_int_idPlanSanitario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_planSanitario_int_idPlanSanitario_seq OWNER TO gperez;

--
-- TOC entry 2980 (class 0 OID 0)
-- Dependencies: 292
-- Name: cat_planSanitario_int_idPlanSanitario_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_planSanitario_int_idPlanSanitario_seq OWNED BY cat_planSanitario.int_idPlanSanitario;


--
-- TOC entry 242 (class 1259 OID 110134)
-- Name: cat_preparacionTierra_int_idpreparacionTierra_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_preparacionTierra_int_idpreparacionTierra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_preparacionTierra_int_idpreparacionTierra_seq OWNER TO gperez;

--
-- TOC entry 2981 (class 0 OID 0)
-- Dependencies: 242
-- Name: cat_preparacionTierra_int_idpreparacionTierra_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_preparacionTierra_int_idpreparacionTierra_seq OWNED BY cat_faseSiembra.int_idpreparacionTierra;


--
-- TOC entry 183 (class 1259 OID 109683)
-- Name: cat_pueblosIndigenas; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_pueblosIndigenas (
    int_idPuebloIndigena bigint NOT NULL,
    str_puebloIndigena character varying(35) NOT NULL
);


ALTER TABLE cat_pueblosIndigenas OWNER TO gperez;

--
-- TOC entry 182 (class 1259 OID 109681)
-- Name: cat_pueblosIndigenas_int_idPuebloIndigena_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_pueblosIndigenas_int_idPuebloIndigena_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_pueblosIndigenas_int_idPuebloIndigena_seq OWNER TO gperez;

--
-- TOC entry 2982 (class 0 OID 0)
-- Dependencies: 182
-- Name: cat_pueblosIndigenas_int_idPuebloIndigena_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_pueblosIndigenas_int_idPuebloIndigena_seq OWNED BY cat_pueblosIndigenas.int_idPuebloIndigena;


--
-- TOC entry 211 (class 1259 OID 109914)
-- Name: cat_rolUsuario; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_rolUsuario (
    int_idRol bigint NOT NULL,
    str_descripcionRol character varying(15) NOT NULL
);


ALTER TABLE cat_rolUsuario OWNER TO gperez;

--
-- TOC entry 210 (class 1259 OID 109912)
-- Name: cat_rolUsuario_int_idRol_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_rolUsuario_int_idRol_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_rolUsuario_int_idRol_seq OWNER TO gperez;

--
-- TOC entry 2983 (class 0 OID 0)
-- Dependencies: 210
-- Name: cat_rolUsuario_int_idRol_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_rolUsuario_int_idRol_seq OWNED BY cat_rolUsuario.int_idRol;


--
-- TOC entry 241 (class 1259 OID 110125)
-- Name: cat_rubro; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_rubro (
    int_idRubro bigint NOT NULL,
    str_descripcionRubro character varying NOT NULL
);


ALTER TABLE cat_rubro OWNER TO gperez;

--
-- TOC entry 319 (class 1259 OID 110871)
-- Name: cat_rubroComercializacion; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_rubroComercializacion (
    int_idRubroComercializacion bigint NOT NULL,
    int_idRubroPecuario integer NOT NULL,
    int_idComercializacion integer NOT NULL
);


ALTER TABLE cat_rubroComercializacion OWNER TO gperez;

--
-- TOC entry 318 (class 1259 OID 110869)
-- Name: cat_rubroComercializacion_int_idRubroComercializacion_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_rubroComercializacion_int_idRubroComercializacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_rubroComercializacion_int_idRubroComercializacion_seq OWNER TO gperez;

--
-- TOC entry 2984 (class 0 OID 0)
-- Dependencies: 318
-- Name: cat_rubroComercializacion_int_idRubroComercializacion_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_rubroComercializacion_int_idRubroComercializacion_seq OWNED BY cat_rubroComercializacion.int_idRubroComercializacion;


--
-- TOC entry 269 (class 1259 OID 110422)
-- Name: cat_rubroPecuario; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_rubroPecuario (
    int_idrubroPecuario bigint NOT NULL,
    str_rubroPecuario character varying NOT NULL,
    bool_eliminado boolean NOT NULL,
    bool_activo boolean NOT NULL,
    int_idsubSectorPecuario integer NOT NULL
);


ALTER TABLE cat_rubroPecuario OWNER TO gperez;

--
-- TOC entry 268 (class 1259 OID 110420)
-- Name: cat_rubroPecuario_int_idrubroPecuario_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_rubroPecuario_int_idrubroPecuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_rubroPecuario_int_idrubroPecuario_seq OWNER TO gperez;

--
-- TOC entry 2985 (class 0 OID 0)
-- Dependencies: 268
-- Name: cat_rubroPecuario_int_idrubroPecuario_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_rubroPecuario_int_idrubroPecuario_seq OWNED BY cat_rubroPecuario.int_idrubroPecuario;


--
-- TOC entry 240 (class 1259 OID 110123)
-- Name: cat_rubro_int_idRubro_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_rubro_int_idRubro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_rubro_int_idRubro_seq OWNER TO gperez;

--
-- TOC entry 2986 (class 0 OID 0)
-- Dependencies: 240
-- Name: cat_rubro_int_idRubro_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_rubro_int_idRubro_seq OWNED BY cat_rubro.int_idRubro;


--
-- TOC entry 271 (class 1259 OID 110433)
-- Name: cat_subSectorPecuario; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_subSectorPecuario (
    int_idsubSectorPecuario bigint NOT NULL,
    str_subSector character varying NOT NULL
);


ALTER TABLE cat_subSectorPecuario OWNER TO gperez;

--
-- TOC entry 270 (class 1259 OID 110431)
-- Name: cat_subSectorPecuario_int_idsubSectorPecuario_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_subSectorPecuario_int_idsubSectorPecuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_subSectorPecuario_int_idsubSectorPecuario_seq OWNER TO gperez;

--
-- TOC entry 2987 (class 0 OID 0)
-- Dependencies: 270
-- Name: cat_subSectorPecuario_int_idsubSectorPecuario_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_subSectorPecuario_int_idsubSectorPecuario_seq OWNED BY cat_subSectorPecuario.int_idsubSectorPecuario;


--
-- TOC entry 237 (class 1259 OID 110106)
-- Name: cat_tipoAmbiente; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_tipoAmbiente (
    int_idTipoAmbiente bigint NOT NULL,
    str_descripcionAmbiente character varying
);


ALTER TABLE cat_tipoAmbiente OWNER TO gperez;

--
-- TOC entry 236 (class 1259 OID 110104)
-- Name: cat_tipoAmbiente_int_idTipoAmbiente_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_tipoAmbiente_int_idTipoAmbiente_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_tipoAmbiente_int_idTipoAmbiente_seq OWNER TO gperez;

--
-- TOC entry 2988 (class 0 OID 0)
-- Dependencies: 236
-- Name: cat_tipoAmbiente_int_idTipoAmbiente_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_tipoAmbiente_int_idTipoAmbiente_seq OWNED BY cat_tipoAmbiente.int_idTipoAmbiente;


--
-- TOC entry 275 (class 1259 OID 110465)
-- Name: cat_tipoColmena; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_tipoColmena (
    int_idtipoColmena bigint NOT NULL,
    str_descripcion character varying NOT NULL
);


ALTER TABLE cat_tipoColmena OWNER TO gperez;

--
-- TOC entry 274 (class 1259 OID 110463)
-- Name: cat_tipoColmena_int_idtipoColmena_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_tipoColmena_int_idtipoColmena_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_tipoColmena_int_idtipoColmena_seq OWNER TO gperez;

--
-- TOC entry 2989 (class 0 OID 0)
-- Dependencies: 274
-- Name: cat_tipoColmena_int_idtipoColmena_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_tipoColmena_int_idtipoColmena_seq OWNED BY cat_tipoColmena.int_idtipoColmena;


--
-- TOC entry 245 (class 1259 OID 110147)
-- Name: cat_tipoDestino; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_tipoDestino (
    int_idTipoDestino bigint NOT NULL,
    str_descripcionTipoDestino character varying(50) NOT NULL
);


ALTER TABLE cat_tipoDestino OWNER TO gperez;

--
-- TOC entry 244 (class 1259 OID 110145)
-- Name: cat_tipoDestino_int_idTipoDestino_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_tipoDestino_int_idTipoDestino_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_tipoDestino_int_idTipoDestino_seq OWNER TO gperez;

--
-- TOC entry 2990 (class 0 OID 0)
-- Dependencies: 244
-- Name: cat_tipoDestino_int_idTipoDestino_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_tipoDestino_int_idTipoDestino_seq OWNED BY cat_tipoDestino.int_idTipoDestino;


--
-- TOC entry 307 (class 1259 OID 110725)
-- Name: cat_tipoEmpresaAgricola; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_tipoEmpresaAgricola (
    int_idTipoEmpresa bigint NOT NULL,
    str_tipoEmpresa character varying NOT NULL
);


ALTER TABLE cat_tipoEmpresaAgricola OWNER TO gperez;

--
-- TOC entry 306 (class 1259 OID 110723)
-- Name: cat_tipoEmpresaAgricola_int_idTipoEmpresa_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_tipoEmpresaAgricola_int_idTipoEmpresa_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_tipoEmpresaAgricola_int_idTipoEmpresa_seq OWNER TO gperez;

--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 306
-- Name: cat_tipoEmpresaAgricola_int_idTipoEmpresa_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_tipoEmpresaAgricola_int_idTipoEmpresa_seq OWNED BY cat_tipoEmpresaAgricola.int_idTipoEmpresa;


--
-- TOC entry 291 (class 1259 OID 110567)
-- Name: cat_tipoExplotacion; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_tipoExplotacion (
    int_idTipoExplotacion bigint NOT NULL,
    str_tipoExplotacion character varying NOT NULL
);


ALTER TABLE cat_tipoExplotacion OWNER TO gperez;

--
-- TOC entry 290 (class 1259 OID 110565)
-- Name: cat_tipoExplotacion_int_idTipoExplotacion_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_tipoExplotacion_int_idTipoExplotacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_tipoExplotacion_int_idTipoExplotacion_seq OWNER TO gperez;

--
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 290
-- Name: cat_tipoExplotacion_int_idTipoExplotacion_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_tipoExplotacion_int_idTipoExplotacion_seq OWNED BY cat_tipoExplotacion.int_idTipoExplotacion;


--
-- TOC entry 225 (class 1259 OID 110000)
-- Name: cat_tipoMaquinariaEquipos; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_tipoMaquinariaEquipos (
    int_idTipoMaquinaria bigint NOT NULL,
    str_descripcionMaquinaria character varying(100) NOT NULL,
    int_idClasificacionMaquinaria integer NOT NULL
);


ALTER TABLE cat_tipoMaquinariaEquipos OWNER TO gperez;

--
-- TOC entry 224 (class 1259 OID 109998)
-- Name: cat_tipoMaquinariaEquipos_int_idTipoMaquinaria_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_tipoMaquinariaEquipos_int_idTipoMaquinaria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_tipoMaquinariaEquipos_int_idTipoMaquinaria_seq OWNER TO gperez;

--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 224
-- Name: cat_tipoMaquinariaEquipos_int_idTipoMaquinaria_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_tipoMaquinariaEquipos_int_idTipoMaquinaria_seq OWNED BY cat_tipoMaquinariaEquipos.int_idTipoMaquinaria;


--
-- TOC entry 267 (class 1259 OID 110411)
-- Name: cat_tipoOrdenio; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_tipoOrdenio (
    int_idtipoOrdenio bigint NOT NULL,
    str_descripcion character varying NOT NULL
);


ALTER TABLE cat_tipoOrdenio OWNER TO gperez;

--
-- TOC entry 266 (class 1259 OID 110409)
-- Name: cat_tipoOrdenio_int_idtipoOrdenio_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_tipoOrdenio_int_idtipoOrdenio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_tipoOrdenio_int_idtipoOrdenio_seq OWNER TO gperez;

--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 266
-- Name: cat_tipoOrdenio_int_idtipoOrdenio_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_tipoOrdenio_int_idtipoOrdenio_seq OWNED BY cat_tipoOrdenio.int_idtipoOrdenio;


--
-- TOC entry 191 (class 1259 OID 109758)
-- Name: cat_tipoOrganizacion; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_tipoOrganizacion (
    int_idTipoOrganizacion bigint NOT NULL,
    str_tipoOrganizacion character varying(35)
);


ALTER TABLE cat_tipoOrganizacion OWNER TO gperez;

--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 191
-- Name: TABLE cat_tipoOrganizacion; Type: COMMENT; Schema: general; Owner: gperez
--

COMMENT ON TABLE cat_tipoOrganizacion IS 'indica el tipo de organizacion, se asocia con  cat_asociacionesAgricolas';


--
-- TOC entry 190 (class 1259 OID 109756)
-- Name: cat_tipoOrganizacion_int_idTipoOrganizacion_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_tipoOrganizacion_int_idTipoOrganizacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_tipoOrganizacion_int_idTipoOrganizacion_seq OWNER TO gperez;

--
-- TOC entry 2996 (class 0 OID 0)
-- Dependencies: 190
-- Name: cat_tipoOrganizacion_int_idTipoOrganizacion_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_tipoOrganizacion_int_idTipoOrganizacion_seq OWNED BY cat_tipoOrganizacion.int_idTipoOrganizacion;


--
-- TOC entry 223 (class 1259 OID 109992)
-- Name: cat_tipoProblema; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_tipoProblema (
    int_idTipoProblematica bigint NOT NULL,
    str_descripcionProblematica character varying(50)
);


ALTER TABLE cat_tipoProblema OWNER TO gperez;

--
-- TOC entry 2997 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE cat_tipoProblema; Type: COMMENT; Schema: general; Owner: gperez
--

COMMENT ON TABLE cat_tipoProblema IS 'indica las distintas problematicas en la unidad de produccion';


--
-- TOC entry 222 (class 1259 OID 109990)
-- Name: cat_tipoProblema_int_idTipoProblematica_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_tipoProblema_int_idTipoProblematica_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_tipoProblema_int_idTipoProblematica_seq OWNER TO gperez;

--
-- TOC entry 2998 (class 0 OID 0)
-- Dependencies: 222
-- Name: cat_tipoProblema_int_idTipoProblematica_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_tipoProblema_int_idTipoProblematica_seq OWNED BY cat_tipoProblema.int_idTipoProblematica;


--
-- TOC entry 217 (class 1259 OID 109968)
-- Name: cat_tipoServiciosUP; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_tipoServiciosUP (
    int_idTipoServicios bigint NOT NULL,
    str_fuenteAguaServicios character varying(30),
    str_serviciosBasicos character varying(30) NOT NULL
);


ALTER TABLE cat_tipoServiciosUP OWNER TO gperez;

--
-- TOC entry 216 (class 1259 OID 109966)
-- Name: cat_tipoServiciosUP_int_idTipoServicios_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_tipoServiciosUP_int_idTipoServicios_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_tipoServiciosUP_int_idTipoServicios_seq OWNER TO gperez;

--
-- TOC entry 2999 (class 0 OID 0)
-- Dependencies: 216
-- Name: cat_tipoServiciosUP_int_idTipoServicios_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_tipoServiciosUP_int_idTipoServicios_seq OWNED BY cat_tipoServiciosUP.int_idTipoServicios;


--
-- TOC entry 247 (class 1259 OID 110155)
-- Name: cat_unidadMedida; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_unidadMedida (
    int_idUnidadMedida bigint NOT NULL,
    str_descripcionMedida character varying(35) NOT NULL
);


ALTER TABLE cat_unidadMedida OWNER TO gperez;

--
-- TOC entry 246 (class 1259 OID 110153)
-- Name: cat_unidadMedida_int_idUnidadMedida_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_unidadMedida_int_idUnidadMedida_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_unidadMedida_int_idUnidadMedida_seq OWNER TO gperez;

--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 246
-- Name: cat_unidadMedida_int_idUnidadMedida_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_unidadMedida_int_idUnidadMedida_seq OWNED BY cat_unidadMedida.int_idUnidadMedida;


--
-- TOC entry 232 (class 1259 OID 110055)
-- Name: cat_vialidadAgricola; Type: TABLE; Schema: general; Owner: gperez; Tablespace: 
--

CREATE TABLE cat_vialidadAgricola (
    int_idVialidadAgricola bigint NOT NULL,
    str_descripcionVialidad character varying(50) NOT NULL
);


ALTER TABLE cat_vialidadAgricola OWNER TO gperez;

--
-- TOC entry 233 (class 1259 OID 110058)
-- Name: cat_vialidadAgricola_int_idVialidadAgricola_seq; Type: SEQUENCE; Schema: general; Owner: gperez
--

CREATE SEQUENCE cat_vialidadAgricola_int_idVialidadAgricola_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_vialidadAgricola_int_idVialidadAgricola_seq OWNER TO gperez;

--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 233
-- Name: cat_vialidadAgricola_int_idVialidadAgricola_seq; Type: SEQUENCE OWNED BY; Schema: general; Owner: gperez
--

ALTER SEQUENCE cat_vialidadAgricola_int_idVialidadAgricola_seq OWNED BY cat_vialidadAgricola.int_idVialidadAgricola;


SET search_path = registro_productor, pg_catalog;

--
-- TOC entry 297 (class 1259 OID 110605)
-- Name: tbl_apicola; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_apicola (
    int_idApicola bigint NOT NULL,
    int_cantidad integer NOT NULL,
    date_fechaUltimaProduccion date NOT NULL,
    int_idClasificacionPecuario integer NOT NULL,
    int_idUnidadMedida integer NOT NULL,
    int_iddetalleSectorApicola integer NOT NULL
);


ALTER TABLE tbl_apicola OWNER TO gperez;

--
-- TOC entry 296 (class 1259 OID 110603)
-- Name: tbl_apicola_int_idApicola_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_apicola_int_idApicola_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_apicola_int_idApicola_seq OWNER TO gperez;

--
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 296
-- Name: tbl_apicola_int_idApicola_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_apicola_int_idApicola_seq OWNED BY tbl_apicola.int_idApicola;


--
-- TOC entry 193 (class 1259 OID 109772)
-- Name: tbl_asociacionProductor; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_asociacionProductor (
    int_idAsociacionProductor bigint NOT NULL,
    int_idAsociacion integer,
    int_idPersona integer NOT NULL
);


ALTER TABLE tbl_asociacionProductor OWNER TO gperez;

--
-- TOC entry 3003 (class 0 OID 0)
-- Dependencies: 193
-- Name: TABLE tbl_asociacionProductor; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON TABLE tbl_asociacionProductor IS 'asocia al productor con las asociaciones que el indique';


--
-- TOC entry 3004 (class 0 OID 0)
-- Dependencies: 193
-- Name: COLUMN tbl_asociacionProductor.int_idAsociacion; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_asociacionProductor.int_idAsociacion IS 'relaciona con cat_asociacionesAgricolas';


--
-- TOC entry 192 (class 1259 OID 109770)
-- Name: tbl_asociacionProductor_int_idAsociacionProductor_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_asociacionProductor_int_idAsociacionProductor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_asociacionProductor_int_idAsociacionProductor_seq OWNER TO gperez;

--
-- TOC entry 3005 (class 0 OID 0)
-- Dependencies: 192
-- Name: tbl_asociacionProductor_int_idAsociacionProductor_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_asociacionProductor_int_idAsociacionProductor_seq OWNED BY tbl_asociacionProductor.int_idAsociacionProductor;


--
-- TOC entry 263 (class 1259 OID 110362)
-- Name: tbl_certificacion; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_certificacion (
    int_idcertificacion bigint NOT NULL,
    int_idSiembra integer NOT NULL,
    int_idCosechado integer NOT NULL,
    int_idrenovacion integer NOT NULL,
    int_idIntensionSiembra integer NOT NULL,
    int_idDestinoSiembra integer NOT NULL,
    int_idDestinoCosechado integer NOT NULL
);


ALTER TABLE tbl_certificacion OWNER TO gperez;

--
-- TOC entry 262 (class 1259 OID 110360)
-- Name: tbl_certificacion_int_idcertificacion_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_certificacion_int_idcertificacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_certificacion_int_idcertificacion_seq OWNER TO gperez;

--
-- TOC entry 3006 (class 0 OID 0)
-- Dependencies: 262
-- Name: tbl_certificacion_int_idcertificacion_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_certificacion_int_idcertificacion_seq OWNED BY tbl_certificacion.int_idcertificacion;


--
-- TOC entry 257 (class 1259 OID 110262)
-- Name: tbl_cosechado; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_cosechado (
    int_idCosechado bigint NOT NULL,
    date_fechaCosechado date NOT NULL,
    int_idRubro integer NOT NULL,
    int_superficieHectareas integer NOT NULL,
    int_cantidad integer NOT NULL,
    str_incidencias character varying(100),
    int_idUnidadMedida integer NOT NULL
);


ALTER TABLE tbl_cosechado OWNER TO gperez;

--
-- TOC entry 256 (class 1259 OID 110260)
-- Name: tbl_cosechado_int_idCosechado_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_cosechado_int_idCosechado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_cosechado_int_idCosechado_seq OWNER TO gperez;

--
-- TOC entry 3007 (class 0 OID 0)
-- Dependencies: 256
-- Name: tbl_cosechado_int_idCosechado_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_cosechado_int_idCosechado_seq OWNED BY tbl_cosechado.int_idCosechado;


--
-- TOC entry 259 (class 1259 OID 110280)
-- Name: tbl_destinoCosechado; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_destinoCosechado (
    int_iddestinoCosechado bigint NOT NULL,
    int_idCosechado integer NOT NULL,
    int_CantidadDestino integer NOT NULL,
    int_idTipoDestino integer NOT NULL,
    int_idUnidadMedida integer NOT NULL
);


ALTER TABLE tbl_destinoCosechado OWNER TO gperez;

--
-- TOC entry 258 (class 1259 OID 110278)
-- Name: tbl_destinoCosechado_int_iddestinoCosechado_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_destinoCosechado_int_iddestinoCosechado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_destinoCosechado_int_iddestinoCosechado_seq OWNER TO gperez;

--
-- TOC entry 3008 (class 0 OID 0)
-- Dependencies: 258
-- Name: tbl_destinoCosechado_int_iddestinoCosechado_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_destinoCosechado_int_iddestinoCosechado_seq OWNED BY tbl_destinoCosechado.int_iddestinoCosechado;


--
-- TOC entry 313 (class 1259 OID 110792)
-- Name: tbl_destinoIntensionSiembra; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_destinoIntensionSiembra (
    int_idDestinoIntensionSiembra bigint NOT NULL,
    int_idIntensionSiembra integer,
    int_cantidadDestino integer,
    int_idUnidadMedida integer
);


ALTER TABLE tbl_destinoIntensionSiembra OWNER TO gperez;

--
-- TOC entry 312 (class 1259 OID 110790)
-- Name: tbl_destinoIntensionSiembra_int_idDestinoIntensionSiembra_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_destinoIntensionSiembra_int_idDestinoIntensionSiembra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_destinoIntensionSiembra_int_idDestinoIntensionSiembra_seq OWNER TO gperez;

--
-- TOC entry 3009 (class 0 OID 0)
-- Dependencies: 312
-- Name: tbl_destinoIntensionSiembra_int_idDestinoIntensionSiembra_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_destinoIntensionSiembra_int_idDestinoIntensionSiembra_seq OWNED BY tbl_destinoIntensionSiembra.int_idDestinoIntensionSiembra;


--
-- TOC entry 255 (class 1259 OID 110243)
-- Name: tbl_destinoSiembra; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_destinoSiembra (
    int_idDestinoSiembra bigint NOT NULL,
    int_idSembrado integer NOT NULL,
    int_CantidadDestino integer NOT NULL,
    int_idUnidadMedida integer NOT NULL
);


ALTER TABLE tbl_destinoSiembra OWNER TO gperez;

--
-- TOC entry 254 (class 1259 OID 110241)
-- Name: tbl_destinoSiembra_int_idDestinoSiembra_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_destinoSiembra_int_idDestinoSiembra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_destinoSiembra_int_idDestinoSiembra_seq OWNER TO gperez;

--
-- TOC entry 3010 (class 0 OID 0)
-- Dependencies: 254
-- Name: tbl_destinoSiembra_int_idDestinoSiembra_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_destinoSiembra_int_idDestinoSiembra_seq OWNED BY tbl_destinoSiembra.int_idDestinoSiembra;


--
-- TOC entry 317 (class 1259 OID 110818)
-- Name: tbl_detallePecuario; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_detallePecuario (
    int_idDetallePecuario bigint NOT NULL,
    int_idModalidadProduccion integer NOT NULL,
    int_idTipoExplotacion integer NOT NULL,
    int_idTipoOrdenio integer,
    int_idModoOrdenio integer,
    int_idUnidadProduccion integer NOT NULL,
    bool_planSanitario boolean NOT NULL
);


ALTER TABLE tbl_detallePecuario OWNER TO gperez;

--
-- TOC entry 316 (class 1259 OID 110816)
-- Name: tbl_detallePecuario_int_idDetallePecuario_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_detallePecuario_int_idDetallePecuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_detallePecuario_int_idDetallePecuario_seq OWNER TO gperez;

--
-- TOC entry 3011 (class 0 OID 0)
-- Dependencies: 316
-- Name: tbl_detallePecuario_int_idDetallePecuario_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_detallePecuario_int_idDetallePecuario_seq OWNED BY tbl_detallePecuario.int_idDetallePecuario;


--
-- TOC entry 325 (class 1259 OID 110937)
-- Name: tbl_detallePlanSanitario; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_detallePlanSanitario (
    int_idDetallePlanSanitario bigint NOT NULL,
    int_idPlanSanitarioRubro integer NOT NULL,
    int_idDetallePecuario integer NOT NULL
);


ALTER TABLE tbl_detallePlanSanitario OWNER TO gperez;

--
-- TOC entry 324 (class 1259 OID 110935)
-- Name: tbl_detallePlanSanitario_int_idDetallePlanSanitario_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_detallePlanSanitario_int_idDetallePlanSanitario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_detallePlanSanitario_int_idDetallePlanSanitario_seq OWNER TO gperez;

--
-- TOC entry 3012 (class 0 OID 0)
-- Dependencies: 324
-- Name: tbl_detallePlanSanitario_int_idDetallePlanSanitario_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_detallePlanSanitario_int_idDetallePlanSanitario_seq OWNED BY tbl_detallePlanSanitario.int_idDetallePlanSanitario;


--
-- TOC entry 289 (class 1259 OID 110554)
-- Name: tbl_detalleSectorApicola; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_detalleSectorApicola (
    int_idDetalleSectorApicola bigint NOT NULL,
    int_idUnidadProduccion integer NOT NULL,
    int_idPlanSanitario integer NOT NULL,
    int_idTipoExplotacion integer NOT NULL
);


ALTER TABLE tbl_detalleSectorApicola OWNER TO gperez;

--
-- TOC entry 288 (class 1259 OID 110552)
-- Name: tbl_detalleSectorApicola_int_idDetalleSectorApicola_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_detalleSectorApicola_int_idDetalleSectorApicola_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_detalleSectorApicola_int_idDetalleSectorApicola_seq OWNER TO gperez;

--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 288
-- Name: tbl_detalleSectorApicola_int_idDetalleSectorApicola_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_detalleSectorApicola_int_idDetalleSectorApicola_seq OWNED BY tbl_detalleSectorApicola.int_idDetalleSectorApicola;


--
-- TOC entry 303 (class 1259 OID 110689)
-- Name: tbl_edificaciones; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_edificaciones (
    int_idEdificaciones bigint NOT NULL,
    int_idTipoEdificaciones integer NOT NULL,
    int_cantidadEdificaciones integer,
    int_idUnidadProduccion integer
);


ALTER TABLE tbl_edificaciones OWNER TO gperez;

--
-- TOC entry 302 (class 1259 OID 110687)
-- Name: tbl_edificaciones_int_idEdificaciones_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_edificaciones_int_idEdificaciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_edificaciones_int_idEdificaciones_seq OWNER TO gperez;

--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 302
-- Name: tbl_edificaciones_int_idEdificaciones_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_edificaciones_int_idEdificaciones_seq OWNED BY tbl_edificaciones.int_idEdificaciones;


--
-- TOC entry 305 (class 1259 OID 110707)
-- Name: tbl_idInstalaciones; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_idInstalaciones (
    int_idInstalaciones bigint NOT NULL,
    int_idTipoInstalaciones integer,
    int_cantidad integer NOT NULL,
    int_idUnidadProduccion integer
);


ALTER TABLE tbl_idInstalaciones OWNER TO gperez;

--
-- TOC entry 304 (class 1259 OID 110705)
-- Name: tbl_idInstalaciones_int_idInstalaciones_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_idInstalaciones_int_idInstalaciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_idInstalaciones_int_idInstalaciones_seq OWNER TO gperez;

--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 304
-- Name: tbl_idInstalaciones_int_idInstalaciones_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_idInstalaciones_int_idInstalaciones_seq OWNED BY tbl_idInstalaciones.int_idInstalaciones;


--
-- TOC entry 205 (class 1259 OID 109870)
-- Name: tbl_infoAdicional; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_infoAdicional (
    int_idInfoAdicional bigint NOT NULL,
    date_fechaCreacion date NOT NULL,
    int_idComunidadIndigena integer NOT NULL,
    int_idSolicitudRegistro integer
);


ALTER TABLE tbl_infoAdicional OWNER TO gperez;

--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE tbl_infoAdicional; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON TABLE tbl_infoAdicional IS 'relaciona con cat_comunidadesIndigenas';


--
-- TOC entry 204 (class 1259 OID 109868)
-- Name: tbl_infoAdicional_int_idInfoAdicional_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_infoAdicional_int_idInfoAdicional_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_infoAdicional_int_idInfoAdicional_seq OWNER TO gperez;

--
-- TOC entry 3017 (class 0 OID 0)
-- Dependencies: 204
-- Name: tbl_infoAdicional_int_idInfoAdicional_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_infoAdicional_int_idInfoAdicional_seq OWNED BY tbl_infoAdicional.int_idInfoAdicional;


--
-- TOC entry 187 (class 1259 OID 109732)
-- Name: tbl_integranteJuridico; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_integranteJuridico (
    int_idIntegranteJuridico integer NOT NULL,
    int_idpersona integer NOT NULL,
    int_idempresa integer NOT NULL,
    bool_representanteLegal boolean NOT NULL
);


ALTER TABLE tbl_integranteJuridico OWNER TO gperez;

--
-- TOC entry 3018 (class 0 OID 0)
-- Dependencies: 187
-- Name: TABLE tbl_integranteJuridico; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON TABLE tbl_integranteJuridico IS 'indica que personas pertenenecen a determinada empresa y quien es su representante legal';


--
-- TOC entry 3019 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN tbl_integranteJuridico.int_idIntegranteJuridico; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_integranteJuridico.int_idIntegranteJuridico IS 'indica si una persona es integrante de una empresa';


--
-- TOC entry 3020 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN tbl_integranteJuridico.int_idpersona; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_integranteJuridico.int_idpersona IS 'indica cuales personas integran una empresa';


--
-- TOC entry 3021 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN tbl_integranteJuridico.int_idempresa; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_integranteJuridico.int_idempresa IS 'indica en cual empresa esta asociado la persona';


--
-- TOC entry 3022 (class 0 OID 0)
-- Dependencies: 187
-- Name: COLUMN tbl_integranteJuridico.bool_representanteLegal; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_integranteJuridico.bool_representanteLegal IS 'indica quien es el representante legal de la empresa';


--
-- TOC entry 186 (class 1259 OID 109730)
-- Name: tbl_integranteJuridico_int_idIntegranteJuridico_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_integranteJuridico_int_idIntegranteJuridico_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_integranteJuridico_int_idIntegranteJuridico_seq OWNER TO gperez;

--
-- TOC entry 3023 (class 0 OID 0)
-- Dependencies: 186
-- Name: tbl_integranteJuridico_int_idIntegranteJuridico_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_integranteJuridico_int_idIntegranteJuridico_seq OWNED BY tbl_integranteJuridico.int_idIntegranteJuridico;


--
-- TOC entry 197 (class 1259 OID 109798)
-- Name: tbl_integrantesOrganizacionPopular; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_integrantesOrganizacionPopular (
    int_idIntegranteOrganizacionPopular bigint NOT NULL,
    int_idpersona integer NOT NULL,
    int_organizacionPopular integer NOT NULL
);


ALTER TABLE tbl_integrantesOrganizacionPopular OWNER TO gperez;

--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN tbl_integrantesOrganizacionPopular.int_idpersona; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_integrantesOrganizacionPopular.int_idpersona IS 'relaciona con tbl_persona';


--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 197
-- Name: COLUMN tbl_integrantesOrganizacionPopular.int_organizacionPopular; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_integrantesOrganizacionPopular.int_organizacionPopular IS 'relaciona con el cat_organizacionPopular';


--
-- TOC entry 250 (class 1259 OID 110187)
-- Name: tbl_intensionSiembra; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_intensionSiembra (
    int_idIntensionSiembra bigint NOT NULL,
    int_superficieHectareas integer NOT NULL,
    dete_siembraFundacion date NOT NULL,
    int_idVegetal integer NOT NULL,
    int_idRubro integer NOT NULL,
    int_cantidad integer NOT NULL,
    int_idFaseSiembra integer NOT NULL,
    int_idSembrado integer
);


ALTER TABLE tbl_intensionSiembra OWNER TO gperez;

--
-- TOC entry 251 (class 1259 OID 110190)
-- Name: tbl_intensionSiembra_int_idIntensionSiembra_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_intensionSiembra_int_idIntensionSiembra_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_intensionSiembra_int_idIntensionSiembra_seq OWNER TO gperez;

--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 251
-- Name: tbl_intensionSiembra_int_idIntensionSiembra_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_intensionSiembra_int_idIntensionSiembra_seq OWNED BY tbl_intensionSiembra.int_idIntensionSiembra;


--
-- TOC entry 229 (class 1259 OID 110021)
-- Name: tbl_maquinaria; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_maquinaria (
    int_idMaquinaria bigint NOT NULL,
    int_cantidadMaquinas integer NOT NULL,
    int_capacidadToneladas integer NOT NULL,
    int_idunidadProduccion integer NOT NULL,
    int_idTipoMaquinaria integer NOT NULL
);


ALTER TABLE tbl_maquinaria OWNER TO gperez;

--
-- TOC entry 228 (class 1259 OID 110019)
-- Name: tbl_maquinaria_int_idMaquinaria_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_maquinaria_int_idMaquinaria_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_maquinaria_int_idMaquinaria_seq OWNER TO gperez;

--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 228
-- Name: tbl_maquinaria_int_idMaquinaria_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_maquinaria_int_idMaquinaria_seq OWNED BY tbl_maquinaria.int_idMaquinaria;


--
-- TOC entry 321 (class 1259 OID 110889)
-- Name: tbl_pecuarioComercializacion; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_pecuarioComercializacion (
    int_idPecuarioComercializacion bigint NOT NULL,
    int_idSectorPecuario integer NOT NULL,
    int_idRubroComercializacion integer NOT NULL
);


ALTER TABLE tbl_pecuarioComercializacion OWNER TO gperez;

--
-- TOC entry 320 (class 1259 OID 110887)
-- Name: tbl_pecuarioComercializacion_int_idPecuarioComercializacion_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_pecuarioComercializacion_int_idPecuarioComercializacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_pecuarioComercializacion_int_idPecuarioComercializacion_seq OWNER TO gperez;

--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 320
-- Name: tbl_pecuarioComercializacion_int_idPecuarioComercializacion_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_pecuarioComercializacion_int_idPecuarioComercializacion_seq OWNED BY tbl_pecuarioComercializacion.int_idPecuarioComercializacion;


--
-- TOC entry 283 (class 1259 OID 110505)
-- Name: tbl_pecuarioDestino; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_pecuarioDestino (
    int_idPecuarioDestino bigint NOT NULL,
    int_idDestinoPecuario integer NOT NULL,
    int_idSectorPecuario integer NOT NULL
);


ALTER TABLE tbl_pecuarioDestino OWNER TO gperez;

--
-- TOC entry 175 (class 1259 OID 109655)
-- Name: tbl_persona; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_persona (
    int_idPersona integer NOT NULL,
    str_razonSocial character varying(100),
    str_primerNombre character varying(15),
    str_segundoNombre character varying(15),
    str_primerApellido character varying(15),
    str_segundoApellido character varying(15),
    str_cedulaRif character varying(10),
    date_fechaNacimiento date,
    int_generoPersona integer NOT NULL,
    int_estadoCivil integer NOT NULL,
    int_gradoIntruccion integer NOT NULL,
    bool_viveUP boolean NOT NULL,
    str_telefonoMovil character varying(15),
    str_telefonoLocal character varying(15),
    str_correoElectronico character varying(100),
    str_redSocial character varying(30),
    int_tipoDocumentoIdentidad integer NOT NULL,
    int_puebloIndigena integer
);


ALTER TABLE tbl_persona OWNER TO gperez;

--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 175
-- Name: TABLE tbl_persona; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON TABLE tbl_persona IS 'tabla de informacion basica de personas naturales y juridicas';


--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN tbl_persona.int_idPersona; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_persona.int_idPersona IS 'primary key tabla persona';


--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN tbl_persona.str_razonSocial; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_persona.str_razonSocial IS 'nombre de la empresa que se registra como productor';


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN tbl_persona.bool_viveUP; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_persona.bool_viveUP IS 'indica si la persona vive en la unidad de produccion o no';


--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN tbl_persona.str_telefonoMovil; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_persona.str_telefonoMovil IS 'telefono celular';


--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN tbl_persona.str_telefonoLocal; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_persona.str_telefonoLocal IS 'telefono local';


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN tbl_persona.str_redSocial; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_persona.str_redSocial IS 'cuenta en redes sociales';


--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 175
-- Name: COLUMN tbl_persona.int_puebloIndigena; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_persona.int_puebloIndigena IS 'indica si la persona es originaria de algun pueblo indigena';


--
-- TOC entry 196 (class 1259 OID 109796)
-- Name: tbl_personaOrganizacionPopula_int_idPersonaOrganizacionPopu_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_personaOrganizacionPopula_int_idPersonaOrganizacionPopu_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_personaOrganizacionPopula_int_idPersonaOrganizacionPopu_seq OWNER TO gperez;

--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 196
-- Name: tbl_personaOrganizacionPopula_int_idPersonaOrganizacionPopu_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_personaOrganizacionPopula_int_idPersonaOrganizacionPopu_seq OWNED BY tbl_integrantesOrganizacionPopular.int_idIntegranteOrganizacionPopular;


--
-- TOC entry 174 (class 1259 OID 109653)
-- Name: tbl_persona_int_idPersona_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_persona_int_idPersona_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_persona_int_idPersona_seq OWNER TO gperez;

--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 174
-- Name: tbl_persona_int_idPersona_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_persona_int_idPersona_seq OWNED BY tbl_persona.int_idPersona;


--
-- TOC entry 231 (class 1259 OID 110039)
-- Name: tbl_problematica; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_problematica (
    int_idProblematicaUP bigint NOT NULL,
    str_descripcionProblematica character varying(100) NOT NULL,
    int_idUnidadProduccion integer NOT NULL,
    int_idTipoProblematica integer NOT NULL
);


ALTER TABLE tbl_problematica OWNER TO gperez;

--
-- TOC entry 230 (class 1259 OID 110037)
-- Name: tbl_problematica_int_idProblematicaUP_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_problematica_int_idProblematicaUP_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_problematica_int_idProblematicaUP_seq OWNER TO gperez;

--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 230
-- Name: tbl_problematica_int_idProblematicaUP_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_problematica_int_idProblematicaUP_seq OWNED BY tbl_problematica.int_idProblematicaUP;


--
-- TOC entry 299 (class 1259 OID 110628)
-- Name: tbl_prodColmena; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_prodColmena (
    int_idProdColmena bigint NOT NULL,
    int_cantidadColmena integer NOT NULL,
    date_fechaCreacion date NOT NULL,
    int_idTipoColmena integer NOT NULL,
    int_detalleSectorApicola integer NOT NULL
);


ALTER TABLE tbl_prodColmena OWNER TO gperez;

--
-- TOC entry 298 (class 1259 OID 110626)
-- Name: tbl_prodColmena_int_idProdColmena_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_prodColmena_int_idProdColmena_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_prodColmena_int_idProdColmena_seq OWNER TO gperez;

--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 298
-- Name: tbl_prodColmena_int_idProdColmena_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_prodColmena_int_idProdColmena_seq OWNED BY tbl_prodColmena.int_idProdColmena;


--
-- TOC entry 287 (class 1259 OID 110541)
-- Name: tbl_prodHuevos; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_prodHuevos (
    int_idProdHuevos bigint NOT NULL,
    int_cantidad integer NOT NULL,
    int_cantidadPonedoras integer NOT NULL,
    date_fechaUltimaProduccion date NOT NULL,
    int_idSectorPecuario integer
);


ALTER TABLE tbl_prodHuevos OWNER TO gperez;

--
-- TOC entry 286 (class 1259 OID 110539)
-- Name: tbl_prodHuevos_int_idProdHuevos_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_prodHuevos_int_idProdHuevos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_prodHuevos_int_idProdHuevos_seq OWNER TO gperez;

--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 286
-- Name: tbl_prodHuevos_int_idProdHuevos_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_prodHuevos_int_idProdHuevos_seq OWNED BY tbl_prodHuevos.int_idProdHuevos;


--
-- TOC entry 261 (class 1259 OID 110303)
-- Name: tbl_renovacion; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_renovacion (
    int_idrenovacion bigint NOT NULL,
    date_fechaRenovacion date NOT NULL,
    int_idSiembra integer NOT NULL
);


ALTER TABLE tbl_renovacion OWNER TO gperez;

--
-- TOC entry 260 (class 1259 OID 110301)
-- Name: tbl_renovacion_int_idrenovacion_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_renovacion_int_idrenovacion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_renovacion_int_idrenovacion_seq OWNER TO gperez;

--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 260
-- Name: tbl_renovacion_int_idrenovacion_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_renovacion_int_idrenovacion_seq OWNED BY tbl_renovacion.int_idrenovacion;


--
-- TOC entry 281 (class 1259 OID 110499)
-- Name: tbl_sectorAcuicola; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_sectorAcuicola (
    int_idSectorAcuicola bigint NOT NULL,
    int_idUnidadProduccion integer
);


ALTER TABLE tbl_sectorAcuicola OWNER TO gperez;

--
-- TOC entry 280 (class 1259 OID 110497)
-- Name: tbl_sectorAcuicola_int_idSectorAcuicola_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_sectorAcuicola_int_idSectorAcuicola_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_sectorAcuicola_int_idSectorAcuicola_seq OWNER TO gperez;

--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 280
-- Name: tbl_sectorAcuicola_int_idSectorAcuicola_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_sectorAcuicola_int_idSectorAcuicola_seq OWNED BY tbl_sectorAcuicola.int_idSectorAcuicola;


--
-- TOC entry 282 (class 1259 OID 110503)
-- Name: tbl_sectorAgricola_int_idSectorAgricola_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_sectorAgricola_int_idSectorAgricola_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_sectorAgricola_int_idSectorAgricola_seq OWNER TO gperez;

--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 282
-- Name: tbl_sectorAgricola_int_idSectorAgricola_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_sectorAgricola_int_idSectorAgricola_seq OWNED BY tbl_pecuarioDestino.int_idPecuarioDestino;


--
-- TOC entry 285 (class 1259 OID 110523)
-- Name: tbl_sectorPecuario; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_sectorPecuario (
    int_idSectorPecuario bigint NOT NULL,
    int_cantidad integer NOT NULL,
    int_idClasificacionPecuario integer NOT NULL,
    int_idUnidadProduccion integer
);


ALTER TABLE tbl_sectorPecuario OWNER TO gperez;

--
-- TOC entry 284 (class 1259 OID 110521)
-- Name: tbl_sectorPecuario_int_idSectorPecuario_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_sectorPecuario_int_idSectorPecuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_sectorPecuario_int_idSectorPecuario_seq OWNER TO gperez;

--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 284
-- Name: tbl_sectorPecuario_int_idSectorPecuario_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_sectorPecuario_int_idSectorPecuario_seq OWNED BY tbl_sectorPecuario.int_idSectorPecuario;


--
-- TOC entry 249 (class 1259 OID 110163)
-- Name: tbl_sectorVegetal; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_sectorVegetal (
    int_idVegetal bigint NOT NULL,
    int_idmetodoRiego integer NOT NULL,
    int_idTipoAmbiente integer NOT NULL,
    int_idUnidadProduccion integer
);


ALTER TABLE tbl_sectorVegetal OWNER TO gperez;

--
-- TOC entry 248 (class 1259 OID 110161)
-- Name: tbl_sectorVegetal_int_idVegetal_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_sectorVegetal_int_idVegetal_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_sectorVegetal_int_idVegetal_seq OWNER TO gperez;

--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 248
-- Name: tbl_sectorVegetal_int_idVegetal_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_sectorVegetal_int_idVegetal_seq OWNED BY tbl_sectorVegetal.int_idVegetal;


--
-- TOC entry 315 (class 1259 OID 110810)
-- Name: tbl_seguimientoAdmin; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_seguimientoAdmin (
    int_idSeguimientoAdmin bigint NOT NULL,
    date_fechaCreacion date NOT NULL,
    int_idresponsable integer NOT NULL,
    int_idEstatus integer NOT NULL
);


ALTER TABLE tbl_seguimientoAdmin OWNER TO gperez;

--
-- TOC entry 314 (class 1259 OID 110808)
-- Name: tbl_seguimientoAdmin_int_idSeguimientoAdmin_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_seguimientoAdmin_int_idSeguimientoAdmin_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_seguimientoAdmin_int_idSeguimientoAdmin_seq OWNER TO gperez;

--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 314
-- Name: tbl_seguimientoAdmin_int_idSeguimientoAdmin_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_seguimientoAdmin_int_idSeguimientoAdmin_seq OWNED BY tbl_seguimientoAdmin.int_idSeguimientoAdmin;


--
-- TOC entry 253 (class 1259 OID 110215)
-- Name: tbl_sembrado; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_sembrado (
    int_idSembrado bigint NOT NULL,
    int_superficieHectareas integer NOT NULL,
    date_fechaCosecha date,
    int_idVegetal integer NOT NULL,
    int_idRubro integer NOT NULL,
    int_idTipoDestino integer NOT NULL,
    date_fechaSiembra date NOT NULL,
    int_idEstatusSiembra integer NOT NULL
);


ALTER TABLE tbl_sembrado OWNER TO gperez;

--
-- TOC entry 252 (class 1259 OID 110213)
-- Name: tbl_sembrado_int_idSembrado_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_sembrado_int_idSembrado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_sembrado_int_idSembrado_seq OWNER TO gperez;

--
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 252
-- Name: tbl_sembrado_int_idSembrado_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_sembrado_int_idSembrado_seq OWNED BY tbl_sembrado.int_idSembrado;


--
-- TOC entry 200 (class 1259 OID 109839)
-- Name: tbl_solicitudRegistro; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_solicitudRegistro (
    int_idSolicitudRegistro bigint NOT NULL,
    date_fechaSolicitud date NOT NULL,
    int_estatusRegistro integer NOT NULL,
    int_codigoSolicitud integer NOT NULL,
    int_idPersona integer NOT NULL,
    int_nroDocumentoAutorizacion integer NOT NULL,
    int_idInstitucionResponsable integer,
    date_fechaEmisionDocumento date NOT NULL,
    int_idIdentificacionTierras integer
);


ALTER TABLE tbl_solicitudRegistro OWNER TO gperez;

--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN tbl_solicitudRegistro.int_idPersona; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_solicitudRegistro.int_idPersona IS 'relaciona con la tbl_persona';


--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN tbl_solicitudRegistro.int_idInstitucionResponsable; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_solicitudRegistro.int_idInstitucionResponsable IS 'relaciona con el cat_institucionResponsable';


--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN tbl_solicitudRegistro.date_fechaEmisionDocumento; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_solicitudRegistro.date_fechaEmisionDocumento IS 'fecha emision del documento de autoriazacion';


--
-- TOC entry 201 (class 1259 OID 109842)
-- Name: tbl_solicitudRegistro_int_idSolicitudRegistro_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_solicitudRegistro_int_idSolicitudRegistro_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_solicitudRegistro_int_idSolicitudRegistro_seq OWNER TO gperez;

--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 201
-- Name: tbl_solicitudRegistro_int_idSolicitudRegistro_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_solicitudRegistro_int_idSolicitudRegistro_seq OWNED BY tbl_solicitudRegistro.int_idSolicitudRegistro;


--
-- TOC entry 309 (class 1259 OID 110736)
-- Name: tbl_tipoEmpresaUP; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_tipoEmpresaUP (
    int_idTipoEmpresaUP bigint NOT NULL,
    int_idTipoEmpresa integer,
    int_idUnidadProduccion integer
);


ALTER TABLE tbl_tipoEmpresaUP OWNER TO gperez;

--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 309
-- Name: COLUMN tbl_tipoEmpresaUP.int_idTipoEmpresa; Type: COMMENT; Schema: registro_productor; Owner: gperez
--

COMMENT ON COLUMN tbl_tipoEmpresaUP.int_idTipoEmpresa IS 'relaciona con cat_tipoEmpresaAgricola';


--
-- TOC entry 308 (class 1259 OID 110734)
-- Name: tbl_tipoEmpresaUP_int_idTipoEmpresaUP_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_tipoEmpresaUP_int_idTipoEmpresaUP_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_tipoEmpresaUP_int_idTipoEmpresaUP_seq OWNER TO gperez;

--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 308
-- Name: tbl_tipoEmpresaUP_int_idTipoEmpresaUP_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_tipoEmpresaUP_int_idTipoEmpresaUP_seq OWNED BY tbl_tipoEmpresaUP.int_idTipoEmpresaUP;


--
-- TOC entry 212 (class 1259 OID 109925)
-- Name: tbl_unidadProduccion; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_unidadProduccion (
    int_idUnidadProduccion bigint NOT NULL,
    int_idIdentificacionTierras integer NOT NULL,
    int_numeroIdentificacionUP integer NOT NULL,
    str_nombreUnidadProduccion character varying(100) NOT NULL,
    int_idUbicacion integer NOT NULL,
    int_idTipoServicios integer NOT NULL,
    int_idVialidadAgricola integer NOT NULL,
    int_idSolicitudRegistro integer NOT NULL,
    float_superficieTotal numeric,
    float_superficieAprovechable numeric,
    float_superficieAprovechada numeric,
    int_idClasificacionUP integer,
    int_idparroquia integer NOT NULL
);


ALTER TABLE tbl_unidadProduccion OWNER TO gperez;

--
-- TOC entry 213 (class 1259 OID 109928)
-- Name: tbl_unidadProduccion_int_idUnidadProduccion_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_unidadProduccion_int_idUnidadProduccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_unidadProduccion_int_idUnidadProduccion_seq OWNER TO gperez;

--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 213
-- Name: tbl_unidadProduccion_int_idUnidadProduccion_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_unidadProduccion_int_idUnidadProduccion_seq OWNED BY tbl_unidadProduccion.int_idUnidadProduccion;


--
-- TOC entry 209 (class 1259 OID 109901)
-- Name: tbl_usuarioProductor; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_usuarioProductor (
    int_idUsuarioProductor bigint NOT NULL,
    str_nombreUsuario character varying(12) NOT NULL,
    str_contraseniaUsuario character varying(10) NOT NULL,
    bool_acceso boolean NOT NULL,
    bool_recuperarContrasenia boolean,
    int_idRol integer NOT NULL,
    int_idPersona integer NOT NULL
);


ALTER TABLE tbl_usuarioProductor OWNER TO gperez;

--
-- TOC entry 208 (class 1259 OID 109899)
-- Name: tbl_usuarioProductor_int_idUsuarioProductor_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_usuarioProductor_int_idUsuarioProductor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_usuarioProductor_int_idUsuarioProductor_seq OWNER TO gperez;

--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 208
-- Name: tbl_usuarioProductor_int_idUsuarioProductor_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_usuarioProductor_int_idUsuarioProductor_seq OWNED BY tbl_usuarioProductor.int_idUsuarioProductor;


--
-- TOC entry 301 (class 1259 OID 110646)
-- Name: tbl_usuarioSistema; Type: TABLE; Schema: registro_productor; Owner: gperez; Tablespace: 
--

CREATE TABLE tbl_usuarioSistema (
    int_idUsuarioSistema bigint NOT NULL,
    str_nombreUsuario character varying(10) NOT NULL,
    str_contrasenia character varying(12) NOT NULL,
    bool_acceso boolean NOT NULL,
    bool_recuperarContrasenia boolean NOT NULL,
    int_idRol integer NOT NULL,
    int_idpersonaAdmin integer NOT NULL
);


ALTER TABLE tbl_usuarioSistema OWNER TO gperez;

--
-- TOC entry 300 (class 1259 OID 110644)
-- Name: tbl_usuarioSistema_int_idUsuarioSistema_seq; Type: SEQUENCE; Schema: registro_productor; Owner: gperez
--

CREATE SEQUENCE tbl_usuarioSistema_int_idUsuarioSistema_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tbl_usuarioSistema_int_idUsuarioSistema_seq OWNER TO gperez;

--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 300
-- Name: tbl_usuarioSistema_int_idUsuarioSistema_seq; Type: SEQUENCE OWNED BY; Schema: registro_productor; Owner: gperez
--

ALTER SEQUENCE tbl_usuarioSistema_int_idUsuarioSistema_seq OWNED BY tbl_usuarioSistema.int_idUsuarioSistema;


SET search_path = general, pg_catalog;

--
-- TOC entry 2368 (class 2604 OID 109753)
-- Name: int_idAsociaciones; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_asociacionesAgricolas ALTER COLUMN int_idAsociaciones SET DEFAULT nextval('cat_asociacionesAgricolas_int_idAsociaciones_seq'::regclass);


--
-- TOC entry 2387 (class 2604 OID 110011)
-- Name: int_idClasificacionMaquinaria; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_clasificacionMaquinaria ALTER COLUMN int_idClasificacionMaquinaria SET DEFAULT nextval('cat_clasificacionMaquinaria_int_idClasificacionMaquinaria_seq'::regclass);


--
-- TOC entry 2410 (class 2604 OID 110452)
-- Name: int_idclarificacionPecuario; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_clasificacionRubroPecuario ALTER COLUMN int_idclarificacionPecuario SET DEFAULT nextval('cat_clasificacionRubroPecuario_int_idclarificacionPecuario_seq'::regclass);


--
-- TOC entry 2429 (class 2604 OID 110757)
-- Name: int_idClasificacionUP; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_clasificacionUP ALTER COLUMN int_idClasificacionUP SET DEFAULT nextval('cat_clasificacionUP_int_idClasificacionUP_seq'::regclass);


--
-- TOC entry 2413 (class 2604 OID 110490)
-- Name: int_idcomercializacion; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_comercializacion ALTER COLUMN int_idcomercializacion SET DEFAULT nextval('cat_comercializacion_int_idcomercializacion_seq'::regclass);


--
-- TOC entry 2373 (class 2604 OID 109831)
-- Name: int_idComunidadIndigena; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_comunidadIndigena ALTER COLUMN int_idComunidadIndigena SET DEFAULT nextval('cat_comunidadIndigena_int_idComunidadIndigena_seq'::regclass);


--
-- TOC entry 2412 (class 2604 OID 110479)
-- Name: int_iddestinoPecuario; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_destinoPecuario ALTER COLUMN int_iddestinoPecuario SET DEFAULT nextval('cat_destinoPecuario_int_iddestinoPecuario_seq'::regclass);


--
-- TOC entry 2366 (class 2604 OID 109707)
-- Name: int_idDocumentoIdentidad; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_documentoIdentidad ALTER COLUMN int_idDocumentoIdentidad SET DEFAULT nextval('cat_documentoIdentidad_int_idDocumentoIdentidad_seq'::regclass);


--
-- TOC entry 2437 (class 2604 OID 111176)
-- Name: int_iddocumentoidentidad; Type: DEFAULT; Schema: general; Owner: gperez
--

--ALTER TABLE ONLY cat_documentoidentidad ALTER COLUMN int_iddocumentoidentidad SET DEFAULT nextval('cat_documentoidentidad_int_iddocumentoidentidad_seq'::regclass);


--
-- TOC entry 2383 (class 2604 OID 109979)
-- Name: int_idEdificaciones; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_edificaciones ALTER COLUMN int_idEdificaciones SET DEFAULT nextval('cat_edificaciones_int_idEdificaciones_seq'::regclass);


--
-- TOC entry 2363 (class 2604 OID 109671)
-- Name: int_idEstadoCivil; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_estadoCivil ALTER COLUMN int_idEstadoCivil SET DEFAULT nextval('cat_estadoCivil_int_idEstadoCivil_seq'::regclass);


--
-- TOC entry 2375 (class 2604 OID 109860)
-- Name: int_idEstatusRegistro; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_estatusRegistro ALTER COLUMN int_idEstatusRegistro SET DEFAULT nextval('cat_estatusRegistro_int_idEstatusRegistro_seq'::regclass);


--
-- TOC entry 2393 (class 2604 OID 110120)
-- Name: int_idestatusSiembra; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_estatusSiembra ALTER COLUMN int_idestatusSiembra SET DEFAULT nextval('cat_estatusSiembra_int_idestatusSiembra_seq'::regclass);


--
-- TOC entry 2395 (class 2604 OID 110139)
-- Name: int_idpreparacionTierra; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_faseSiembra ALTER COLUMN int_idpreparacionTierra SET DEFAULT nextval('cat_preparacionTierra_int_idpreparacionTierra_seq'::regclass);


--
-- TOC entry 2362 (class 2604 OID 109665)
-- Name: int_idGeneroPersona; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_generoPersona ALTER COLUMN int_idGeneroPersona SET DEFAULT nextval('cat_generoPersona_int_idPersona_seq'::regclass);


--
-- TOC entry 2364 (class 2604 OID 109680)
-- Name: int_idGradoIntruccion; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_gradoIntruccion ALTER COLUMN int_idGradoIntruccion SET DEFAULT nextval('cat_gradoIntruccion_int_idGradoIntruccion_seq'::regclass);


--
-- TOC entry 2381 (class 2604 OID 109942)
-- Name: int_idIdentificacionTierras; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_identificacionTierras ALTER COLUMN int_idIdentificacionTierras SET DEFAULT nextval('cat_identificacionTierras_int_idIdentificacionTierras_seq'::regclass);


--
-- TOC entry 2384 (class 2604 OID 109987)
-- Name: int-idInstalaciones; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_instalaciones ALTER COLUMN int_idInstalaciones SET DEFAULT nextval('cat_instalaciones_int_idInstalaciones_seq'::regclass);


--
-- TOC entry 2377 (class 2604 OID 109891)
-- Name: int_idIntitucionResponsable; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_institucionResponsable ALTER COLUMN int_idIntitucionResponsable SET DEFAULT nextval('cat_institucionResponsable_int_idIntitucionResponsable_seq'::regclass);


--
-- TOC entry 2391 (class 2604 OID 110101)
-- Name: int_idmetodoRiego; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_metodoRiego ALTER COLUMN int_idmetodoRiego SET DEFAULT nextval('cat_metodoRiego_int_idmetodoRiego_seq'::regclass);


--
-- TOC entry 2421 (class 2604 OID 110592)
-- Name: int_idModalidadProduccion; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_modalidadProduccion ALTER COLUMN int_idModalidadProduccion SET DEFAULT nextval('cat_modalidadProduccion_int_idModalidadProduccion_seq'::regclass);


--
-- TOC entry 2406 (class 2604 OID 110403)
-- Name: int_idmodoOrdenio; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_modoOrdenio ALTER COLUMN int_idmodoOrdenio SET DEFAULT nextval('cat_modoOrdenio_int_idmodoOrdenio_seq'::regclass);


--
-- TOC entry 2371 (class 2604 OID 109793)
-- Name: int_idOrganizacionPopular; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_organizacionPopular ALTER COLUMN int_idOrganizacionPopular SET DEFAULT nextval('cat_organizacionPopular_int_idOrganizacionPopular_seq'::regclass);


--
-- TOC entry 2420 (class 2604 OID 110581)
-- Name: int_idPlanSanitario; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_planSanitario ALTER COLUMN int_idPlanSanitario SET DEFAULT nextval('cat_planSanitario_int_idPlanSanitario_seq'::regclass);


--
-- TOC entry 2435 (class 2604 OID 110922)
-- Name: int_idPlanSanitarioRubro; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_planSanitarioRubro ALTER COLUMN int_idPlanSanitarioRubro SET DEFAULT nextval('cat_planSanitarioRubro_int_idPlanSanitarioRubro_seq'::regclass);


--
-- TOC entry 2365 (class 2604 OID 109686)
-- Name: int_idPuebloIndigena; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_pueblosIndigenas ALTER COLUMN int_idPuebloIndigena SET DEFAULT nextval('cat_pueblosIndigenas_int_idPuebloIndigena_seq'::regclass);


--
-- TOC entry 2379 (class 2604 OID 109917)
-- Name: int_idRol; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_rolUsuario ALTER COLUMN int_idRol SET DEFAULT nextval('cat_rolUsuario_int_idRol_seq'::regclass);


--
-- TOC entry 2394 (class 2604 OID 110128)
-- Name: int_idRubro; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_rubro ALTER COLUMN int_idRubro SET DEFAULT nextval('cat_rubro_int_idRubro_seq'::regclass);


--
-- TOC entry 2433 (class 2604 OID 110874)
-- Name: int_idRubroComercializacion; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_rubroComercializacion ALTER COLUMN int_idRubroComercializacion SET DEFAULT nextval('cat_rubroComercializacion_int_idRubroComercializacion_seq'::regclass);


--
-- TOC entry 2408 (class 2604 OID 110425)
-- Name: int_idrubroPecuario; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_rubroPecuario ALTER COLUMN int_idrubroPecuario SET DEFAULT nextval('cat_rubroPecuario_int_idrubroPecuario_seq'::regclass);


--
-- TOC entry 2409 (class 2604 OID 110436)
-- Name: int_idsubSectorPecuario; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_subSectorPecuario ALTER COLUMN int_idsubSectorPecuario SET DEFAULT nextval('cat_subSectorPecuario_int_idsubSectorPecuario_seq'::regclass);


--
-- TOC entry 2392 (class 2604 OID 110109)
-- Name: int_idTipoAmbiente; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_tipoAmbiente ALTER COLUMN int_idTipoAmbiente SET DEFAULT nextval('cat_tipoAmbiente_int_idTipoAmbiente_seq'::regclass);


--
-- TOC entry 2411 (class 2604 OID 110468)
-- Name: int_idtipoColmena; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_tipoColmena ALTER COLUMN int_idtipoColmena SET DEFAULT nextval('cat_tipoColmena_int_idtipoColmena_seq'::regclass);


--
-- TOC entry 2396 (class 2604 OID 110150)
-- Name: int_idTipoDestino; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_tipoDestino ALTER COLUMN int_idTipoDestino SET DEFAULT nextval('cat_tipoDestino_int_idTipoDestino_seq'::regclass);


--
-- TOC entry 2427 (class 2604 OID 110728)
-- Name: int_idTipoEmpresa; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_tipoEmpresaAgricola ALTER COLUMN int_idTipoEmpresa SET DEFAULT nextval('cat_tipoEmpresaAgricola_int_idTipoEmpresa_seq'::regclass);


--
-- TOC entry 2419 (class 2604 OID 110570)
-- Name: int_idTipoExplotacion; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_tipoExplotacion ALTER COLUMN int_idTipoExplotacion SET DEFAULT nextval('cat_tipoExplotacion_int_idTipoExplotacion_seq'::regclass);


--
-- TOC entry 2386 (class 2604 OID 110003)
-- Name: int_idTipoMaquinaria; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_tipoMaquinariaEquipos ALTER COLUMN int_idTipoMaquinaria SET DEFAULT nextval('cat_tipoMaquinariaEquipos_int_idTipoMaquinaria_seq'::regclass);


--
-- TOC entry 2407 (class 2604 OID 110414)
-- Name: int_idtipoOrdenio; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_tipoOrdenio ALTER COLUMN int_idtipoOrdenio SET DEFAULT nextval('cat_tipoOrdenio_int_idtipoOrdenio_seq'::regclass);


--
-- TOC entry 2369 (class 2604 OID 109761)
-- Name: int_idTipoOrganizacion; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_tipoOrganizacion ALTER COLUMN int_idTipoOrganizacion SET DEFAULT nextval('cat_tipoOrganizacion_int_idTipoOrganizacion_seq'::regclass);


--
-- TOC entry 2385 (class 2604 OID 109995)
-- Name: int_idTipoProblematica; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_tipoProblema ALTER COLUMN int_idTipoProblematica SET DEFAULT nextval('cat_tipoProblema_int_idTipoProblematica_seq'::regclass);


--
-- TOC entry 2382 (class 2604 OID 109971)
-- Name: int_idTipoServicios; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_tipoServiciosUP ALTER COLUMN int_idTipoServicios SET DEFAULT nextval('cat_tipoServiciosUP_int_idTipoServicios_seq'::regclass);


--
-- TOC entry 2397 (class 2604 OID 110158)
-- Name: int_idUnidadMedida; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_unidadMedida ALTER COLUMN int_idUnidadMedida SET DEFAULT nextval('cat_unidadMedida_int_idUnidadMedida_seq'::regclass);


--
-- TOC entry 2390 (class 2604 OID 110060)
-- Name: int_idVialidadAgricola; Type: DEFAULT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_vialidadAgricola ALTER COLUMN int_idVialidadAgricola SET DEFAULT nextval('cat_vialidadAgricola_int_idVialidadAgricola_seq'::regclass);


SET search_path = registro_productor, pg_catalog;

--
-- TOC entry 2422 (class 2604 OID 110608)
-- Name: int_idApicola; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_apicola ALTER COLUMN int_idApicola SET DEFAULT nextval('tbl_apicola_int_idApicola_seq'::regclass);


--
-- TOC entry 2370 (class 2604 OID 109775)
-- Name: int_idAsociacionProductor; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_asociacionProductor ALTER COLUMN int_idAsociacionProductor SET DEFAULT nextval('tbl_asociacionProductor_int_idAsociacionProductor_seq'::regclass);


--
-- TOC entry 2405 (class 2604 OID 110365)
-- Name: int_idcertificacion; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_certificacion ALTER COLUMN int_idcertificacion SET DEFAULT nextval('tbl_certificacion_int_idcertificacion_seq'::regclass);


--
-- TOC entry 2402 (class 2604 OID 110265)
-- Name: int_idCosechado; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_cosechado ALTER COLUMN int_idCosechado SET DEFAULT nextval('tbl_cosechado_int_idCosechado_seq'::regclass);


--
-- TOC entry 2403 (class 2604 OID 110283)
-- Name: int_iddestinoCosechado; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_destinoCosechado ALTER COLUMN int_iddestinoCosechado SET DEFAULT nextval('tbl_destinoCosechado_int_iddestinoCosechado_seq'::regclass);


--
-- TOC entry 2430 (class 2604 OID 110795)
-- Name: int_idDestinoIntensionSiembra; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_destinoIntensionSiembra ALTER COLUMN int_idDestinoIntensionSiembra SET DEFAULT nextval('tbl_destinoIntensionSiembra_int_idDestinoIntensionSiembra_seq'::regclass);


--
-- TOC entry 2401 (class 2604 OID 110246)
-- Name: int_idDestinoSiembra; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_destinoSiembra ALTER COLUMN int_idDestinoSiembra SET DEFAULT nextval('tbl_destinoSiembra_int_idDestinoSiembra_seq'::regclass);


--
-- TOC entry 2432 (class 2604 OID 110821)
-- Name: int_idDetallePecuario; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_detallePecuario ALTER COLUMN int_idDetallePecuario SET DEFAULT nextval('tbl_detallePecuario_int_idDetallePecuario_seq'::regclass);


--
-- TOC entry 2436 (class 2604 OID 110940)
-- Name: int_idDetallePlanSanitario; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_detallePlanSanitario ALTER COLUMN int_idDetallePlanSanitario SET DEFAULT nextval('tbl_detallePlanSanitario_int_idDetallePlanSanitario_seq'::regclass);


--
-- TOC entry 2418 (class 2604 OID 110557)
-- Name: int_idDetalleSectorApicola; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_detalleSectorApicola ALTER COLUMN int_idDetalleSectorApicola SET DEFAULT nextval('tbl_detalleSectorApicola_int_idDetalleSectorApicola_seq'::regclass);


--
-- TOC entry 2425 (class 2604 OID 110692)
-- Name: int_idEdificaciones; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_edificaciones ALTER COLUMN int_idEdificaciones SET DEFAULT nextval('tbl_edificaciones_int_idEdificaciones_seq'::regclass);


--
-- TOC entry 2426 (class 2604 OID 110710)
-- Name: int_idInstalaciones; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_idInstalaciones ALTER COLUMN int_idInstalaciones SET DEFAULT nextval('tbl_idInstalaciones_int_idInstalaciones_seq'::regclass);


--
-- TOC entry 2376 (class 2604 OID 109873)
-- Name: int_idInfoAdicional; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_infoAdicional ALTER COLUMN int_idInfoAdicional SET DEFAULT nextval('tbl_infoAdicional_int_idInfoAdicional_seq'::regclass);


--
-- TOC entry 2367 (class 2604 OID 109735)
-- Name: int_idIntegranteJuridico; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_integranteJuridico ALTER COLUMN int_idIntegranteJuridico SET DEFAULT nextval('tbl_integranteJuridico_int_idIntegranteJuridico_seq'::regclass);


--
-- TOC entry 2372 (class 2604 OID 109801)
-- Name: int_idIntegranteOrganizacionPopular; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_integrantesOrganizacionPopular ALTER COLUMN int_idIntegranteOrganizacionPopular SET DEFAULT nextval('tbl_personaOrganizacionPopula_int_idPersonaOrganizacionPopu_seq'::regclass);


--
-- TOC entry 2399 (class 2604 OID 110192)
-- Name: int_idIntensionSiembra; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_intensionSiembra ALTER COLUMN int_idIntensionSiembra SET DEFAULT nextval('tbl_intensionSiembra_int_idIntensionSiembra_seq'::regclass);


--
-- TOC entry 2388 (class 2604 OID 110024)
-- Name: int_idMaquinaria; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_maquinaria ALTER COLUMN int_idMaquinaria SET DEFAULT nextval('tbl_maquinaria_int_idMaquinaria_seq'::regclass);


--
-- TOC entry 2434 (class 2604 OID 110892)
-- Name: int_idPecuarioComercializacion; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_pecuarioComercializacion ALTER COLUMN int_idPecuarioComercializacion SET DEFAULT nextval('tbl_pecuarioComercializacion_int_idPecuarioComercializacion_seq'::regclass);


--
-- TOC entry 2415 (class 2604 OID 110508)
-- Name: int_idPecuarioDestino; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_pecuarioDestino ALTER COLUMN int_idPecuarioDestino SET DEFAULT nextval('tbl_sectorAgricola_int_idSectorAgricola_seq'::regclass);


--
-- TOC entry 2361 (class 2604 OID 109658)
-- Name: int_idPersona; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_persona ALTER COLUMN int_idPersona SET DEFAULT nextval('tbl_persona_int_idPersona_seq'::regclass);


--
-- TOC entry 2389 (class 2604 OID 110042)
-- Name: int_idProblematicaUP; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_problematica ALTER COLUMN int_idProblematicaUP SET DEFAULT nextval('tbl_problematica_int_idProblematicaUP_seq'::regclass);


--
-- TOC entry 2423 (class 2604 OID 110631)
-- Name: int_idProdColmena; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_prodColmena ALTER COLUMN int_idProdColmena SET DEFAULT nextval('tbl_prodColmena_int_idProdColmena_seq'::regclass);


--
-- TOC entry 2417 (class 2604 OID 110544)
-- Name: int_idProdHuevos; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_prodHuevos ALTER COLUMN int_idProdHuevos SET DEFAULT nextval('tbl_prodHuevos_int_idProdHuevos_seq'::regclass);


--
-- TOC entry 2404 (class 2604 OID 110306)
-- Name: int_idrenovacion; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_renovacion ALTER COLUMN int_idrenovacion SET DEFAULT nextval('tbl_renovacion_int_idrenovacion_seq'::regclass);


--
-- TOC entry 2414 (class 2604 OID 110502)
-- Name: int_idSectorAcuicola; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sectorAcuicola ALTER COLUMN int_idSectorAcuicola SET DEFAULT nextval('tbl_sectorAcuicola_int_idSectorAcuicola_seq'::regclass);


--
-- TOC entry 2416 (class 2604 OID 110526)
-- Name: int_idSectorPecuario; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sectorPecuario ALTER COLUMN int_idSectorPecuario SET DEFAULT nextval('tbl_sectorPecuario_int_idSectorPecuario_seq'::regclass);


--
-- TOC entry 2398 (class 2604 OID 110166)
-- Name: int_idVegetal; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sectorVegetal ALTER COLUMN int_idVegetal SET DEFAULT nextval('tbl_sectorVegetal_int_idVegetal_seq'::regclass);


--
-- TOC entry 2431 (class 2604 OID 110813)
-- Name: int_idSeguimientoAdmin; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_seguimientoAdmin ALTER COLUMN int_idSeguimientoAdmin SET DEFAULT nextval('tbl_seguimientoAdmin_int_idSeguimientoAdmin_seq'::regclass);


--
-- TOC entry 2400 (class 2604 OID 110218)
-- Name: int_idSembrado; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sembrado ALTER COLUMN int_idSembrado SET DEFAULT nextval('tbl_sembrado_int_idSembrado_seq'::regclass);


--
-- TOC entry 2374 (class 2604 OID 109844)
-- Name: int_idSolicitudRegistro; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_solicitudRegistro ALTER COLUMN int_idSolicitudRegistro SET DEFAULT nextval('tbl_solicitudRegistro_int_idSolicitudRegistro_seq'::regclass);


--
-- TOC entry 2428 (class 2604 OID 110739)
-- Name: int_idTipoEmpresaUP; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_tipoEmpresaUP ALTER COLUMN int_idTipoEmpresaUP SET DEFAULT nextval('tbl_tipoEmpresaUP_int_idTipoEmpresaUP_seq'::regclass);


--
-- TOC entry 2380 (class 2604 OID 109930)
-- Name: int_idUnidadProduccion; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_unidadProduccion ALTER COLUMN int_idUnidadProduccion SET DEFAULT nextval('tbl_unidadProduccion_int_idUnidadProduccion_seq'::regclass);


--
-- TOC entry 2378 (class 2604 OID 109904)
-- Name: int_idUsuarioProductor; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_usuarioProductor ALTER COLUMN int_idUsuarioProductor SET DEFAULT nextval('tbl_usuarioProductor_int_idUsuarioProductor_seq'::regclass);


--
-- TOC entry 2424 (class 2604 OID 110649)
-- Name: int_idUsuarioSistema; Type: DEFAULT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_usuarioSistema ALTER COLUMN int_idUsuarioSistema SET DEFAULT nextval('tbl_usuarioSistema_int_idUsuarioSistema_seq'::regclass);


SET search_path = general, pg_catalog;

--
-- TOC entry 2800 (class 0 OID 109750)
-- Dependencies: 189
-- Data for Name: cat_asociacionesAgricolas; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 188
-- Name: cat_asociacionesAgricolas_int_idAsociaciones_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_asociacionesAgricolas_int_idAsociaciones_seq', 1, false);


--
-- TOC entry 2838 (class 0 OID 110008)
-- Dependencies: 227
-- Data for Name: cat_clasificacionMaquinaria; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 226
-- Name: cat_clasificacionMaquinaria_int_idClasificacionMaquinaria_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_clasificacionMaquinaria_int_idClasificacionMaquinaria_seq', 1, false);


--
-- TOC entry 2884 (class 0 OID 110449)
-- Dependencies: 273
-- Data for Name: cat_clasificacionRubroPecuario; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 272
-- Name: cat_clasificacionRubroPecuario_int_idclarificacionPecuario_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_clasificacionRubroPecuario_int_idclarificacionPecuario_seq', 1, false);


--
-- TOC entry 2922 (class 0 OID 110754)
-- Dependencies: 311
-- Data for Name: cat_clasificacionUP; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 310
-- Name: cat_clasificacionUP_int_idClasificacionUP_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_clasificacionUP_int_idClasificacionUP_seq', 1, false);


--
-- TOC entry 2890 (class 0 OID 110487)
-- Dependencies: 279
-- Data for Name: cat_comercializacion; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 278
-- Name: cat_comercializacion_int_idcomercializacion_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_comercializacion_int_idcomercializacion_seq', 1, false);


--
-- TOC entry 2810 (class 0 OID 109828)
-- Dependencies: 199
-- Data for Name: cat_comunidadIndigena; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 198
-- Name: cat_comunidadIndigena_int_idComunidadIndigena_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_comunidadIndigena_int_idComunidadIndigena_seq', 1, false);


--
-- TOC entry 2888 (class 0 OID 110476)
-- Dependencies: 277
-- Data for Name: cat_destinoPecuario; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 276
-- Name: cat_destinoPecuario_int_iddestinoPecuario_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_destinoPecuario_int_iddestinoPecuario_seq', 1, false);


--
-- TOC entry 2796 (class 0 OID 109704)
-- Dependencies: 185
-- Data for Name: cat_documentoIdentidad; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3065 (class 0 OID 0)
-- Dependencies: 184
-- Name: cat_documentoIdentidad_int_idDocumentoIdentidad_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_documentoIdentidad_int_idDocumentoIdentidad_seq', 1, false);


--
-- TOC entry 2938 (class 0 OID 111173)
-- Dependencies: 327
-- Data for Name: cat_documentoidentidad; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3066 (class 0 OID 0)
-- Dependencies: 326
-- Name: cat_documentoidentidad_int_iddocumentoidentidad_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_documentoidentidad_int_iddocumentoidentidad_seq', 1, false);


--
-- TOC entry 2830 (class 0 OID 109976)
-- Dependencies: 219
-- Data for Name: cat_edificaciones; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3067 (class 0 OID 0)
-- Dependencies: 218
-- Name: cat_edificaciones_int_idEdificaciones_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_edificaciones_int_idEdificaciones_seq', 1, false);


--
-- TOC entry 2790 (class 0 OID 109668)
-- Dependencies: 179
-- Data for Name: cat_estadoCivil; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3068 (class 0 OID 0)
-- Dependencies: 178
-- Name: cat_estadoCivil_int_idEstadoCivil_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_estadoCivil_int_idEstadoCivil_seq', 1, false);


--
-- TOC entry 2814 (class 0 OID 109857)
-- Dependencies: 203
-- Data for Name: cat_estatusRegistro; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3069 (class 0 OID 0)
-- Dependencies: 202
-- Name: cat_estatusRegistro_int_idEstatusRegistro_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_estatusRegistro_int_idEstatusRegistro_seq', 1, false);


--
-- TOC entry 2850 (class 0 OID 110117)
-- Dependencies: 239
-- Data for Name: cat_estatusSiembra; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3070 (class 0 OID 0)
-- Dependencies: 238
-- Name: cat_estatusSiembra_int_idestatusSiembra_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_estatusSiembra_int_idestatusSiembra_seq', 1, false);


--
-- TOC entry 2854 (class 0 OID 110136)
-- Dependencies: 243
-- Data for Name: cat_faseSiembra; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 2788 (class 0 OID 109662)
-- Dependencies: 177
-- Data for Name: cat_generoPersona; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3071 (class 0 OID 0)
-- Dependencies: 176
-- Name: cat_generoPersona_int_idPersona_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_generoPersona_int_idPersona_seq', 1, false);


--
-- TOC entry 2792 (class 0 OID 109677)
-- Dependencies: 181
-- Data for Name: cat_gradoIntruccion; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3072 (class 0 OID 0)
-- Dependencies: 180
-- Name: cat_gradoIntruccion_int_idGradoIntruccion_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_gradoIntruccion_int_idGradoIntruccion_seq', 1, false);


--
-- TOC entry 2826 (class 0 OID 109939)
-- Dependencies: 215
-- Data for Name: cat_identificacionTierras; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3073 (class 0 OID 0)
-- Dependencies: 214
-- Name: cat_identificacionTierras_int_idIdentificacionTierras_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_identificacionTierras_int_idIdentificacionTierras_seq', 1, false);


--
-- TOC entry 2832 (class 0 OID 109984)
-- Dependencies: 221
-- Data for Name: cat_instalaciones; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3074 (class 0 OID 0)
-- Dependencies: 220
-- Name: cat_instalaciones_int_idInstalaciones_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_instalaciones_int_idInstalaciones_seq', 1, false);


--
-- TOC entry 2818 (class 0 OID 109888)
-- Dependencies: 207
-- Data for Name: cat_institucionResponsable; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 206
-- Name: cat_institucionResponsable_int_idIntitucionResponsable_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_institucionResponsable_int_idIntitucionResponsable_seq', 1, false);


--
-- TOC entry 2846 (class 0 OID 110098)
-- Dependencies: 235
-- Data for Name: cat_metodoRiego; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 234
-- Name: cat_metodoRiego_int_idmetodoRiego_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_metodoRiego_int_idmetodoRiego_seq', 1, false);


--
-- TOC entry 2906 (class 0 OID 110589)
-- Dependencies: 295
-- Data for Name: cat_modalidadProduccion; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 294
-- Name: cat_modalidadProduccion_int_idModalidadProduccion_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_modalidadProduccion_int_idModalidadProduccion_seq', 1, false);


--
-- TOC entry 2876 (class 0 OID 110400)
-- Dependencies: 265
-- Data for Name: cat_modoOrdenio; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 264
-- Name: cat_modoOrdenio_int_idmodoOrdenio_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_modoOrdenio_int_idmodoOrdenio_seq', 1, false);


--
-- TOC entry 2806 (class 0 OID 109790)
-- Dependencies: 195
-- Data for Name: cat_organizacionPopular; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 194
-- Name: cat_organizacionPopular_int_idOrganizacionPopular_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_organizacionPopular_int_idOrganizacionPopular_seq', 1, false);


--
-- TOC entry 2904 (class 0 OID 110578)
-- Dependencies: 293
-- Data for Name: cat_planSanitario; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 2934 (class 0 OID 110919)
-- Dependencies: 323
-- Data for Name: cat_planSanitarioRubro; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 322
-- Name: cat_planSanitarioRubro_int_idPlanSanitarioRubro_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_planSanitarioRubro_int_idPlanSanitarioRubro_seq', 1, false);


--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 292
-- Name: cat_planSanitario_int_idPlanSanitario_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_planSanitario_int_idPlanSanitario_seq', 1, false);


--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 242
-- Name: cat_preparacionTierra_int_idpreparacionTierra_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_preparacionTierra_int_idpreparacionTierra_seq', 1, false);


--
-- TOC entry 2794 (class 0 OID 109683)
-- Dependencies: 183
-- Data for Name: cat_pueblosIndigenas; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 182
-- Name: cat_pueblosIndigenas_int_idPuebloIndigena_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_pueblosIndigenas_int_idPuebloIndigena_seq', 1, false);


--
-- TOC entry 2822 (class 0 OID 109914)
-- Dependencies: 211
-- Data for Name: cat_rolUsuario; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 210
-- Name: cat_rolUsuario_int_idRol_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_rolUsuario_int_idRol_seq', 1, false);


--
-- TOC entry 2852 (class 0 OID 110125)
-- Dependencies: 241
-- Data for Name: cat_rubro; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 2930 (class 0 OID 110871)
-- Dependencies: 319
-- Data for Name: cat_rubroComercializacion; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 318
-- Name: cat_rubroComercializacion_int_idRubroComercializacion_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_rubroComercializacion_int_idRubroComercializacion_seq', 1, false);


--
-- TOC entry 2880 (class 0 OID 110422)
-- Dependencies: 269
-- Data for Name: cat_rubroPecuario; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 268
-- Name: cat_rubroPecuario_int_idrubroPecuario_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_rubroPecuario_int_idrubroPecuario_seq', 1, false);


--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 240
-- Name: cat_rubro_int_idRubro_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_rubro_int_idRubro_seq', 1, false);


--
-- TOC entry 2882 (class 0 OID 110433)
-- Dependencies: 271
-- Data for Name: cat_subSectorPecuario; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 270
-- Name: cat_subSectorPecuario_int_idsubSectorPecuario_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_subSectorPecuario_int_idsubSectorPecuario_seq', 1, false);


--
-- TOC entry 2848 (class 0 OID 110106)
-- Dependencies: 237
-- Data for Name: cat_tipoAmbiente; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 236
-- Name: cat_tipoAmbiente_int_idTipoAmbiente_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_tipoAmbiente_int_idTipoAmbiente_seq', 1, false);


--
-- TOC entry 2886 (class 0 OID 110465)
-- Dependencies: 275
-- Data for Name: cat_tipoColmena; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 274
-- Name: cat_tipoColmena_int_idtipoColmena_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_tipoColmena_int_idtipoColmena_seq', 1, false);


--
-- TOC entry 2856 (class 0 OID 110147)
-- Dependencies: 245
-- Data for Name: cat_tipoDestino; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 244
-- Name: cat_tipoDestino_int_idTipoDestino_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_tipoDestino_int_idTipoDestino_seq', 1, false);


--
-- TOC entry 2918 (class 0 OID 110725)
-- Dependencies: 307
-- Data for Name: cat_tipoEmpresaAgricola; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 306
-- Name: cat_tipoEmpresaAgricola_int_idTipoEmpresa_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_tipoEmpresaAgricola_int_idTipoEmpresa_seq', 1, false);


--
-- TOC entry 2902 (class 0 OID 110567)
-- Dependencies: 291
-- Data for Name: cat_tipoExplotacion; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 290
-- Name: cat_tipoExplotacion_int_idTipoExplotacion_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_tipoExplotacion_int_idTipoExplotacion_seq', 1, false);


--
-- TOC entry 2836 (class 0 OID 110000)
-- Dependencies: 225
-- Data for Name: cat_tipoMaquinariaEquipos; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 224
-- Name: cat_tipoMaquinariaEquipos_int_idTipoMaquinaria_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_tipoMaquinariaEquipos_int_idTipoMaquinaria_seq', 1, false);


--
-- TOC entry 2878 (class 0 OID 110411)
-- Dependencies: 267
-- Data for Name: cat_tipoOrdenio; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 266
-- Name: cat_tipoOrdenio_int_idtipoOrdenio_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_tipoOrdenio_int_idtipoOrdenio_seq', 1, false);


--
-- TOC entry 2802 (class 0 OID 109758)
-- Dependencies: 191
-- Data for Name: cat_tipoOrganizacion; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 190
-- Name: cat_tipoOrganizacion_int_idTipoOrganizacion_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_tipoOrganizacion_int_idTipoOrganizacion_seq', 1, false);


--
-- TOC entry 2834 (class 0 OID 109992)
-- Dependencies: 223
-- Data for Name: cat_tipoProblema; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 222
-- Name: cat_tipoProblema_int_idTipoProblematica_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_tipoProblema_int_idTipoProblematica_seq', 1, false);


--
-- TOC entry 2828 (class 0 OID 109968)
-- Dependencies: 217
-- Data for Name: cat_tipoServiciosUP; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 216
-- Name: cat_tipoServiciosUP_int_idTipoServicios_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_tipoServiciosUP_int_idTipoServicios_seq', 1, false);


--
-- TOC entry 2858 (class 0 OID 110155)
-- Dependencies: 247
-- Data for Name: cat_unidadMedida; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 246
-- Name: cat_unidadMedida_int_idUnidadMedida_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_unidadMedida_int_idUnidadMedida_seq', 1, false);


--
-- TOC entry 2843 (class 0 OID 110055)
-- Dependencies: 232
-- Data for Name: cat_vialidadAgricola; Type: TABLE DATA; Schema: general; Owner: gperez
--



--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 233
-- Name: cat_vialidadAgricola_int_idVialidadAgricola_seq; Type: SEQUENCE SET; Schema: general; Owner: gperez
--

SELECT pg_catalog.setval('cat_vialidadAgricola_int_idVialidadAgricola_seq', 1, false);


SET search_path = registro_productor, pg_catalog;

--
-- TOC entry 2908 (class 0 OID 110605)
-- Dependencies: 297
-- Data for Name: tbl_apicola; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 296
-- Name: tbl_apicola_int_idApicola_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_apicola_int_idApicola_seq', 1, false);


--
-- TOC entry 2804 (class 0 OID 109772)
-- Dependencies: 193
-- Data for Name: tbl_asociacionProductor; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 192
-- Name: tbl_asociacionProductor_int_idAsociacionProductor_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_asociacionProductor_int_idAsociacionProductor_seq', 1, false);


--
-- TOC entry 2874 (class 0 OID 110362)
-- Dependencies: 263
-- Data for Name: tbl_certificacion; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 262
-- Name: tbl_certificacion_int_idcertificacion_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_certificacion_int_idcertificacion_seq', 1, false);


--
-- TOC entry 2868 (class 0 OID 110262)
-- Dependencies: 257
-- Data for Name: tbl_cosechado; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 256
-- Name: tbl_cosechado_int_idCosechado_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_cosechado_int_idCosechado_seq', 1, false);


--
-- TOC entry 2870 (class 0 OID 110280)
-- Dependencies: 259
-- Data for Name: tbl_destinoCosechado; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 258
-- Name: tbl_destinoCosechado_int_iddestinoCosechado_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_destinoCosechado_int_iddestinoCosechado_seq', 1, false);


--
-- TOC entry 2924 (class 0 OID 110792)
-- Dependencies: 313
-- Data for Name: tbl_destinoIntensionSiembra; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3106 (class 0 OID 0)
-- Dependencies: 312
-- Name: tbl_destinoIntensionSiembra_int_idDestinoIntensionSiembra_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_destinoIntensionSiembra_int_idDestinoIntensionSiembra_seq', 1, false);


--
-- TOC entry 2866 (class 0 OID 110243)
-- Dependencies: 255
-- Data for Name: tbl_destinoSiembra; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3107 (class 0 OID 0)
-- Dependencies: 254
-- Name: tbl_destinoSiembra_int_idDestinoSiembra_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_destinoSiembra_int_idDestinoSiembra_seq', 1, false);


--
-- TOC entry 2928 (class 0 OID 110818)
-- Dependencies: 317
-- Data for Name: tbl_detallePecuario; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3108 (class 0 OID 0)
-- Dependencies: 316
-- Name: tbl_detallePecuario_int_idDetallePecuario_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_detallePecuario_int_idDetallePecuario_seq', 1, false);


--
-- TOC entry 2936 (class 0 OID 110937)
-- Dependencies: 325
-- Data for Name: tbl_detallePlanSanitario; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3109 (class 0 OID 0)
-- Dependencies: 324
-- Name: tbl_detallePlanSanitario_int_idDetallePlanSanitario_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_detallePlanSanitario_int_idDetallePlanSanitario_seq', 1, false);


--
-- TOC entry 2900 (class 0 OID 110554)
-- Dependencies: 289
-- Data for Name: tbl_detalleSectorApicola; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3110 (class 0 OID 0)
-- Dependencies: 288
-- Name: tbl_detalleSectorApicola_int_idDetalleSectorApicola_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_detalleSectorApicola_int_idDetalleSectorApicola_seq', 1, false);


--
-- TOC entry 2914 (class 0 OID 110689)
-- Dependencies: 303
-- Data for Name: tbl_edificaciones; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3111 (class 0 OID 0)
-- Dependencies: 302
-- Name: tbl_edificaciones_int_idEdificaciones_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_edificaciones_int_idEdificaciones_seq', 1, false);


--
-- TOC entry 2916 (class 0 OID 110707)
-- Dependencies: 305
-- Data for Name: tbl_idInstalaciones; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3112 (class 0 OID 0)
-- Dependencies: 304
-- Name: tbl_idInstalaciones_int_idInstalaciones_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_idInstalaciones_int_idInstalaciones_seq', 1, false);


--
-- TOC entry 2816 (class 0 OID 109870)
-- Dependencies: 205
-- Data for Name: tbl_infoAdicional; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 204
-- Name: tbl_infoAdicional_int_idInfoAdicional_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_infoAdicional_int_idInfoAdicional_seq', 1, false);


--
-- TOC entry 2798 (class 0 OID 109732)
-- Dependencies: 187
-- Data for Name: tbl_integranteJuridico; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 186
-- Name: tbl_integranteJuridico_int_idIntegranteJuridico_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_integranteJuridico_int_idIntegranteJuridico_seq', 1, false);


--
-- TOC entry 2808 (class 0 OID 109798)
-- Dependencies: 197
-- Data for Name: tbl_integrantesOrganizacionPopular; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 2861 (class 0 OID 110187)
-- Dependencies: 250
-- Data for Name: tbl_intensionSiembra; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 251
-- Name: tbl_intensionSiembra_int_idIntensionSiembra_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_intensionSiembra_int_idIntensionSiembra_seq', 1, false);


--
-- TOC entry 2840 (class 0 OID 110021)
-- Dependencies: 229
-- Data for Name: tbl_maquinaria; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 228
-- Name: tbl_maquinaria_int_idMaquinaria_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_maquinaria_int_idMaquinaria_seq', 1, false);


--
-- TOC entry 2932 (class 0 OID 110889)
-- Dependencies: 321
-- Data for Name: tbl_pecuarioComercializacion; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 320
-- Name: tbl_pecuarioComercializacion_int_idPecuarioComercializacion_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_pecuarioComercializacion_int_idPecuarioComercializacion_seq', 1, false);


--
-- TOC entry 2894 (class 0 OID 110505)
-- Dependencies: 283
-- Data for Name: tbl_pecuarioDestino; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 2786 (class 0 OID 109655)
-- Dependencies: 175
-- Data for Name: tbl_persona; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 196
-- Name: tbl_personaOrganizacionPopula_int_idPersonaOrganizacionPopu_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_personaOrganizacionPopula_int_idPersonaOrganizacionPopu_seq', 1, false);


--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 174
-- Name: tbl_persona_int_idPersona_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_persona_int_idPersona_seq', 1, false);


--
-- TOC entry 2842 (class 0 OID 110039)
-- Dependencies: 231
-- Data for Name: tbl_problematica; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 230
-- Name: tbl_problematica_int_idProblematicaUP_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_problematica_int_idProblematicaUP_seq', 1, false);


--
-- TOC entry 2910 (class 0 OID 110628)
-- Dependencies: 299
-- Data for Name: tbl_prodColmena; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 298
-- Name: tbl_prodColmena_int_idProdColmena_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_prodColmena_int_idProdColmena_seq', 1, false);


--
-- TOC entry 2898 (class 0 OID 110541)
-- Dependencies: 287
-- Data for Name: tbl_prodHuevos; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 286
-- Name: tbl_prodHuevos_int_idProdHuevos_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_prodHuevos_int_idProdHuevos_seq', 1, false);


--
-- TOC entry 2872 (class 0 OID 110303)
-- Dependencies: 261
-- Data for Name: tbl_renovacion; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 260
-- Name: tbl_renovacion_int_idrenovacion_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_renovacion_int_idrenovacion_seq', 1, false);


--
-- TOC entry 2892 (class 0 OID 110499)
-- Dependencies: 281
-- Data for Name: tbl_sectorAcuicola; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 280
-- Name: tbl_sectorAcuicola_int_idSectorAcuicola_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_sectorAcuicola_int_idSectorAcuicola_seq', 1, false);


--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 282
-- Name: tbl_sectorAgricola_int_idSectorAgricola_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_sectorAgricola_int_idSectorAgricola_seq', 1, false);


--
-- TOC entry 2896 (class 0 OID 110523)
-- Dependencies: 285
-- Data for Name: tbl_sectorPecuario; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 284
-- Name: tbl_sectorPecuario_int_idSectorPecuario_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_sectorPecuario_int_idSectorPecuario_seq', 1, false);


--
-- TOC entry 2860 (class 0 OID 110163)
-- Dependencies: 249
-- Data for Name: tbl_sectorVegetal; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 248
-- Name: tbl_sectorVegetal_int_idVegetal_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_sectorVegetal_int_idVegetal_seq', 1, false);


--
-- TOC entry 2926 (class 0 OID 110810)
-- Dependencies: 315
-- Data for Name: tbl_seguimientoAdmin; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 314
-- Name: tbl_seguimientoAdmin_int_idSeguimientoAdmin_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_seguimientoAdmin_int_idSeguimientoAdmin_seq', 1, false);


--
-- TOC entry 2864 (class 0 OID 110215)
-- Dependencies: 253
-- Data for Name: tbl_sembrado; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 252
-- Name: tbl_sembrado_int_idSembrado_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_sembrado_int_idSembrado_seq', 1, false);


--
-- TOC entry 2811 (class 0 OID 109839)
-- Dependencies: 200
-- Data for Name: tbl_solicitudRegistro; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 201
-- Name: tbl_solicitudRegistro_int_idSolicitudRegistro_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_solicitudRegistro_int_idSolicitudRegistro_seq', 1, false);


--
-- TOC entry 2920 (class 0 OID 110736)
-- Dependencies: 309
-- Data for Name: tbl_tipoEmpresaUP; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 308
-- Name: tbl_tipoEmpresaUP_int_idTipoEmpresaUP_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_tipoEmpresaUP_int_idTipoEmpresaUP_seq', 1, false);


--
-- TOC entry 2823 (class 0 OID 109925)
-- Dependencies: 212
-- Data for Name: tbl_unidadProduccion; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 213
-- Name: tbl_unidadProduccion_int_idUnidadProduccion_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_unidadProduccion_int_idUnidadProduccion_seq', 1, false);


--
-- TOC entry 2820 (class 0 OID 109901)
-- Dependencies: 209
-- Data for Name: tbl_usuarioProductor; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 208
-- Name: tbl_usuarioProductor_int_idUsuarioProductor_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_usuarioProductor_int_idUsuarioProductor_seq', 1, false);


--
-- TOC entry 2912 (class 0 OID 110646)
-- Dependencies: 301
-- Data for Name: tbl_usuarioSistema; Type: TABLE DATA; Schema: registro_productor; Owner: gperez
--



--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 300
-- Name: tbl_usuarioSistema_int_idUsuarioSistema_seq; Type: SEQUENCE SET; Schema: registro_productor; Owner: gperez
--

SELECT pg_catalog.setval('tbl_usuarioSistema_int_idUsuarioSistema_seq', 1, false);


SET search_path = general, pg_catalog;

--
-- TOC entry 2453 (class 2606 OID 109755)
-- Name: cat_asociacionesAgricolas_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_asociacionesAgricolas
    ADD CONSTRAINT cat_asociacionesAgricolas_pkey PRIMARY KEY (int_idAsociaciones);


--
-- TOC entry 2491 (class 2606 OID 111101)
-- Name: cat_clasificacionMaquinaria_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_clasificacionMaquinaria
    ADD CONSTRAINT cat_clasificacionMaquinaria_pkey PRIMARY KEY (int_idClasificacionMaquinaria);


--
-- TOC entry 2537 (class 2606 OID 110457)
-- Name: cat_clasificacionRubroPecuario_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_clasificacionRubroPecuario
    ADD CONSTRAINT cat_clasificacionRubroPecuario_pkey PRIMARY KEY (int_idclarificacionPecuario);


--
-- TOC entry 2575 (class 2606 OID 110762)
-- Name: cat_clasificacionUP_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_clasificacionUP
    ADD CONSTRAINT cat_clasificacionUP_pkey PRIMARY KEY (int_idClasificacionUP);


--
-- TOC entry 2543 (class 2606 OID 110495)
-- Name: cat_comercializacion_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_comercializacion
    ADD CONSTRAINT cat_comercializacion_pkey PRIMARY KEY (int_idcomercializacion);


--
-- TOC entry 2463 (class 2606 OID 109833)
-- Name: cat_comunidadIndigena_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_comunidadIndigena
    ADD CONSTRAINT cat_comunidadIndigena_pkey PRIMARY KEY (int_idComunidadIndigena);


--
-- TOC entry 2541 (class 2606 OID 110484)
-- Name: cat_destinoPecuario_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_destinoPecuario
    ADD CONSTRAINT cat_destinoPecuario_pkey PRIMARY KEY (int_iddestinoPecuario);


--
-- TOC entry 2449 (class 2606 OID 109709)
-- Name: cat_documentoIdentidad_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_documentoIdentidad
    ADD CONSTRAINT cat_documentoIdentidad_pkey PRIMARY KEY (int_idDocumentoIdentidad);


--
-- TOC entry 2591 (class 2606 OID 111178)
-- Name: cat_documentoidentidad_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_edificaciones
    ADD CONSTRAINT cat_edificaciones_pkey PRIMARY KEY (int_idEdificaciones);


--
-- TOC entry 2443 (class 2606 OID 109697)
-- Name: cat_estadoCivil_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_estadoCivil
    ADD CONSTRAINT cat_estadoCivil_pkey PRIMARY KEY (int_idEstadoCivil);


--
-- TOC entry 2467 (class 2606 OID 109862)
-- Name: cat_estatusRegistro_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_estatusRegistro
    ADD CONSTRAINT cat_estatusRegistro_pkey PRIMARY KEY (int_idEstatusRegistro);


--
-- TOC entry 2503 (class 2606 OID 110122)
-- Name: cat_estatusSiembra_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_estatusSiembra
    ADD CONSTRAINT cat_estatusSiembra_pkey PRIMARY KEY (int_idestatusSiembra);


--
-- TOC entry 2507 (class 2606 OID 111017)
-- Name: cat_faseSiembra_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_faseSiembra
    ADD CONSTRAINT cat_faseSiembra_pkey PRIMARY KEY (int_idpreparacionTierra);


--
-- TOC entry 2441 (class 2606 OID 109688)
-- Name: cat_generoPersona_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_generoPersona
    ADD CONSTRAINT cat_generoPersona_pkey PRIMARY KEY (int_idGeneroPersona);


--
-- TOC entry 2445 (class 2606 OID 109699)
-- Name: cat_gradoIntruccion_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_gradoIntruccion
    ADD CONSTRAINT cat_gradoIntruccion_pkey PRIMARY KEY (int_idGradoIntruccion);


--
-- TOC entry 2479 (class 2606 OID 109944)
-- Name: cat_identificacionTierras_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_identificacionTierras
    ADD CONSTRAINT cat_identificacionTierras_pkey PRIMARY KEY (int_idIdentificacionTierras);


--
-- TOC entry 2485 (class 2606 OID 109989)
-- Name: cat_instalaciones_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_instalaciones
    ADD CONSTRAINT cat_instalaciones_pkey PRIMARY KEY (int_idInstalaciones);


--
-- TOC entry 2471 (class 2606 OID 109893)
-- Name: cat_institucionResponsable_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_institucionResponsable
    ADD CONSTRAINT cat_institucionResponsable_pkey PRIMARY KEY (int_idIntitucionResponsable);


--
-- TOC entry 2499 (class 2606 OID 110103)
-- Name: cat_metodoRiego_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_metodoRiego
    ADD CONSTRAINT cat_metodoRiego_pkey PRIMARY KEY (int_idmetodoRiego);


--
-- TOC entry 2559 (class 2606 OID 110597)
-- Name: cat_modalidadProduccion_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_modalidadProduccion
    ADD CONSTRAINT cat_modalidadProduccion_pkey PRIMARY KEY (int_idModalidadProduccion);


--
-- TOC entry 2529 (class 2606 OID 111008)
-- Name: cat_modoOrdenio_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_modoOrdenio
    ADD CONSTRAINT cat_modoOrdenio_pkey PRIMARY KEY (int_idmodoOrdenio);


--
-- TOC entry 2459 (class 2606 OID 109795)
-- Name: cat_organizacionPopular_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_organizacionPopular
    ADD CONSTRAINT cat_organizacionPopular_pkey PRIMARY KEY (int_idOrganizacionPopular);


--
-- TOC entry 2587 (class 2606 OID 110924)
-- Name: cat_planSanitarioRubro_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_planSanitarioRubro
    ADD CONSTRAINT cat_planSanitarioRubro_pkey PRIMARY KEY (int_idPlanSanitarioRubro);


--
-- TOC entry 2557 (class 2606 OID 110586)
-- Name: cat_planSanitario_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_planSanitario
    ADD CONSTRAINT cat_planSanitario_pkey PRIMARY KEY (int_idPlanSanitario);


--
-- TOC entry 2447 (class 2606 OID 109701)
-- Name: cat_pueblosIndigenas_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_pueblosIndigenas
    ADD CONSTRAINT cat_pueblosIndigenas_pkey PRIMARY KEY (int_idPuebloIndigena);


--
-- TOC entry 2475 (class 2606 OID 109919)
-- Name: cat_rolUsuario_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_rolUsuario
    ADD CONSTRAINT cat_rolUsuario_pkey PRIMARY KEY (int_idRol);


--
-- TOC entry 2583 (class 2606 OID 110876)
-- Name: cat_rubroComercializacion_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_rubroComercializacion
    ADD CONSTRAINT cat_rubroComercializacion_pkey PRIMARY KEY (int_idRubroComercializacion);


--
-- TOC entry 2533 (class 2606 OID 110430)
-- Name: cat_rubroPecuario_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_rubroPecuario
    ADD CONSTRAINT cat_rubroPecuario_pkey PRIMARY KEY (int_idrubroPecuario);


--
-- TOC entry 2505 (class 2606 OID 110133)
-- Name: cat_rubro_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_rubro
    ADD CONSTRAINT cat_rubro_pkey PRIMARY KEY (int_idRubro);


--
-- TOC entry 2535 (class 2606 OID 110441)
-- Name: cat_subSectorPecuario_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_subSectorPecuario
    ADD CONSTRAINT cat_subSectorPecuario_pkey PRIMARY KEY (int_idsubSectorPecuario);


--
-- TOC entry 2501 (class 2606 OID 111024)
-- Name: cat_tipoAmbiente_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_tipoAmbiente
    ADD CONSTRAINT cat_tipoAmbiente_pkey PRIMARY KEY (int_idTipoAmbiente);


--
-- TOC entry 2539 (class 2606 OID 110473)
-- Name: cat_tipoColmena_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_tipoColmena
    ADD CONSTRAINT cat_tipoColmena_pkey PRIMARY KEY (int_idtipoColmena);


--
-- TOC entry 2509 (class 2606 OID 111031)
-- Name: cat_tipoDestino_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_tipoDestino
    ADD CONSTRAINT cat_tipoDestino_pkey PRIMARY KEY (int_idTipoDestino);


--
-- TOC entry 2571 (class 2606 OID 110733)
-- Name: cat_tipoEmpresaAgricola_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_tipoEmpresaAgricola
    ADD CONSTRAINT cat_tipoEmpresaAgricola_pkey PRIMARY KEY (int_idTipoEmpresa);


--
-- TOC entry 2555 (class 2606 OID 110575)
-- Name: cat_tipoExplotacion_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_tipoExplotacion
    ADD CONSTRAINT cat_tipoExplotacion_pkey PRIMARY KEY (int_idTipoExplotacion);


--
-- TOC entry 2489 (class 2606 OID 110005)
-- Name: cat_tipoMaquinariaEquipos_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_tipoMaquinariaEquipos
    ADD CONSTRAINT cat_tipoMaquinariaEquipos_pkey PRIMARY KEY (int_idTipoMaquinaria);


--
-- TOC entry 2531 (class 2606 OID 110419)
-- Name: cat_tipoOrdenio_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_tipoOrdenio
    ADD CONSTRAINT cat_tipoOrdenio_pkey PRIMARY KEY (int_idtipoOrdenio);


--
-- TOC entry 2455 (class 2606 OID 109763)
-- Name: cat_tipoOrganizacion_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_tipoOrganizacion
    ADD CONSTRAINT cat_tipoOrganizacion_pkey PRIMARY KEY (int_idTipoOrganizacion);


--
-- TOC entry 2487 (class 2606 OID 109997)
-- Name: cat_tipoProblema_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_tipoProblema
    ADD CONSTRAINT cat_tipoProblema_pkey PRIMARY KEY (int_idTipoProblematica);


--
-- TOC entry 2481 (class 2606 OID 109973)
-- Name: cat_tipoServiciosUP_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_tipoServiciosUP
    ADD CONSTRAINT cat_tipoServiciosUP_pkey PRIMARY KEY (int_idTipoServicios);


--
-- TOC entry 2511 (class 2606 OID 111043)
-- Name: cat_unidadMedida_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_unidadMedida
    ADD CONSTRAINT cat_unidadMedida_pkey PRIMARY KEY (int_idUnidadMedida);


--
-- TOC entry 2497 (class 2606 OID 110065)
-- Name: cat_vialidadAgricola_pkey; Type: CONSTRAINT; Schema: general; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY cat_vialidadAgricola
    ADD CONSTRAINT cat_vialidadAgricola_pkey PRIMARY KEY (int_idVialidadAgricola);


SET search_path = registro_productor, pg_catalog;

--
-- TOC entry 2561 (class 2606 OID 110610)
-- Name: tbl_apicola_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_apicola
    ADD CONSTRAINT tbl_apicola_pkey PRIMARY KEY (int_idApicola);


--
-- TOC entry 2457 (class 2606 OID 109777)
-- Name: tbl_asociacionProductor_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_asociacionProductor
    ADD CONSTRAINT tbl_asociacionProductor_pkey PRIMARY KEY (int_idAsociacionProductor);


--
-- TOC entry 2527 (class 2606 OID 110367)
-- Name: tbl_certificacion_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_certificacion
    ADD CONSTRAINT tbl_certificacion_pkey PRIMARY KEY (int_idcertificacion);


--
-- TOC entry 2521 (class 2606 OID 111065)
-- Name: tbl_cosechado_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_cosechado
    ADD CONSTRAINT tbl_cosechado_pkey PRIMARY KEY (int_idCosechado);


--
-- TOC entry 2523 (class 2606 OID 110285)
-- Name: tbl_destinoCosechado_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_destinoCosechado
    ADD CONSTRAINT tbl_destinoCosechado_pkey PRIMARY KEY (int_iddestinoCosechado);


--
-- TOC entry 2577 (class 2606 OID 110797)
-- Name: tbl_destinoIntensionSiembra_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_destinoIntensionSiembra
    ADD CONSTRAINT tbl_destinoIntensionSiembra_pkey PRIMARY KEY (int_idDestinoIntensionSiembra);


--
-- TOC entry 2519 (class 2606 OID 111077)
-- Name: tbl_destinoSiembra_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_destinoSiembra
    ADD CONSTRAINT tbl_destinoSiembra_pkey PRIMARY KEY (int_idDestinoSiembra);


--
-- TOC entry 2581 (class 2606 OID 110823)
-- Name: tbl_detallePecuario_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_detallePecuario
    ADD CONSTRAINT tbl_detallePecuario_pkey PRIMARY KEY (int_idDetallePecuario);


--
-- TOC entry 2589 (class 2606 OID 110942)
-- Name: tbl_detallePlanSanitario_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_detallePlanSanitario
    ADD CONSTRAINT tbl_detallePlanSanitario_pkey PRIMARY KEY (int_idDetallePlanSanitario);


--
-- TOC entry 2553 (class 2606 OID 110559)
-- Name: tbl_detalleSectorApicola_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_detalleSectorApicola
    ADD CONSTRAINT tbl_detalleSectorApicola_pkey PRIMARY KEY (int_idDetalleSectorApicola);


--
-- TOC entry 2567 (class 2606 OID 110694)
-- Name: tbl_edificaciones_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_edificaciones
    ADD CONSTRAINT tbl_edificaciones_pkey PRIMARY KEY (int_idEdificaciones);


--
-- TOC entry 2569 (class 2606 OID 110712)
-- Name: tbl_idInstalaciones_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_idInstalaciones
    ADD CONSTRAINT tbl_idInstalaciones_pkey PRIMARY KEY (int_idInstalaciones);


--
-- TOC entry 2469 (class 2606 OID 109875)
-- Name: tbl_infoAdicional_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_infoAdicional
    ADD CONSTRAINT tbl_infoAdicional_pkey PRIMARY KEY (int_idInfoAdicional);


--
-- TOC entry 2451 (class 2606 OID 109737)
-- Name: tbl_integranteJuridico_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_integranteJuridico
    ADD CONSTRAINT tbl_integranteJuridico_pkey PRIMARY KEY (int_idIntegranteJuridico);


--
-- TOC entry 2461 (class 2606 OID 109815)
-- Name: tbl_integrantesOrganizacionPopular_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_integrantesOrganizacionPopular
    ADD CONSTRAINT tbl_integrantesOrganizacionPopular_pkey PRIMARY KEY (int_idIntegranteOrganizacionPopular);


--
-- TOC entry 2515 (class 2606 OID 110774)
-- Name: tbl_intensionSiembra_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_intensionSiembra
    ADD CONSTRAINT tbl_intensionSiembra_pkey PRIMARY KEY (int_idIntensionSiembra);


--
-- TOC entry 2493 (class 2606 OID 110026)
-- Name: tbl_maquinaria_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_maquinaria
    ADD CONSTRAINT tbl_maquinaria_pkey PRIMARY KEY (int_idMaquinaria);


--
-- TOC entry 2585 (class 2606 OID 110894)
-- Name: tbl_pecuarioComercializacion_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_pecuarioComercializacion
    ADD CONSTRAINT tbl_pecuarioComercializacion_pkey PRIMARY KEY (int_idPecuarioComercializacion);


--
-- TOC entry 2547 (class 2606 OID 110906)
-- Name: tbl_pecuarioDestino_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_pecuarioDestino
    ADD CONSTRAINT tbl_pecuarioDestino_pkey PRIMARY KEY (int_idPecuarioDestino);


--
-- TOC entry 2439 (class 2606 OID 109695)
-- Name: tbl_persona_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_persona
    ADD CONSTRAINT tbl_persona_pkey PRIMARY KEY (int_idPersona);


--
-- TOC entry 2495 (class 2606 OID 110044)
-- Name: tbl_problematica_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_problematica
    ADD CONSTRAINT tbl_problematica_pkey PRIMARY KEY (int_idProblematicaUP);


--
-- TOC entry 2563 (class 2606 OID 110633)
-- Name: tbl_prodColmena_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_prodColmena
    ADD CONSTRAINT tbl_prodColmena_pkey PRIMARY KEY (int_idProdColmena);


--
-- TOC entry 2551 (class 2606 OID 110546)
-- Name: tbl_prodHuevos_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_prodHuevos
    ADD CONSTRAINT tbl_prodHuevos_pkey PRIMARY KEY (int_idProdHuevos);


--
-- TOC entry 2525 (class 2606 OID 110308)
-- Name: tbl_renovacion_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_renovacion
    ADD CONSTRAINT tbl_renovacion_pkey PRIMARY KEY (int_idrenovacion);


--
-- TOC entry 2545 (class 2606 OID 110964)
-- Name: tbl_sectorAcuicola_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_sectorAcuicola
    ADD CONSTRAINT tbl_sectorAcuicola_pkey PRIMARY KEY (int_idSectorAcuicola);


--
-- TOC entry 2549 (class 2606 OID 110528)
-- Name: tbl_sectorPecuario_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_sectorPecuario
    ADD CONSTRAINT tbl_sectorPecuario_pkey PRIMARY KEY (int_idSectorPecuario);


--
-- TOC entry 2513 (class 2606 OID 111084)
-- Name: tbl_sectorVegetal_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_sectorVegetal
    ADD CONSTRAINT tbl_sectorVegetal_pkey PRIMARY KEY (int_idVegetal);


--
-- TOC entry 2579 (class 2606 OID 110815)
-- Name: tbl_seguimientoAdmin_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_seguimientoAdmin
    ADD CONSTRAINT tbl_seguimientoAdmin_pkey PRIMARY KEY (int_idSeguimientoAdmin);


--
-- TOC entry 2517 (class 2606 OID 110220)
-- Name: tbl_sembrado_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_sembrado
    ADD CONSTRAINT tbl_sembrado_pkey PRIMARY KEY (int_idSembrado);


--
-- TOC entry 2465 (class 2606 OID 109849)
-- Name: tbl_solicitudRegistro_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_solicitudRegistro
    ADD CONSTRAINT tbl_solicitudRegistro_pkey PRIMARY KEY (int_idSolicitudRegistro);


--
-- TOC entry 2573 (class 2606 OID 110741)
-- Name: tbl_tipoEmpresaUP_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_tipoEmpresaUP
    ADD CONSTRAINT tbl_tipoEmpresaUP_pkey PRIMARY KEY (int_idTipoEmpresaUP);


--
-- TOC entry 2477 (class 2606 OID 109935)
-- Name: tbl_unidadProduccion_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_unidadProduccion
    ADD CONSTRAINT tbl_unidadProduccion_pkey PRIMARY KEY (int_idUnidadProduccion);


--
-- TOC entry 2473 (class 2606 OID 109906)
-- Name: tbl_usuarioProductor_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_usuarioProductor
    ADD CONSTRAINT tbl_usuarioProductor_pkey PRIMARY KEY (int_idUsuarioProductor);


--
-- TOC entry 2565 (class 2606 OID 110651)
-- Name: tbl_usuarioSistema_pkey; Type: CONSTRAINT; Schema: registro_productor; Owner: gperez; Tablespace: 
--

ALTER TABLE ONLY tbl_usuarioSistema
    ADD CONSTRAINT tbl_usuarioSistema_pkey PRIMARY KEY (int_idUsuarioSistema);


SET search_path = general, pg_catalog;

--
-- TOC entry 2599 (class 2606 OID 111095)
-- Name: cat_asociacionesAgricolas_int_tipoOrganizacion_fkey; Type: FK CONSTRAINT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_asociacionesAgricolas
    ADD CONSTRAINT cat_asociacionesAgricolas_int_tipoOrganizacion_fkey FOREIGN KEY (int_tipoOrganizacion) REFERENCES cat_tipoOrganizacion(int_idTipoOrganizacion);


--
-- TOC entry 2642 (class 2606 OID 111107)
-- Name: cat_clasificacionRubroPecuario_int_idrubroPecuario_fkey; Type: FK CONSTRAINT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_clasificacionRubroPecuario
    ADD CONSTRAINT cat_clasificacionRubroPecuario_int_idrubroPecuario_fkey FOREIGN KEY (int_idrubroPecuario) REFERENCES cat_rubroPecuario(int_idrubroPecuario);


--
-- TOC entry 2604 (class 2606 OID 109834)
-- Name: cat_comunidadIndigena_int_idPueblosIndigenas_fkey; Type: FK CONSTRAINT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_comunidadIndigena
    ADD CONSTRAINT cat_comunidadIndigena_int_idPueblosIndigenas_fkey FOREIGN KEY (int_idPueblosIndigenas) REFERENCES cat_pueblosIndigenas(int_idPuebloIndigena);


--
-- TOC entry 2673 (class 2606 OID 110930)
-- Name: cat_planSanitarioRubro_int_idPlanSanitario_fkey; Type: FK CONSTRAINT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_planSanitarioRubro
    ADD CONSTRAINT cat_planSanitarioRubro_int_idPlanSanitario_fkey FOREIGN KEY (int_idPlanSanitario) REFERENCES cat_planSanitario(int_idPlanSanitario);


--
-- TOC entry 2672 (class 2606 OID 110925)
-- Name: cat_planSanitarioRubro_int_idRubroPecuario_fkey; Type: FK CONSTRAINT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_planSanitarioRubro
    ADD CONSTRAINT cat_planSanitarioRubro_int_idRubroPecuario_fkey FOREIGN KEY (int_idRubroPecuario) REFERENCES cat_rubroPecuario(int_idrubroPecuario);


--
-- TOC entry 2669 (class 2606 OID 110882)
-- Name: cat_rubroComercializacion_int_idComercializacion_fkey; Type: FK CONSTRAINT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_rubroComercializacion
    ADD CONSTRAINT cat_rubroComercializacion_int_idComercializacion_fkey FOREIGN KEY (int_idComercializacion) REFERENCES cat_comercializacion(int_idcomercializacion);


--
-- TOC entry 2668 (class 2606 OID 110877)
-- Name: cat_rubroComercializacion_int_idRubroPecuario_fkey; Type: FK CONSTRAINT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_rubroComercializacion
    ADD CONSTRAINT cat_rubroComercializacion_int_idRubroPecuario_fkey FOREIGN KEY (int_idRubroPecuario) REFERENCES cat_rubroPecuario(int_idrubroPecuario);


--
-- TOC entry 2641 (class 2606 OID 110442)
-- Name: cat_rubroPecuario_int_idsubSectorPecuario_fkey; Type: FK CONSTRAINT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_rubroPecuario
    ADD CONSTRAINT cat_rubroPecuario_int_idsubSectorPecuario_fkey FOREIGN KEY (int_idsubSectorPecuario) REFERENCES cat_subSectorPecuario(int_idsubSectorPecuario);


--
-- TOC entry 2617 (class 2606 OID 111102)
-- Name: cat_tipoMaquinariaEquipos_int_idClasificacionMaquinaria_fkey; Type: FK CONSTRAINT; Schema: general; Owner: gperez
--

ALTER TABLE ONLY cat_tipoMaquinariaEquipos
    ADD CONSTRAINT cat_tipoMaquinariaEquipos_int_idClasificacionMaquinaria_fkey FOREIGN KEY (int_idClasificacionMaquinaria) REFERENCES cat_clasificacionMaquinaria(int_idClasificacionMaquinaria);


SET search_path = registro_productor, pg_catalog;

--
-- TOC entry 2650 (class 2606 OID 110611)
-- Name: tbl_apicola_int_idClasificacionPecuario_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_apicola
    ADD CONSTRAINT tbl_apicola_int_idClasificacionPecuario_fkey FOREIGN KEY (int_idClasificacionPecuario) REFERENCES general.cat_clasificacionRubroPecuario(int_idclarificacionPecuario);


--
-- TOC entry 2651 (class 2606 OID 110621)
-- Name: tbl_apicola_int_iddetalleSectorApicola_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_apicola
    ADD CONSTRAINT tbl_apicola_int_iddetalleSectorApicola_fkey FOREIGN KEY (int_iddetalleSectorApicola) REFERENCES tbl_detalleSectorApicola(int_idDetalleSectorApicola);


--
-- TOC entry 2600 (class 2606 OID 109778)
-- Name: tbl_asociacionProductor_int_idAsociacion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_asociacionProductor
    ADD CONSTRAINT tbl_asociacionProductor_int_idAsociacion_fkey FOREIGN KEY (int_idAsociacion) REFERENCES general.cat_asociacionesAgricolas(int_idAsociaciones);


--
-- TOC entry 2601 (class 2606 OID 109783)
-- Name: tbl_asociacionProductor_int_idPersona_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_asociacionProductor
    ADD CONSTRAINT tbl_asociacionProductor_int_idPersona_fkey FOREIGN KEY (int_idPersona) REFERENCES tbl_persona(int_idPersona);


--
-- TOC entry 2640 (class 2606 OID 111071)
-- Name: tbl_certificacion_int_idCosechado_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_certificacion
    ADD CONSTRAINT tbl_certificacion_int_idCosechado_fkey FOREIGN KEY (int_idCosechado) REFERENCES tbl_cosechado(int_idCosechado);


--
-- TOC entry 2639 (class 2606 OID 110388)
-- Name: tbl_certificacion_int_idDestinoCosechado_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_certificacion
    ADD CONSTRAINT tbl_certificacion_int_idDestinoCosechado_fkey FOREIGN KEY (int_idDestinoCosechado) REFERENCES tbl_destinoCosechado(int_iddestinoCosechado);


--
-- TOC entry 2638 (class 2606 OID 110368)
-- Name: tbl_certificacion_int_idSiembra_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_certificacion
    ADD CONSTRAINT tbl_certificacion_int_idSiembra_fkey FOREIGN KEY (int_idSiembra) REFERENCES tbl_sembrado(int_idSembrado);


--
-- TOC entry 2634 (class 2606 OID 111059)
-- Name: tbl_cosechado_int_idRubro_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_cosechado
    ADD CONSTRAINT tbl_cosechado_int_idRubro_fkey FOREIGN KEY (int_idRubro) REFERENCES general.cat_rubro(int_idRubro);


--
-- TOC entry 2635 (class 2606 OID 111032)
-- Name: tbl_destinoCosechado_int_idTipoDestino_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_destinoCosechado
    ADD CONSTRAINT tbl_destinoCosechado_int_idTipoDestino_fkey FOREIGN KEY (int_idTipoDestino) REFERENCES general.cat_tipoDestino(int_idTipoDestino);


--
-- TOC entry 2636 (class 2606 OID 111049)
-- Name: tbl_destinoCosechado_int_idUnidadMedida_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_destinoCosechado
    ADD CONSTRAINT tbl_destinoCosechado_int_idUnidadMedida_fkey FOREIGN KEY (int_idUnidadMedida) REFERENCES general.cat_unidadMedida(int_idUnidadMedida);


--
-- TOC entry 2661 (class 2606 OID 110798)
-- Name: tbl_destinoIntensionSiembra_int_idIntensionSiembra_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_destinoIntensionSiembra
    ADD CONSTRAINT tbl_destinoIntensionSiembra_int_idIntensionSiembra_fkey FOREIGN KEY (int_idIntensionSiembra) REFERENCES tbl_intensionSiembra(int_idIntensionSiembra);


--
-- TOC entry 2662 (class 2606 OID 111044)
-- Name: tbl_destinoIntensionSiembra_int_idUnidadMedida_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_destinoIntensionSiembra
    ADD CONSTRAINT tbl_destinoIntensionSiembra_int_idUnidadMedida_fkey FOREIGN KEY (int_idUnidadMedida) REFERENCES general.cat_unidadMedida(int_idUnidadMedida);


--
-- TOC entry 2633 (class 2606 OID 111078)
-- Name: tbl_destinoSiembra_int_idDestinoSiembra_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_destinoSiembra
    ADD CONSTRAINT tbl_destinoSiembra_int_idDestinoSiembra_fkey FOREIGN KEY (int_idDestinoSiembra) REFERENCES tbl_destinoSiembra(int_idDestinoSiembra);


--
-- TOC entry 2632 (class 2606 OID 111054)
-- Name: tbl_destinoSiembra_int_idUnidadMedida_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_destinoSiembra
    ADD CONSTRAINT tbl_destinoSiembra_int_idUnidadMedida_fkey FOREIGN KEY (int_idUnidadMedida) REFERENCES general.cat_unidadMedida(int_idUnidadMedida);


--
-- TOC entry 2663 (class 2606 OID 110824)
-- Name: tbl_detallePecuario_int_idModalidadProduccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_detallePecuario
    ADD CONSTRAINT tbl_detallePecuario_int_idModalidadProduccion_fkey FOREIGN KEY (int_idModalidadProduccion) REFERENCES general.cat_modalidadProduccion(int_idModalidadProduccion);


--
-- TOC entry 2667 (class 2606 OID 111009)
-- Name: tbl_detallePecuario_int_idModoOrdenio_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_detallePecuario
    ADD CONSTRAINT tbl_detallePecuario_int_idModoOrdenio_fkey FOREIGN KEY (int_idModoOrdenio) REFERENCES general.cat_modoOrdenio(int_idmodoOrdenio);


--
-- TOC entry 2664 (class 2606 OID 110829)
-- Name: tbl_detallePecuario_int_idTipoExplotacion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_detallePecuario
    ADD CONSTRAINT tbl_detallePecuario_int_idTipoExplotacion_fkey FOREIGN KEY (int_idTipoExplotacion) REFERENCES general.cat_tipoExplotacion(int_idTipoExplotacion);


--
-- TOC entry 2665 (class 2606 OID 110834)
-- Name: tbl_detallePecuario_int_idTipoOrdenio_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_detallePecuario
    ADD CONSTRAINT tbl_detallePecuario_int_idTipoOrdenio_fkey FOREIGN KEY (int_idTipoOrdenio) REFERENCES general.cat_tipoOrdenio(int_idtipoOrdenio);


--
-- TOC entry 2666 (class 2606 OID 110854)
-- Name: tbl_detallePecuario_int_idUnidadProduccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_detallePecuario
    ADD CONSTRAINT tbl_detallePecuario_int_idUnidadProduccion_fkey FOREIGN KEY (int_idUnidadProduccion) REFERENCES tbl_unidadProduccion(int_idUnidadProduccion);


--
-- TOC entry 2675 (class 2606 OID 110948)
-- Name: tbl_detallePlanSanitario_int_idDetallePecuario_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_detallePlanSanitario
    ADD CONSTRAINT tbl_detallePlanSanitario_int_idDetallePecuario_fkey FOREIGN KEY (int_idDetallePecuario) REFERENCES tbl_detallePecuario(int_idDetallePecuario);


--
-- TOC entry 2674 (class 2606 OID 110943)
-- Name: tbl_detallePlanSanitario_int_idPlanSanitarioRubro_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_detallePlanSanitario
    ADD CONSTRAINT tbl_detallePlanSanitario_int_idPlanSanitarioRubro_fkey FOREIGN KEY (int_idPlanSanitarioRubro) REFERENCES general.cat_planSanitarioRubro(int_idPlanSanitarioRubro);


--
-- TOC entry 2649 (class 2606 OID 110560)
-- Name: tbl_detalleSectorApicola_int_idUnidadProduccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_detalleSectorApicola
    ADD CONSTRAINT tbl_detalleSectorApicola_int_idUnidadProduccion_fkey FOREIGN KEY (int_idUnidadProduccion) REFERENCES tbl_unidadProduccion(int_idUnidadProduccion);


--
-- TOC entry 2655 (class 2606 OID 110695)
-- Name: tbl_edificaciones_int_idTipoEdificaciones_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_edificaciones
    ADD CONSTRAINT tbl_edificaciones_int_idTipoEdificaciones_fkey FOREIGN KEY (int_idTipoEdificaciones) REFERENCES general.cat_edificaciones(int_idEdificaciones);


--
-- TOC entry 2656 (class 2606 OID 110700)
-- Name: tbl_edificaciones_int_idUnidadProduccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_edificaciones
    ADD CONSTRAINT tbl_edificaciones_int_idUnidadProduccion_fkey FOREIGN KEY (int_idUnidadProduccion) REFERENCES tbl_unidadProduccion(int_idUnidadProduccion);


--
-- TOC entry 2657 (class 2606 OID 110713)
-- Name: tbl_idInstalaciones_int_idTipoInstalaciones_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_idInstalaciones
    ADD CONSTRAINT tbl_idInstalaciones_int_idTipoInstalaciones_fkey FOREIGN KEY (int_idTipoInstalaciones) REFERENCES general.cat_instalaciones(int_idInstalaciones);


--
-- TOC entry 2658 (class 2606 OID 110718)
-- Name: tbl_idInstalaciones_int_idUnidadProduccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_idInstalaciones
    ADD CONSTRAINT tbl_idInstalaciones_int_idUnidadProduccion_fkey FOREIGN KEY (int_idUnidadProduccion) REFERENCES tbl_unidadProduccion(int_idUnidadProduccion);


--
-- TOC entry 2609 (class 2606 OID 109876)
-- Name: tbl_infoAdicional_int_idComunidadIndigena_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_infoAdicional
    ADD CONSTRAINT tbl_infoAdicional_int_idComunidadIndigena_fkey FOREIGN KEY (int_idComunidadIndigena) REFERENCES general.cat_comunidadIndigena(int_idComunidadIndigena);


--
-- TOC entry 2610 (class 2606 OID 110958)
-- Name: tbl_infoAdicional_int_idSolicitudRegistro_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_infoAdicional
    ADD CONSTRAINT tbl_infoAdicional_int_idSolicitudRegistro_fkey FOREIGN KEY (int_idSolicitudRegistro) REFERENCES tbl_solicitudRegistro(int_idSolicitudRegistro);


--
-- TOC entry 2598 (class 2606 OID 109743)
-- Name: tbl_integranteJuridico_int_idempresa_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_integranteJuridico
    ADD CONSTRAINT tbl_integranteJuridico_int_idempresa_fkey FOREIGN KEY (int_idempresa) REFERENCES tbl_persona(int_idPersona);


--
-- TOC entry 2597 (class 2606 OID 109738)
-- Name: tbl_integranteJuridico_int_idpersona_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_integranteJuridico
    ADD CONSTRAINT tbl_integranteJuridico_int_idpersona_fkey FOREIGN KEY (int_idpersona) REFERENCES tbl_persona(int_idPersona);


--
-- TOC entry 2602 (class 2606 OID 109816)
-- Name: tbl_integrantesOrganizacionPopular_int_idpersona_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_integrantesOrganizacionPopular
    ADD CONSTRAINT tbl_integrantesOrganizacionPopular_int_idpersona_fkey FOREIGN KEY (int_idpersona) REFERENCES tbl_persona(int_idPersona);


--
-- TOC entry 2603 (class 2606 OID 109821)
-- Name: tbl_integrantesOrganizacionPopular_int_organizacionPopular_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_integrantesOrganizacionPopular
    ADD CONSTRAINT tbl_integrantesOrganizacionPopular_int_organizacionPopular_fkey FOREIGN KEY (int_organizacionPopular) REFERENCES general.cat_organizacionPopular(int_idOrganizacionPopular);


--
-- TOC entry 2627 (class 2606 OID 111018)
-- Name: tbl_intensionSiembra_int_idFaseSiembra_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_intensionSiembra
    ADD CONSTRAINT tbl_intensionSiembra_int_idFaseSiembra_fkey FOREIGN KEY (int_idFaseSiembra) REFERENCES general.cat_faseSiembra(int_idpreparacionTierra);


--
-- TOC entry 2625 (class 2606 OID 110780)
-- Name: tbl_intensionSiembra_int_idRubro_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_intensionSiembra
    ADD CONSTRAINT tbl_intensionSiembra_int_idRubro_fkey FOREIGN KEY (int_idRubro) REFERENCES general.cat_rubro(int_idRubro);


--
-- TOC entry 2626 (class 2606 OID 110953)
-- Name: tbl_intensionSiembra_int_idSembrado_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_intensionSiembra
    ADD CONSTRAINT tbl_intensionSiembra_int_idSembrado_fkey FOREIGN KEY (int_idSembrado) REFERENCES tbl_sembrado(int_idSembrado);


--
-- TOC entry 2619 (class 2606 OID 110032)
-- Name: tbl_maquinaria_int_idTipoMaquinaria_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_maquinaria
    ADD CONSTRAINT tbl_maquinaria_int_idTipoMaquinaria_fkey FOREIGN KEY (int_idTipoMaquinaria) REFERENCES general.cat_tipoMaquinariaEquipos(int_idTipoMaquinaria);


--
-- TOC entry 2618 (class 2606 OID 110027)
-- Name: tbl_maquinaria_int_idunidadProduccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_maquinaria
    ADD CONSTRAINT tbl_maquinaria_int_idunidadProduccion_fkey FOREIGN KEY (int_idunidadProduccion) REFERENCES tbl_unidadProduccion(int_idUnidadProduccion);


--
-- TOC entry 2671 (class 2606 OID 110900)
-- Name: tbl_pecuarioComercializacion_int_idRubroComercializacion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_pecuarioComercializacion
    ADD CONSTRAINT tbl_pecuarioComercializacion_int_idRubroComercializacion_fkey FOREIGN KEY (int_idRubroComercializacion) REFERENCES general.cat_rubroComercializacion(int_idRubroComercializacion);


--
-- TOC entry 2670 (class 2606 OID 110895)
-- Name: tbl_pecuarioComercializacion_int_idSectorPecuario_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_pecuarioComercializacion
    ADD CONSTRAINT tbl_pecuarioComercializacion_int_idSectorPecuario_fkey FOREIGN KEY (int_idSectorPecuario) REFERENCES tbl_sectorPecuario(int_idSectorPecuario);


--
-- TOC entry 2644 (class 2606 OID 110907)
-- Name: tbl_pecuarioDestino_int_idDestinoPecuario_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_pecuarioDestino
    ADD CONSTRAINT tbl_pecuarioDestino_int_idDestinoPecuario_fkey FOREIGN KEY (int_idDestinoPecuario) REFERENCES general.cat_destinoPecuario(int_iddestinoPecuario);


--
-- TOC entry 2645 (class 2606 OID 110912)
-- Name: tbl_pecuarioDestino_int_idSectorPecuario_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_pecuarioDestino
    ADD CONSTRAINT tbl_pecuarioDestino_int_idSectorPecuario_fkey FOREIGN KEY (int_idSectorPecuario) REFERENCES tbl_sectorPecuario(int_idSectorPecuario);


--
-- TOC entry 2593 (class 2606 OID 109710)
-- Name: tbl_persona_int_estadoCivil_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_persona
    ADD CONSTRAINT tbl_persona_int_estadoCivil_fkey FOREIGN KEY (int_estadoCivil) REFERENCES general.cat_estadoCivil(int_idEstadoCivil);


--
-- TOC entry 2592 (class 2606 OID 109689)
-- Name: tbl_persona_int_generoPersona_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_persona
    ADD CONSTRAINT tbl_persona_int_generoPersona_fkey FOREIGN KEY (int_generoPersona) REFERENCES general.cat_generoPersona(int_idGeneroPersona);


--
-- TOC entry 2594 (class 2606 OID 109715)
-- Name: tbl_persona_int_gradoIntruccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_persona
    ADD CONSTRAINT tbl_persona_int_gradoIntruccion_fkey FOREIGN KEY (int_gradoIntruccion) REFERENCES general.cat_gradoIntruccion(int_idGradoIntruccion);


--
-- TOC entry 2596 (class 2606 OID 109725)
-- Name: tbl_persona_int_puebloIndigena_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_persona
    ADD CONSTRAINT tbl_persona_int_puebloIndigena_fkey FOREIGN KEY (int_puebloIndigena) REFERENCES general.cat_pueblosIndigenas(int_idPuebloIndigena);


--
-- TOC entry 2595 (class 2606 OID 109720)
-- Name: tbl_persona_int_tipoDocumentoIdentidad_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_persona
    ADD CONSTRAINT tbl_persona_int_tipoDocumentoIdentidad_fkey FOREIGN KEY (int_tipoDocumentoIdentidad) REFERENCES general.cat_documentoIdentidad(int_idDocumentoIdentidad);


--
-- TOC entry 2621 (class 2606 OID 110050)
-- Name: tbl_problematica_int_idTipoProblematica_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_problematica
    ADD CONSTRAINT tbl_problematica_int_idTipoProblematica_fkey FOREIGN KEY (int_idTipoProblematica) REFERENCES general.cat_tipoProblema(int_idTipoProblematica);


--
-- TOC entry 2620 (class 2606 OID 110045)
-- Name: tbl_problematica_int_idUnidadProduccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_problematica
    ADD CONSTRAINT tbl_problematica_int_idUnidadProduccion_fkey FOREIGN KEY (int_idUnidadProduccion) REFERENCES tbl_unidadProduccion(int_idUnidadProduccion);


--
-- TOC entry 2653 (class 2606 OID 110639)
-- Name: tbl_prodColmena_int_detalleSectorApicola_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_prodColmena
    ADD CONSTRAINT tbl_prodColmena_int_detalleSectorApicola_fkey FOREIGN KEY (int_detalleSectorApicola) REFERENCES tbl_detalleSectorApicola(int_idDetalleSectorApicola);


--
-- TOC entry 2652 (class 2606 OID 110634)
-- Name: tbl_prodColmena_int_idTipoColmena_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_prodColmena
    ADD CONSTRAINT tbl_prodColmena_int_idTipoColmena_fkey FOREIGN KEY (int_idTipoColmena) REFERENCES general.cat_tipoColmena(int_idtipoColmena);


--
-- TOC entry 2648 (class 2606 OID 110678)
-- Name: tbl_prodHuevos_int_idSectorPecuario_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_prodHuevos
    ADD CONSTRAINT tbl_prodHuevos_int_idSectorPecuario_fkey FOREIGN KEY (int_idSectorPecuario) REFERENCES tbl_sectorPecuario(int_idSectorPecuario);


--
-- TOC entry 2637 (class 2606 OID 110309)
-- Name: tbl_renovacion_int_idSiembra_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_renovacion
    ADD CONSTRAINT tbl_renovacion_int_idSiembra_fkey FOREIGN KEY (int_idSiembra) REFERENCES tbl_sembrado(int_idSembrado);


--
-- TOC entry 2643 (class 2606 OID 110965)
-- Name: tbl_sectorAcuicola_int_idUnidadProduccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sectorAcuicola
    ADD CONSTRAINT tbl_sectorAcuicola_int_idUnidadProduccion_fkey FOREIGN KEY (int_idUnidadProduccion) REFERENCES tbl_unidadProduccion(int_idUnidadProduccion);


--
-- TOC entry 2646 (class 2606 OID 110529)
-- Name: tbl_sectorPecuario_int_idClasificacionPecuario_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sectorPecuario
    ADD CONSTRAINT tbl_sectorPecuario_int_idClasificacionPecuario_fkey FOREIGN KEY (int_idClasificacionPecuario) REFERENCES general.cat_clasificacionRubroPecuario(int_idclarificacionPecuario);


--
-- TOC entry 2647 (class 2606 OID 110864)
-- Name: tbl_sectorPecuario_int_idUnidadProduccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sectorPecuario
    ADD CONSTRAINT tbl_sectorPecuario_int_idUnidadProduccion_fkey FOREIGN KEY (int_idUnidadProduccion) REFERENCES tbl_unidadProduccion(int_idUnidadProduccion);


--
-- TOC entry 2623 (class 2606 OID 111025)
-- Name: tbl_sectorVegetal_int_idTipoAmbiente_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sectorVegetal
    ADD CONSTRAINT tbl_sectorVegetal_int_idTipoAmbiente_fkey FOREIGN KEY (int_idTipoAmbiente) REFERENCES general.cat_tipoAmbiente(int_idTipoAmbiente);


--
-- TOC entry 2622 (class 2606 OID 110768)
-- Name: tbl_sectorVegetal_int_idUnidadProduccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sectorVegetal
    ADD CONSTRAINT tbl_sectorVegetal_int_idUnidadProduccion_fkey FOREIGN KEY (int_idUnidadProduccion) REFERENCES tbl_unidadProduccion(int_idUnidadProduccion);


--
-- TOC entry 2624 (class 2606 OID 111085)
-- Name: tbl_sectorVegetal_int_idmetodoRiego_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sectorVegetal
    ADD CONSTRAINT tbl_sectorVegetal_int_idmetodoRiego_fkey FOREIGN KEY (int_idmetodoRiego) REFERENCES general.cat_metodoRiego(int_idmetodoRiego);


--
-- TOC entry 2629 (class 2606 OID 110236)
-- Name: tbl_sembrado_int_idEstatusSiembra_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sembrado
    ADD CONSTRAINT tbl_sembrado_int_idEstatusSiembra_fkey FOREIGN KEY (int_idEstatusSiembra) REFERENCES general.cat_estatusSiembra(int_idestatusSiembra);


--
-- TOC entry 2628 (class 2606 OID 110226)
-- Name: tbl_sembrado_int_idRubro_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sembrado
    ADD CONSTRAINT tbl_sembrado_int_idRubro_fkey FOREIGN KEY (int_idRubro) REFERENCES general.cat_rubro(int_idRubro);


--
-- TOC entry 2630 (class 2606 OID 111037)
-- Name: tbl_sembrado_int_idTipoDestino_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sembrado
    ADD CONSTRAINT tbl_sembrado_int_idTipoDestino_fkey FOREIGN KEY (int_idTipoDestino) REFERENCES general.cat_tipoDestino(int_idTipoDestino);


--
-- TOC entry 2631 (class 2606 OID 111090)
-- Name: tbl_sembrado_int_idVegetal_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_sembrado
    ADD CONSTRAINT tbl_sembrado_int_idVegetal_fkey FOREIGN KEY (int_idVegetal) REFERENCES tbl_sectorVegetal(int_idVegetal);


--
-- TOC entry 2606 (class 2606 OID 109863)
-- Name: tbl_solicitudRegistro_int_estatusRegistro_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_solicitudRegistro
    ADD CONSTRAINT tbl_solicitudRegistro_int_estatusRegistro_fkey FOREIGN KEY (int_estatusRegistro) REFERENCES general.cat_estatusRegistro(int_idEstatusRegistro);


--
-- TOC entry 2608 (class 2606 OID 110972)
-- Name: tbl_solicitudRegistro_int_idIdentificacionTierras_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_solicitudRegistro
    ADD CONSTRAINT tbl_solicitudRegistro_int_idIdentificacionTierras_fkey FOREIGN KEY (int_idIdentificacionTierras) REFERENCES general.cat_identificacionTierras(int_idIdentificacionTierras);


--
-- TOC entry 2607 (class 2606 OID 109894)
-- Name: tbl_solicitudRegistro_int_idInstitucionResponsable_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_solicitudRegistro
    ADD CONSTRAINT tbl_solicitudRegistro_int_idInstitucionResponsable_fkey FOREIGN KEY (int_idInstitucionResponsable) REFERENCES general.cat_institucionResponsable(int_idIntitucionResponsable);


--
-- TOC entry 2605 (class 2606 OID 109850)
-- Name: tbl_solicitudRegistro_int_idPersona_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_solicitudRegistro
    ADD CONSTRAINT tbl_solicitudRegistro_int_idPersona_fkey FOREIGN KEY (int_idPersona) REFERENCES tbl_persona(int_idPersona);


--
-- TOC entry 2659 (class 2606 OID 110742)
-- Name: tbl_tipoEmpresaUP_int_idTipoEmpresa_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_tipoEmpresaUP
    ADD CONSTRAINT tbl_tipoEmpresaUP_int_idTipoEmpresa_fkey FOREIGN KEY (int_idTipoEmpresa) REFERENCES general.cat_tipoEmpresaAgricola(int_idTipoEmpresa);


--
-- TOC entry 2660 (class 2606 OID 110747)
-- Name: tbl_tipoEmpresaUP_int_idUnidadProduccion_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_tipoEmpresaUP
    ADD CONSTRAINT tbl_tipoEmpresaUP_int_idUnidadProduccion_fkey FOREIGN KEY (int_idUnidadProduccion) REFERENCES tbl_unidadProduccion(int_idUnidadProduccion);


--
-- TOC entry 2616 (class 2606 OID 110763)
-- Name: tbl_unidadProduccion_int_idClasificacionUP_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_unidadProduccion
    ADD CONSTRAINT tbl_unidadProduccion_int_idClasificacionUP_fkey FOREIGN KEY (int_idClasificacionUP) REFERENCES general.cat_clasificacionUP(int_idClasificacionUP);


--
-- TOC entry 2615 (class 2606 OID 110087)
-- Name: tbl_unidadProduccion_int_idSolicitudRegistro_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_unidadProduccion
    ADD CONSTRAINT tbl_unidadProduccion_int_idSolicitudRegistro_fkey FOREIGN KEY (int_idSolicitudRegistro) REFERENCES tbl_solicitudRegistro(int_idSolicitudRegistro);


--
-- TOC entry 2613 (class 2606 OID 110067)
-- Name: tbl_unidadProduccion_int_idTipoServicios_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_unidadProduccion
    ADD CONSTRAINT tbl_unidadProduccion_int_idTipoServicios_fkey FOREIGN KEY (int_idTipoServicios) REFERENCES general.cat_tipoServiciosUP(int_idTipoServicios);


--
-- TOC entry 2614 (class 2606 OID 110072)
-- Name: tbl_unidadProduccion_int_idVialidadAgricola_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_unidadProduccion
    ADD CONSTRAINT tbl_unidadProduccion_int_idVialidadAgricola_fkey FOREIGN KEY (int_idVialidadAgricola) REFERENCES general.cat_vialidadAgricola(int_idVialidadAgricola);


--
-- TOC entry 2611 (class 2606 OID 109907)
-- Name: tbl_usuarioProductor_int_idPersona_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_usuarioProductor
    ADD CONSTRAINT tbl_usuarioProductor_int_idPersona_fkey FOREIGN KEY (int_idPersona) REFERENCES tbl_persona(int_idPersona);


--
-- TOC entry 2612 (class 2606 OID 109920)
-- Name: tbl_usuarioProductor_int_idRol_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_usuarioProductor
    ADD CONSTRAINT tbl_usuarioProductor_int_idRol_fkey FOREIGN KEY (int_idRol) REFERENCES general.cat_rolUsuario(int_idRol);


--
-- TOC entry 2654 (class 2606 OID 110652)
-- Name: tbl_usuarioSistema_int_idRol_fkey; Type: FK CONSTRAINT; Schema: registro_productor; Owner: gperez
--

ALTER TABLE ONLY tbl_usuarioSistema
    ADD CONSTRAINT tbl_usuarioSistema_int_idRol_fkey FOREIGN KEY (int_idRol) REFERENCES general.cat_rolUsuario(int_idRol);


--
-- TOC entry 2945 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-10-03 14:10:21 VET

--
-- PostgreSQL database dump complete
--

