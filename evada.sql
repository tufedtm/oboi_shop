--
-- PostgreSQL database dump
--

-- Dumped from database version 10.0
-- Dumped by pg_dump version 10.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO evada_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO evada_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO evada_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO evada_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO evada_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO evada_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO evada_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO evada_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO evada_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO evada_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO evada_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO evada_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: commodity_turnover_contractor; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE commodity_turnover_contractor (
    id integer NOT NULL,
    contractor_type boolean NOT NULL,
    first_name character varying(50) NOT NULL,
    company_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    patronymic character varying(50) NOT NULL,
    phone_number character varying(20) NOT NULL
);


ALTER TABLE commodity_turnover_contractor OWNER TO evada_user;

--
-- Name: commodity_turnover_contractor_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE commodity_turnover_contractor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commodity_turnover_contractor_id_seq OWNER TO evada_user;

--
-- Name: commodity_turnover_contractor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE commodity_turnover_contractor_id_seq OWNED BY commodity_turnover_contractor.id;


--
-- Name: commodity_turnover_purchasereturn; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE commodity_turnover_purchasereturn (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    selling_id integer NOT NULL
);


ALTER TABLE commodity_turnover_purchasereturn OWNER TO evada_user;

--
-- Name: commodity_turnover_purchasereturn_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE commodity_turnover_purchasereturn_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commodity_turnover_purchasereturn_id_seq OWNER TO evada_user;

--
-- Name: commodity_turnover_purchasereturn_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE commodity_turnover_purchasereturn_id_seq OWNED BY commodity_turnover_purchasereturn.id;


--
-- Name: commodity_turnover_purchasereturncontent; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE commodity_turnover_purchasereturncontent (
    id integer NOT NULL,
    count smallint NOT NULL,
    reason character varying(500) NOT NULL,
    purchase_returns_id integer NOT NULL,
    selling_content_id integer NOT NULL,
    CONSTRAINT commodity_turnover_purchasereturncontent_count_check CHECK ((count >= 0))
);


ALTER TABLE commodity_turnover_purchasereturncontent OWNER TO evada_user;

--
-- Name: commodity_turnover_purchasereturncontent_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE commodity_turnover_purchasereturncontent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commodity_turnover_purchasereturncontent_id_seq OWNER TO evada_user;

--
-- Name: commodity_turnover_purchasereturncontent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE commodity_turnover_purchasereturncontent_id_seq OWNED BY commodity_turnover_purchasereturncontent.id;


--
-- Name: commodity_turnover_receipt; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE commodity_turnover_receipt (
    id integer NOT NULL,
    date timestamp with time zone NOT NULL,
    shipper_id integer NOT NULL
);


ALTER TABLE commodity_turnover_receipt OWNER TO evada_user;

--
-- Name: commodity_turnover_receipt_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE commodity_turnover_receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commodity_turnover_receipt_id_seq OWNER TO evada_user;

--
-- Name: commodity_turnover_receipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE commodity_turnover_receipt_id_seq OWNED BY commodity_turnover_receipt.id;


--
-- Name: commodity_turnover_receiptcontent; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE commodity_turnover_receiptcontent (
    id integer NOT NULL,
    object_id integer NOT NULL,
    count smallint NOT NULL,
    price integer NOT NULL,
    content_type_id integer NOT NULL,
    receipt_id integer NOT NULL,
    CONSTRAINT commodity_turnover_receiptcontent_count_check CHECK ((count >= 0)),
    CONSTRAINT commodity_turnover_receiptcontent_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT commodity_turnover_receiptcontent_price_check CHECK ((price >= 0))
);


ALTER TABLE commodity_turnover_receiptcontent OWNER TO evada_user;

--
-- Name: commodity_turnover_receiptcontent_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE commodity_turnover_receiptcontent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commodity_turnover_receiptcontent_id_seq OWNER TO evada_user;

--
-- Name: commodity_turnover_receiptcontent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE commodity_turnover_receiptcontent_id_seq OWNED BY commodity_turnover_receiptcontent.id;


--
-- Name: commodity_turnover_selling; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE commodity_turnover_selling (
    id integer NOT NULL,
    date_create timestamp with time zone NOT NULL,
    date_paid timestamp with time zone,
    buyer_id integer NOT NULL,
    comment character varying(255) NOT NULL
);


ALTER TABLE commodity_turnover_selling OWNER TO evada_user;

--
-- Name: commodity_turnover_selling_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE commodity_turnover_selling_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commodity_turnover_selling_id_seq OWNER TO evada_user;

--
-- Name: commodity_turnover_selling_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE commodity_turnover_selling_id_seq OWNED BY commodity_turnover_selling.id;


--
-- Name: commodity_turnover_sellingcontent; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE commodity_turnover_sellingcontent (
    id integer NOT NULL,
    object_id integer NOT NULL,
    count smallint NOT NULL,
    price integer NOT NULL,
    sold_price integer NOT NULL,
    complement boolean NOT NULL,
    content_type_id integer NOT NULL,
    selling_order_id integer NOT NULL,
    pack boolean NOT NULL,
    wholesale boolean NOT NULL,
    CONSTRAINT commodity_turnover_sellingcontent_count_check CHECK ((count >= 0)),
    CONSTRAINT commodity_turnover_sellingcontent_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT commodity_turnover_sellingcontent_price_check CHECK ((price >= 0)),
    CONSTRAINT commodity_turnover_sellingcontent_sold_price_a617eed6_check CHECK ((sold_price >= 0))
);


ALTER TABLE commodity_turnover_sellingcontent OWNER TO evada_user;

--
-- Name: commodity_turnover_sellingcontent_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE commodity_turnover_sellingcontent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE commodity_turnover_sellingcontent_id_seq OWNER TO evada_user;

--
-- Name: commodity_turnover_sellingcontent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE commodity_turnover_sellingcontent_id_seq OWNED BY commodity_turnover_sellingcontent.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO evada_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO evada_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO evada_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO evada_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO evada_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO evada_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO evada_user;

--
-- Name: glue_brand; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE glue_brand (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE glue_brand OWNER TO evada_user;

--
-- Name: glue_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE glue_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE glue_brand_id_seq OWNER TO evada_user;

--
-- Name: glue_brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE glue_brand_id_seq OWNED BY glue_brand.id;


--
-- Name: glue_glue; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE glue_glue (
    id integer NOT NULL,
    weight smallint NOT NULL,
    retail_price smallint NOT NULL,
    count smallint NOT NULL,
    pack smallint NOT NULL,
    area smallint NOT NULL,
    brand_id integer NOT NULL,
    wholesale_price_item smallint,
    wholesale_price_pack smallint,
    warehouse_str character varying(255) NOT NULL,
    CONSTRAINT glue_glue_area_check CHECK ((area >= 0)),
    CONSTRAINT glue_glue_count_check CHECK ((count >= 0)),
    CONSTRAINT glue_glue_pack_check CHECK ((pack >= 0)),
    CONSTRAINT glue_glue_retail_price_check CHECK ((retail_price >= 0)),
    CONSTRAINT glue_glue_weight_check CHECK ((weight >= 0)),
    CONSTRAINT glue_glue_wholesale_price_item_check CHECK ((wholesale_price_item >= 0)),
    CONSTRAINT glue_glue_wholesale_price_pack_check CHECK ((wholesale_price_pack >= 0))
);


ALTER TABLE glue_glue OWNER TO evada_user;

--
-- Name: glue_glue_glue_type; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE glue_glue_glue_type (
    id integer NOT NULL,
    glue_id integer NOT NULL,
    gluetype_id integer NOT NULL
);


ALTER TABLE glue_glue_glue_type OWNER TO evada_user;

--
-- Name: glue_glue_glue_type_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE glue_glue_glue_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE glue_glue_glue_type_id_seq OWNER TO evada_user;

--
-- Name: glue_glue_glue_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE glue_glue_glue_type_id_seq OWNED BY glue_glue_glue_type.id;


--
-- Name: glue_glue_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE glue_glue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE glue_glue_id_seq OWNER TO evada_user;

--
-- Name: glue_glue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE glue_glue_id_seq OWNED BY glue_glue.id;


--
-- Name: glue_gluetype; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE glue_gluetype (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE glue_gluetype OWNER TO evada_user;

--
-- Name: glue_gluetype_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE glue_gluetype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE glue_gluetype_id_seq OWNER TO evada_user;

--
-- Name: glue_gluetype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE glue_gluetype_id_seq OWNED BY glue_gluetype.id;


--
-- Name: main_brand; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE main_brand (
    id integer NOT NULL,
    name character varying(100),
    short_name character varying(50) NOT NULL,
    country_of_origin character varying(2) NOT NULL,
    company_of_origin character varying(100) NOT NULL
);


ALTER TABLE main_brand OWNER TO evada_user;

--
-- Name: main_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE main_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_brand_id_seq OWNER TO evada_user;

--
-- Name: main_brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE main_brand_id_seq OWNED BY main_brand.id;


--
-- Name: main_theconsignment; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE main_theconsignment (
    id integer NOT NULL,
    the_consignment character varying(20) NOT NULL,
    retail_price integer NOT NULL,
    count smallint NOT NULL,
    stillage smallint,
    cell smallint,
    showcase boolean NOT NULL,
    vendor_code_id integer NOT NULL,
    wholesale_price_item smallint,
    wholesale_price_pack smallint,
    CONSTRAINT main_theconsignment_cell_check CHECK ((cell >= 0)),
    CONSTRAINT main_theconsignment_count_check CHECK ((count >= 0)),
    CONSTRAINT main_theconsignment_retail_price_check CHECK ((retail_price >= 0)),
    CONSTRAINT main_theconsignment_stillage_check CHECK ((stillage >= 0)),
    CONSTRAINT main_theconsignment_wholesale_price_item_check CHECK ((wholesale_price_item >= 0)),
    CONSTRAINT main_theconsignment_wholesale_price_pack_check CHECK ((wholesale_price_pack >= 0))
);


ALTER TABLE main_theconsignment OWNER TO evada_user;

--
-- Name: main_theconsignment_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE main_theconsignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_theconsignment_id_seq OWNER TO evada_user;

--
-- Name: main_theconsignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE main_theconsignment_id_seq OWNED BY main_theconsignment.id;


--
-- Name: main_vendorcode; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE main_vendorcode (
    id integer NOT NULL,
    vendor_code character varying(20) NOT NULL,
    width double precision NOT NULL,
    length double precision NOT NULL,
    discontinued boolean NOT NULL,
    pack smallint,
    rapport character varying(9) NOT NULL,
    rapport_type smallint,
    marking character varying(3) NOT NULL,
    basis_material smallint,
    covering_material smallint,
    moisture_resistance character varying(3),
    resistance_to_light smallint,
    gluing character varying(2) NOT NULL,
    removal smallint,
    brand_id integer,
    CONSTRAINT main_vendorcode_basis_material_check CHECK ((basis_material >= 0)),
    CONSTRAINT main_vendorcode_covering_material_check CHECK ((covering_material >= 0)),
    CONSTRAINT main_vendorcode_pack_check CHECK ((pack >= 0)),
    CONSTRAINT main_vendorcode_rapport_type_check CHECK ((rapport_type >= 0)),
    CONSTRAINT main_vendorcode_removal_check CHECK ((removal >= 0)),
    CONSTRAINT main_vendorcode_resistance_to_light_check CHECK ((resistance_to_light >= 0))
);


ALTER TABLE main_vendorcode OWNER TO evada_user;

--
-- Name: main_vendorcode_combination; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE main_vendorcode_combination (
    id integer NOT NULL,
    from_vendorcode_id integer NOT NULL,
    to_vendorcode_id integer NOT NULL
);


ALTER TABLE main_vendorcode_combination OWNER TO evada_user;

--
-- Name: main_vendorcode_combination_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE main_vendorcode_combination_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_vendorcode_combination_id_seq OWNER TO evada_user;

--
-- Name: main_vendorcode_combination_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE main_vendorcode_combination_id_seq OWNED BY main_vendorcode_combination.id;


--
-- Name: main_vendorcode_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE main_vendorcode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE main_vendorcode_id_seq OWNER TO evada_user;

--
-- Name: main_vendorcode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE main_vendorcode_id_seq OWNED BY main_vendorcode.id;


--
-- Name: photowp_photowp; Type: TABLE; Schema: public; Owner: evada_user
--

CREATE TABLE photowp_photowp (
    id integer NOT NULL,
    category smallint NOT NULL,
    name character varying(100) NOT NULL,
    vendor_code character varying(10) NOT NULL,
    sheet smallint NOT NULL,
    width smallint NOT NULL,
    height smallint NOT NULL,
    count smallint NOT NULL,
    retail_price integer NOT NULL,
    wholesale_price_item smallint,
    wholesale_price_pack smallint,
    CONSTRAINT photowp_photowp_category_check CHECK ((category >= 0)),
    CONSTRAINT photowp_photowp_count_check CHECK ((count >= 0)),
    CONSTRAINT photowp_photowp_height_check CHECK ((height >= 0)),
    CONSTRAINT photowp_photowp_retail_price_check CHECK ((retail_price >= 0)),
    CONSTRAINT photowp_photowp_sheet_check CHECK ((sheet >= 0)),
    CONSTRAINT photowp_photowp_wholesale_price_item_check CHECK ((wholesale_price_item >= 0)),
    CONSTRAINT photowp_photowp_wholesale_price_pack_check CHECK ((wholesale_price_pack >= 0)),
    CONSTRAINT photowp_photowp_width_check CHECK ((width >= 0))
);


ALTER TABLE photowp_photowp OWNER TO evada_user;

--
-- Name: photowp_photowp_id_seq; Type: SEQUENCE; Schema: public; Owner: evada_user
--

CREATE SEQUENCE photowp_photowp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE photowp_photowp_id_seq OWNER TO evada_user;

--
-- Name: photowp_photowp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: evada_user
--

ALTER SEQUENCE photowp_photowp_id_seq OWNED BY photowp_photowp.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: commodity_turnover_contractor id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_contractor ALTER COLUMN id SET DEFAULT nextval('commodity_turnover_contractor_id_seq'::regclass);


--
-- Name: commodity_turnover_purchasereturn id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_purchasereturn ALTER COLUMN id SET DEFAULT nextval('commodity_turnover_purchasereturn_id_seq'::regclass);


--
-- Name: commodity_turnover_purchasereturncontent id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_purchasereturncontent ALTER COLUMN id SET DEFAULT nextval('commodity_turnover_purchasereturncontent_id_seq'::regclass);


--
-- Name: commodity_turnover_receipt id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_receipt ALTER COLUMN id SET DEFAULT nextval('commodity_turnover_receipt_id_seq'::regclass);


--
-- Name: commodity_turnover_receiptcontent id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_receiptcontent ALTER COLUMN id SET DEFAULT nextval('commodity_turnover_receiptcontent_id_seq'::regclass);


--
-- Name: commodity_turnover_selling id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_selling ALTER COLUMN id SET DEFAULT nextval('commodity_turnover_selling_id_seq'::regclass);


--
-- Name: commodity_turnover_sellingcontent id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_sellingcontent ALTER COLUMN id SET DEFAULT nextval('commodity_turnover_sellingcontent_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: glue_brand id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_brand ALTER COLUMN id SET DEFAULT nextval('glue_brand_id_seq'::regclass);


--
-- Name: glue_glue id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_glue ALTER COLUMN id SET DEFAULT nextval('glue_glue_id_seq'::regclass);


--
-- Name: glue_glue_glue_type id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_glue_glue_type ALTER COLUMN id SET DEFAULT nextval('glue_glue_glue_type_id_seq'::regclass);


--
-- Name: glue_gluetype id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_gluetype ALTER COLUMN id SET DEFAULT nextval('glue_gluetype_id_seq'::regclass);


--
-- Name: main_brand id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_brand ALTER COLUMN id SET DEFAULT nextval('main_brand_id_seq'::regclass);


--
-- Name: main_theconsignment id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_theconsignment ALTER COLUMN id SET DEFAULT nextval('main_theconsignment_id_seq'::regclass);


--
-- Name: main_vendorcode id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_vendorcode ALTER COLUMN id SET DEFAULT nextval('main_vendorcode_id_seq'::regclass);


--
-- Name: main_vendorcode_combination id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_vendorcode_combination ALTER COLUMN id SET DEFAULT nextval('main_vendorcode_combination_id_seq'::regclass);


--
-- Name: photowp_photowp id; Type: DEFAULT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY photowp_photowp ALTER COLUMN id SET DEFAULT nextval('photowp_photowp_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add Тип клея	7	add_gluetype
20	Can change Тип клея	7	change_gluetype
21	Can delete Тип клея	7	delete_gluetype
22	Can add Клей	8	add_glue
23	Can change Клей	8	change_glue
24	Can delete Клей	8	delete_glue
25	Can add Бренд	9	add_brand
26	Can change Бренд	9	change_brand
27	Can delete Бренд	9	delete_brand
28	Can add Партия	10	add_theconsignment
29	Can change Партия	10	change_theconsignment
30	Can delete Партия	10	delete_theconsignment
31	Can add Артикул	11	add_vendorcode
32	Can change Артикул	11	change_vendorcode
33	Can delete Артикул	11	delete_vendorcode
34	Can add Бренд	12	add_brand
35	Can change Бренд	12	change_brand
36	Can delete Бренд	12	delete_brand
37	Can add Фотообои	13	add_photowp
38	Can change Фотообои	13	change_photowp
39	Can delete Фотообои	13	delete_photowp
40	Can add selling content	14	add_sellingcontent
41	Can change selling content	14	change_sellingcontent
42	Can delete selling content	14	delete_sellingcontent
43	Can add Поступление товара	15	add_receipt
44	Can change Поступление товара	15	change_receipt
45	Can delete Поступление товара	15	delete_receipt
46	Can add Контрагент	16	add_contractor
47	Can change Контрагент	16	change_contractor
48	Can delete Контрагент	16	delete_contractor
49	Can add purchase return content	17	add_purchasereturncontent
50	Can change purchase return content	17	change_purchasereturncontent
51	Can delete purchase return content	17	delete_purchasereturncontent
52	Can add Возврат товара	18	add_purchasereturn
53	Can change Возврат товара	18	change_purchasereturn
54	Can delete Возврат товара	18	delete_purchasereturn
55	Can add Реализация товара	19	add_selling
56	Can change Реализация товара	19	change_selling
57	Can delete Реализация товара	19	delete_selling
58	Can add receipt content	20	add_receiptcontent
59	Can change receipt content	20	change_receiptcontent
60	Can delete receipt content	20	delete_receiptcontent
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$LNGqHO8GCTU8$aFAQ5RJehKJBrq899z2yYirCmuBZt70rIRio2dRUiIo=	2018-01-03 16:10:00.372983+03	t	admin				t	t	2017-10-16 18:39:00.90608+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: commodity_turnover_contractor; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY commodity_turnover_contractor (id, contractor_type, first_name, company_name, last_name, patronymic, phone_number) FROM stdin;
1	t	Начальные остатки				
2	f	розница				
5	f	Зайнаб (соседка)				
6	f	#18 Зуля				
8	f	Заира (одноклассница)				
9	f	#10 Даният				
10	f	#15 Казбек				
11	f	#14 Дина				
13	f	Патя (квартирантка)				
15	t	ОВК				
16	t	СТИ				
17	f	#19 Джабраил				
18	f	#11 Багун				
19	f	#16 Узима/Патя				
7	f	#02 Арслан				
3	f	#04 Асма				
14	f	#06 Марат				
4	f	#07 Райсат				
12	f	#09 Барият				
20	t	Тула (панно)				
\.


--
-- Data for Name: commodity_turnover_purchasereturn; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY commodity_turnover_purchasereturn (id, date, selling_id) FROM stdin;
2	2017-10-15 16:08:53+03	36
3	2017-12-03 17:47:57+03	194
4	2017-12-04 16:03:06+03	186
5	2018-01-03 16:11:33+03	170
6	2018-01-04 13:31:38+03	218
7	2018-01-04 15:04:17+03	200
8	2018-01-10 15:27:18+03	241
\.


--
-- Data for Name: commodity_turnover_purchasereturncontent; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY commodity_turnover_purchasereturncontent (id, count, reason, purchase_returns_id, selling_content_id) FROM stdin;
2	1	лишний	2	66
3	3	обмен	3	387
4	1	лишний	4	376
5	2	лишние	5	343
6	5	типа брак	6	438
7	1	лишний	7	406
8	1	лишний	8	475
\.


--
-- Data for Name: commodity_turnover_receipt; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY commodity_turnover_receipt (id, date, shipper_id) FROM stdin;
3	2017-10-29 11:15:01+03	15
4	2017-11-09 12:22:21+03	15
6	2017-11-22 13:08:42+03	15
5	2017-11-13 12:43:53+03	16
7	2017-11-27 13:39:03+03	16
1	2017-08-31 12:00:00+03	1
8	2017-12-01 13:26:51+03	20
\.


--
-- Data for Name: commodity_turnover_receiptcontent; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY commodity_turnover_receiptcontent (id, object_id, count, price, content_type_id, receipt_id) FROM stdin;
952	441	1	3850	13	8
14	2	17	0	10	1
15	3	11	0	10	1
16	4	13	0	10	1
17	5	8	0	10	1
18	6	13	0	10	1
19	7	27	0	10	1
20	8	26	0	10	1
21	9	4	0	10	1
22	10	22	0	10	1
23	11	32	0	10	1
24	12	12	0	10	1
25	13	7	0	10	1
26	14	10	0	10	1
27	15	24	0	10	1
28	16	23	0	10	1
29	17	6	0	10	1
30	18	32	0	10	1
31	19	11	0	10	1
32	20	6	0	10	1
33	21	5	0	10	1
34	22	34	0	10	1
36	24	10	0	10	1
37	25	37	0	10	1
38	26	7	0	10	1
39	27	1	0	10	1
40	28	4	0	10	1
41	29	7	0	10	1
42	30	5	0	10	1
43	31	5	0	10	1
44	32	30	0	10	1
45	33	14	0	10	1
46	34	8	0	10	1
47	35	3	0	10	1
48	36	25	0	10	1
49	37	13	0	10	1
50	38	18	0	10	1
51	39	24	0	10	1
52	40	1	0	10	1
53	41	15	0	10	1
54	42	6	0	10	1
56	44	7	0	10	1
57	45	15	0	10	1
58	46	13	0	10	1
60	48	12	0	10	1
61	49	17	0	10	1
63	51	7	0	10	1
64	52	18	0	10	1
65	53	14	0	10	1
66	54	14	0	10	1
67	55	27	0	10	1
68	56	9	0	10	1
69	57	2	0	10	1
71	59	8	0	10	1
72	60	11	0	10	1
73	61	7	0	10	1
74	62	7	0	10	1
75	63	15	0	10	1
76	64	4	0	10	1
77	65	23	0	10	1
78	66	13	0	10	1
79	67	20	0	10	1
80	68	10	0	10	1
81	69	13	0	10	1
82	70	44	0	10	1
83	71	16	0	10	1
84	72	16	0	10	1
85	73	25	0	10	1
86	74	7	0	10	1
87	75	23	0	10	1
88	76	22	0	10	1
89	77	9	0	10	1
95	83	12	0	10	1
96	84	44	0	10	1
101	89	19	0	10	1
102	90	15	0	10	1
103	91	17	0	10	1
105	93	13	0	10	1
106	94	2	0	10	1
107	95	4	0	10	1
108	96	3	0	10	1
109	97	2	0	10	1
110	98	3	0	10	1
111	99	2	0	10	1
112	100	11	0	10	1
113	101	1	0	10	1
116	105	6	0	10	1
117	106	6	0	10	1
118	107	10	0	10	1
119	108	6	0	10	1
122	111	25	0	10	1
123	112	21	0	10	1
124	113	21	0	10	1
125	114	28	0	10	1
126	115	14	0	10	1
127	116	24	0	10	1
128	117	13	0	10	1
130	119	18	0	10	1
131	120	18	0	10	1
132	121	24	0	10	1
133	122	8	0	10	1
134	123	10	0	10	1
135	124	3	0	10	1
136	125	18	0	10	1
137	126	18	0	10	1
138	127	12	0	10	1
141	130	4	0	10	1
142	131	6	0	10	1
143	132	22	0	10	1
144	133	2	0	10	1
146	135	9	0	10	1
147	136	2	0	10	1
148	137	5	0	10	1
149	138	7	0	10	1
150	139	30	0	10	1
151	140	13	0	10	1
152	141	23	0	10	1
153	142	22	0	10	1
154	143	16	0	10	1
155	144	36	0	10	1
156	145	57	0	10	1
157	146	23	0	10	1
158	147	24	0	10	1
159	148	15	0	10	1
2	2	24	113	8	1
6	6	270	87	8	1
92	80	8	1010	10	1
93	81	13	730	10	1
35	23	13	0	10	1
3	3	264	110	8	1
70	58	30	0	10	1
114	103	18	0	10	1
145	134	36	0	10	1
8	8	450	76	8	1
9	9	1104	47	8	1
121	110	28	0	10	1
139	128	8	0	10	1
140	129	28	0	10	1
104	92	12	0	10	1
90	78	20	1060	10	1
91	79	8	960	10	1
120	109	24	0	10	1
4	4	90	55	8	1
5	5	300	54	8	1
7	7	30	87	8	1
160	149	38	0	10	1
161	150	17	0	10	1
163	152	5	0	10	1
164	153	21	0	10	1
165	154	12	0	10	1
166	155	19	0	10	1
167	156	28	0	10	1
168	157	11	0	10	1
170	159	6	0	10	1
162	151	5	0	10	1
172	161	8	0	10	1
173	162	26	0	10	1
174	163	16	0	10	1
175	164	36	0	10	1
176	165	21	0	10	1
177	166	6	0	10	1
178	167	41	0	10	1
179	168	28	0	10	1
180	169	9	0	10	1
181	170	5	0	10	1
182	171	5	0	10	1
183	172	36	0	10	1
184	173	23	0	10	1
185	174	20	0	10	1
186	175	27	0	10	1
187	176	6	0	10	1
188	177	6	0	10	1
189	178	5	0	10	1
190	179	8	0	10	1
191	180	5	0	10	1
192	181	12	0	10	1
193	182	22	0	10	1
194	183	14	0	10	1
195	184	15	0	10	1
196	185	22	0	10	1
197	186	8	0	10	1
198	187	9	0	10	1
199	188	48	0	10	1
200	189	20	0	10	1
201	190	16	0	10	1
202	191	4	0	10	1
203	192	4	0	10	1
204	193	8	0	10	1
205	194	12	0	10	1
206	195	19	0	10	1
207	196	12	0	10	1
208	197	4	0	10	1
209	198	3	0	10	1
210	200	5	0	10	1
211	201	3	0	10	1
212	202	1	0	10	1
213	203	6	0	10	1
214	204	17	0	10	1
215	205	13	0	10	1
217	207	13	0	10	1
218	208	12	0	10	1
219	209	15	0	10	1
220	210	8	0	10	1
221	211	8	0	10	1
222	212	3	0	10	1
223	213	3	0	10	1
224	214	4	0	10	1
225	215	2	0	10	1
226	216	2	0	10	1
227	217	1	0	10	1
228	218	2	0	10	1
229	219	1	0	10	1
230	220	2	0	10	1
231	221	4	0	10	1
232	222	1	0	10	1
233	223	2	0	10	1
234	225	16	0	10	1
235	226	1	0	10	1
236	227	1	0	10	1
237	228	1	0	10	1
238	229	1	0	10	1
239	230	1	0	10	1
240	231	1	0	10	1
241	232	11	0	10	1
953	442	1	3850	13	8
243	234	7	0	10	1
244	235	12	0	10	1
245	236	9	0	10	1
246	237	10	0	10	1
247	238	42	0	10	1
248	239	29	0	10	1
249	240	16	0	10	1
250	241	20	0	10	1
251	242	20	0	10	1
252	243	24	0	10	1
253	244	29	0	10	1
254	245	26	0	10	1
255	246	22	0	10	1
256	247	8	0	10	1
257	248	12	0	10	1
258	249	9	0	10	1
259	250	9	0	10	1
260	251	6	0	10	1
261	252	9	0	10	1
262	253	4	0	10	1
263	254	6	0	10	1
264	255	25	0	10	1
265	257	10	0	10	1
266	258	13	0	10	1
267	259	2	0	10	1
268	260	17	0	10	1
269	261	3	0	10	1
270	262	2	0	10	1
271	263	1	0	10	1
272	264	1	0	10	1
273	265	13	0	10	1
274	266	13	0	10	1
275	267	7	0	10	1
276	268	8	0	10	1
277	269	13	0	10	1
278	270	11	0	10	1
279	271	32	0	10	1
280	272	6	0	10	1
281	273	19	0	10	1
282	274	11	0	10	1
283	275	9	0	10	1
284	276	23	0	10	1
285	277	7	0	10	1
286	278	15	0	10	1
287	279	13	0	10	1
288	280	8	0	10	1
289	281	3	0	10	1
290	282	1	0	10	1
291	283	2	0	10	1
292	284	3	0	10	1
293	285	1	0	10	1
294	286	1	0	10	1
295	287	2	0	10	1
296	288	2	0	10	1
298	290	1	0	10	1
299	291	1	0	10	1
300	292	3	0	10	1
301	293	3	0	10	1
302	294	1	0	10	1
303	295	2	0	10	1
304	296	3	0	10	1
305	297	1	0	10	1
306	298	1	0	10	1
307	299	1	0	10	1
308	300	3	0	10	1
309	301	1	0	10	1
310	302	1	0	10	1
311	303	1	0	10	1
312	304	3	0	10	1
313	305	3	0	10	1
314	306	3	0	10	1
315	307	2	0	10	1
316	308	1	0	10	1
169	158	8	0	10	1
297	289	2	0	10	1
216	206	48	0	10	1
317	309	1	0	10	1
318	310	18	0	10	1
319	311	4	0	10	1
320	312	2	0	10	1
321	313	3	0	10	1
322	314	5	0	10	1
323	315	3	0	10	1
324	316	1	0	10	1
325	317	1	0	10	1
326	318	3	0	10	1
327	319	1	0	10	1
328	320	4	0	10	1
329	321	1	0	10	1
330	322	2	0	10	1
331	323	1	0	10	1
332	324	1	0	10	1
333	325	1	0	10	1
334	326	1	0	10	1
335	327	1	0	10	1
336	328	1	0	10	1
338	330	19	0	10	1
339	331	4	0	10	1
342	334	2	0	10	1
343	335	1	0	10	1
344	336	2	0	10	1
345	337	1	0	10	1
346	338	1	0	10	1
347	339	6	0	10	1
348	340	6	0	10	1
349	341	4	0	10	1
350	342	1	0	10	1
351	343	6	0	10	1
352	344	12	0	10	1
353	345	7	0	10	1
354	346	4	0	10	1
355	347	1	0	10	1
356	348	5	0	10	1
357	349	1	0	10	1
358	350	1	0	10	1
359	351	15	0	10	1
360	352	12	0	10	1
361	353	5	0	10	1
362	354	15	0	10	1
363	355	12	0	10	1
364	356	4	0	10	1
365	357	14	0	10	1
366	358	21	0	10	1
367	359	6	0	10	1
368	360	18	0	10	1
369	361	1	0	10	1
370	362	10	0	10	1
371	363	4	0	10	1
372	364	14	0	10	1
374	366	1	0	10	1
376	368	15	0	10	1
377	369	36	0	10	1
378	370	11	0	10	1
379	371	37	0	10	1
380	372	6	0	10	1
381	373	3	0	10	1
382	374	1	0	10	1
383	375	16	0	10	1
384	376	33	0	10	1
385	377	26	0	10	1
386	378	14	0	10	1
387	379	19	0	10	1
388	380	1	0	10	1
389	381	1	0	10	1
390	382	2	0	10	1
391	383	1	0	10	1
392	384	1	0	10	1
393	385	1	0	10	1
394	386	3	0	10	1
395	387	1	0	10	1
396	388	1	0	10	1
397	389	3	0	10	1
398	390	2	0	10	1
399	391	2	0	10	1
400	392	2	0	10	1
401	393	2	0	10	1
402	394	4	0	10	1
403	395	12	0	10	1
404	396	24	0	10	1
405	397	24	0	10	1
406	398	12	0	10	1
407	399	12	0	10	1
408	400	18	0	10	1
409	401	9	0	10	1
410	402	36	0	10	1
411	403	24	0	10	1
412	404	12	0	10	1
413	405	9	0	10	1
414	406	96	0	10	1
415	407	37	0	10	1
416	408	60	0	10	1
417	409	36	0	10	1
418	410	13	0	10	1
419	411	2	0	10	1
420	412	24	0	10	1
421	413	12	0	10	1
422	414	12	0	10	1
423	415	12	0	10	1
424	416	9	0	10	1
425	417	10	0	10	1
426	418	12	0	10	1
427	419	12	0	10	1
428	420	12	0	10	1
429	421	12	0	10	1
430	422	48	0	10	1
431	423	12	0	10	1
432	424	48	0	10	1
433	425	24	0	10	1
434	426	24	0	10	1
435	427	60	0	10	1
436	428	120	0	10	1
437	429	12	0	10	1
438	430	36	0	10	1
439	431	12	0	10	1
440	432	60	0	10	1
441	433	18	0	10	1
442	434	9	0	10	1
443	435	9	0	10	1
444	436	9	0	10	1
445	437	9	0	10	1
446	438	9	0	10	1
447	439	12	0	10	1
448	440	12	0	10	1
449	441	24	0	10	1
450	442	48	0	10	1
451	443	24	0	10	1
452	444	12	0	10	1
453	445	24	0	10	1
454	446	36	0	10	1
455	447	60	0	10	1
456	448	12	0	10	1
457	449	84	0	10	1
458	450	12	0	10	1
459	451	48	0	10	1
460	452	12	0	10	1
461	453	24	0	10	1
462	454	28	0	10	1
463	455	6	0	10	1
464	456	8	0	10	1
465	457	24	0	10	1
466	458	11	0	10	1
467	459	32	0	10	1
468	460	82	0	10	1
337	329	2	0	10	1
469	1	1	280	13	1
373	365	2	0	10	1
375	367	2	0	10	1
473	5	1	120	13	1
471	3	1	280	13	1
605	137	1	230	13	1
606	138	1	230	13	1
607	139	1	230	13	1
608	140	1	230	13	1
609	141	1	230	13	1
610	142	1	230	13	1
611	143	1	230	13	1
612	144	1	230	13	1
613	145	1	230	13	1
614	146	1	230	13	1
615	147	1	230	13	1
616	148	1	240	13	1
617	149	1	240	13	1
618	150	1	240	13	1
619	151	1	240	13	1
620	152	1	240	13	1
621	153	1	240	13	1
622	154	1	240	13	1
623	155	1	240	13	1
624	156	1	240	13	1
625	157	1	240	13	1
626	158	1	240	13	1
627	159	2	240	13	1
628	160	1	240	13	1
629	161	1	240	13	1
630	162	1	240	13	1
474	6	1	120	13	1
487	19	1	175	13	1
488	20	1	175	13	1
489	21	1	175	13	1
490	22	1	175	13	1
491	23	1	175	13	1
492	24	1	175	13	1
493	25	1	175	13	1
494	26	1	175	13	1
495	27	1	175	13	1
496	28	1	175	13	1
497	29	1	175	13	1
498	30	1	175	13	1
537	69	1	195	13	1
538	70	1	195	13	1
539	71	1	195	13	1
540	72	1	195	13	1
541	73	1	195	13	1
542	74	1	195	13	1
543	75	1	195	13	1
544	76	1	195	13	1
545	77	1	195	13	1
546	78	1	195	13	1
547	79	1	195	13	1
548	80	1	195	13	1
549	81	1	195	13	1
550	82	1	195	13	1
551	83	1	195	13	1
552	84	1	195	13	1
553	85	2	195	13	1
554	86	1	195	13	1
555	87	1	195	13	1
556	88	1	195	13	1
557	89	1	195	13	1
558	90	2	195	13	1
559	91	1	195	13	1
730	262	1	410	13	1
731	263	1	410	13	1
688	220	1	810	13	1
689	221	1	810	13	1
690	222	1	810	13	1
691	223	1	810	13	1
692	224	1	810	13	1
693	225	1	810	13	1
694	226	1	810	13	1
695	227	1	810	13	1
696	228	1	810	13	1
697	229	1	810	13	1
698	230	1	810	13	1
699	231	1	810	13	1
700	232	1	810	13	1
701	233	1	810	13	1
702	234	1	810	13	1
704	236	1	810	13	1
705	237	2	810	13	1
706	238	1	810	13	1
707	239	1	810	13	1
735	267	1	140	13	1
736	268	1	140	13	1
737	269	1	140	13	1
738	270	1	140	13	1
739	271	1	140	13	1
740	272	1	140	13	1
741	273	1	140	13	1
742	274	1	140	13	1
743	275	1	175	13	1
744	276	1	175	13	1
745	277	1	175	13	1
746	278	1	175	13	1
747	279	1	175	13	1
748	280	1	175	13	1
749	281	1	175	13	1
750	282	1	175	13	1
751	283	1	175	13	1
752	284	1	175	13	1
753	285	1	175	13	1
754	286	1	175	13	1
755	287	1	175	13	1
756	288	1	175	13	1
757	289	1	175	13	1
758	290	1	175	13	1
732	264	1	410	13	1
733	265	1	410	13	1
734	266	1	410	13	1
631	163	1	240	13	1
708	240	1	520	13	1
709	241	1	520	13	1
710	242	1	610	13	1
711	243	1	610	13	1
712	244	1	610	13	1
713	245	1	610	13	1
714	246	2	610	13	1
715	247	1	670	13	1
716	248	1	670	13	1
717	249	1	670	13	1
718	250	1	670	13	1
719	251	1	670	13	1
720	252	1	670	13	1
721	253	1	670	13	1
722	254	1	670	13	1
723	255	1	670	13	1
724	256	1	670	13	1
725	257	1	670	13	1
726	258	1	670	13	1
727	259	1	670	13	1
728	260	1	670	13	1
729	261	1	700	13	1
655	187	1	750	13	1
656	188	1	750	13	1
657	189	2	750	13	1
658	190	1	750	13	1
659	191	1	750	13	1
660	192	1	750	13	1
661	193	1	750	13	1
662	194	1	750	13	1
663	195	1	750	13	1
664	196	1	750	13	1
665	197	1	750	13	1
666	198	2	750	13	1
667	199	1	750	13	1
668	200	1	750	13	1
669	201	1	750	13	1
13	1	18	0	10	1
55	43	13	0	10	1
59	47	8	0	10	1
62	50	20	0	10	1
115	104	23	0	10	1
129	118	25	0	10	1
171	160	8	0	10	1
242	233	10	0	10	1
882	461	57	0	10	1
883	13	59	0	8	1
886	462	27	480	10	3
887	463	30	1180	10	3
888	464	30	1180	10	3
889	465	27	530	10	3
94	82	4	830	10	1
98	86	12	510	10	1
99	87	4	870	10	1
100	88	4	870	10	1
891	467	18	1050	10	3
892	468	18	1010	10	3
340	332	20	1010	10	1
894	469	26	0	10	1
97	85	13	830	10	1
896	471	8	1010	10	1
897	472	12	830	10	1
898	473	1	0	10	1
899	474	1	0	10	1
341	333	4	0	10	1
900	475	1	0	10	1
901	476	3	0	10	1
902	477	1	0	10	1
903	478	1	0	10	1
904	479	1	0	10	1
905	480	16	1660	10	4
906	481	16	1660	10	4
907	482	8	1660	10	4
890	466	18	530	10	3
908	483	9	530	10	4
813	345	1	280	13	1
674	206	2	750	13	1
814	346	1	280	13	1
503	35	1	175	13	1
815	347	1	280	13	1
816	348	1	280	13	1
817	349	1	280	13	1
840	372	1	300	13	1
841	373	1	300	13	1
842	374	1	300	13	1
843	375	1	300	13	1
844	376	1	300	13	1
845	377	1	300	13	1
846	378	1	300	13	1
847	379	1	300	13	1
848	380	1	300	13	1
849	381	2	300	13	1
850	382	1	300	13	1
851	383	1	300	13	1
853	385	1	215	13	1
854	386	1	215	13	1
855	387	1	260	13	1
856	388	1	260	13	1
857	389	1	260	13	1
858	390	1	260	13	1
859	391	1	260	13	1
860	392	1	260	13	1
861	393	1	260	13	1
862	394	1	260	13	1
863	395	1	330	13	1
864	396	1	330	13	1
865	397	1	420	13	1
866	398	1	420	13	1
867	399	1	420	13	1
868	400	1	420	13	1
869	401	1	420	13	1
870	402	1	420	13	1
502	34	1	175	13	1
871	403	1	420	13	1
872	404	1	420	13	1
873	405	1	420	13	1
874	406	1	420	13	1
875	407	1	450	13	1
876	408	1	450	13	1
877	409	1	450	13	1
878	410	1	450	13	1
879	411	1	450	13	1
880	412	1	450	13	1
852	384	1	570	13	1
1	1	24	115	8	1
893	15	24	134	8	1
818	350	1	280	13	1
895	470	9	0	10	1
486	18	1	120	13	1
485	17	1	120	13	1
484	16	1	120	13	1
483	15	1	120	13	1
482	14	1	120	13	1
481	13	1	120	13	1
480	12	1	120	13	1
479	11	1	120	13	1
478	10	1	120	13	1
477	9	1	120	13	1
476	8	1	120	13	1
475	7	1	120	13	1
501	33	1	175	13	1
500	32	1	175	13	1
499	31	1	175	13	1
470	2	2	280	13	1
703	235	4	810	13	1
788	320	1	175	13	1
789	321	1	175	13	1
790	322	1	230	13	1
791	323	1	230	13	1
819	351	1	280	13	1
820	352	1	280	13	1
821	353	1	280	13	1
822	354	1	280	13	1
823	355	1	280	13	1
824	356	1	280	13	1
825	357	1	280	13	1
826	358	1	280	13	1
827	359	1	280	13	1
828	360	1	280	13	1
829	361	1	280	13	1
830	362	1	280	13	1
831	363	1	280	13	1
832	364	1	280	13	1
11	11	90	58	8	1
12	12	168	96	8	1
909	484	30	1270	10	5
910	485	18	865	10	5
654	186	1	240	13	1
911	486	19	865	10	5
812	344	1	230	13	1
839	371	1	280	13	1
472	4	1	280	13	1
521	53	1	175	13	1
520	52	1	175	13	1
604	136	2	195	13	1
603	135	1	195	13	1
602	134	1	195	13	1
601	133	1	195	13	1
600	132	1	195	13	1
599	131	1	195	13	1
598	130	1	195	13	1
597	129	1	195	13	1
596	128	1	195	13	1
595	127	1	195	13	1
594	126	1	195	13	1
593	125	1	195	13	1
592	124	1	195	13	1
591	123	1	195	13	1
590	122	1	195	13	1
589	121	1	195	13	1
588	120	1	195	13	1
587	119	1	195	13	1
586	118	1	195	13	1
585	117	1	195	13	1
584	116	1	195	13	1
576	108	2	195	13	1
653	185	1	240	13	1
652	184	1	240	13	1
651	183	1	240	13	1
650	182	1	240	13	1
649	181	2	240	13	1
648	180	1	240	13	1
647	179	1	240	13	1
646	178	1	240	13	1
645	177	1	240	13	1
644	176	1	240	13	1
643	175	2	240	13	1
642	174	1	240	13	1
641	173	2	240	13	1
640	172	1	240	13	1
639	171	1	240	13	1
638	170	1	240	13	1
637	169	1	240	13	1
636	168	1	240	13	1
635	167	1	240	13	1
634	166	1	240	13	1
633	165	1	240	13	1
632	164	1	240	13	1
919	421	1	610	13	1
914	416	1	670	13	1
918	420	1	750	13	1
917	419	1	750	13	1
916	418	1	750	13	1
912	414	1	750	13	1
687	219	1	750	13	1
686	218	1	750	13	1
685	217	1	750	13	1
684	216	1	750	13	1
683	215	1	750	13	1
682	214	1	750	13	1
681	213	1	750	13	1
679	211	1	750	13	1
678	210	1	750	13	1
677	209	1	750	13	1
676	208	1	750	13	1
885	413	1	750	13	1
913	415	1	810	13	1
787	319	2	175	13	1
786	318	1	175	13	1
785	317	1	175	13	1
784	316	1	175	13	1
783	315	1	175	13	1
782	314	1	175	13	1
781	313	1	175	13	1
780	312	1	175	13	1
779	311	1	175	13	1
778	310	1	175	13	1
777	309	1	175	13	1
776	308	1	175	13	1
775	307	1	175	13	1
774	306	1	175	13	1
773	305	1	175	13	1
772	304	1	175	13	1
771	303	1	175	13	1
770	302	1	175	13	1
769	301	1	175	13	1
768	300	1	175	13	1
767	299	1	175	13	1
766	298	1	175	13	1
765	297	1	175	13	1
764	296	1	175	13	1
811	343	1	230	13	1
810	342	1	230	13	1
809	341	1	230	13	1
808	340	1	230	13	1
807	339	1	230	13	1
806	338	1	230	13	1
805	337	1	230	13	1
804	336	1	230	13	1
803	335	1	230	13	1
802	334	1	230	13	1
801	333	1	230	13	1
800	332	1	230	13	1
799	331	1	230	13	1
798	330	1	230	13	1
797	329	1	230	13	1
796	328	2	230	13	1
795	327	1	230	13	1
794	326	1	230	13	1
793	325	1	230	13	1
792	324	1	230	13	1
838	370	1	280	13	1
837	369	1	280	13	1
836	368	1	280	13	1
835	367	1	280	13	1
834	366	1	280	13	1
923	488	6	1660	10	6
924	489	6	1660	10	6
922	487	12	1660	10	6
926	491	12	870	10	1
927	492	4	1060	10	1
928	493	4	1060	10	1
929	494	200	150	10	1
930	495	9	1400	10	1
10	10	660	75	8	1
932	497	2	0	10	1
580	112	2	195	13	1
931	496	1	0	10	1
949	498	1	0	10	1
950	499	1	0	10	1
925	490	42	1270	10	7
519	51	1	175	13	1
518	50	1	175	13	1
517	49	1	175	13	1
516	48	1	175	13	1
515	47	1	175	13	1
514	46	1	175	13	1
513	45	1	175	13	1
512	44	1	175	13	1
511	43	1	175	13	1
510	42	1	175	13	1
509	41	1	175	13	1
508	40	1	175	13	1
507	39	1	175	13	1
506	38	1	175	13	1
505	37	1	175	13	1
504	36	1	175	13	1
536	68	1	175	13	1
535	67	1	175	13	1
534	66	1	175	13	1
533	65	1	175	13	1
532	64	1	175	13	1
531	63	1	175	13	1
530	62	1	175	13	1
529	61	1	175	13	1
528	60	1	175	13	1
527	59	1	175	13	1
526	58	1	175	13	1
525	57	1	175	13	1
524	56	1	175	13	1
523	55	1	175	13	1
522	54	1	175	13	1
560	92	1	195	13	1
561	93	1	195	13	1
562	94	1	195	13	1
563	95	1	195	13	1
564	96	1	195	13	1
565	97	1	195	13	1
566	98	1	195	13	1
567	99	1	195	13	1
568	100	1	195	13	1
569	101	1	195	13	1
570	102	1	195	13	1
571	103	1	195	13	1
572	104	1	195	13	1
573	105	1	195	13	1
574	106	1	195	13	1
575	107	1	195	13	1
577	109	1	195	13	1
578	110	1	195	13	1
579	111	1	195	13	1
581	113	1	195	13	1
582	114	1	195	13	1
583	115	1	195	13	1
948	439	1	610	13	1
915	417	2	750	13	1
680	212	2	750	13	1
921	423	1	750	13	1
670	202	1	750	13	1
671	203	1	750	13	1
672	204	1	750	13	1
673	205	1	750	13	1
675	207	1	750	13	1
947	438	1	750	13	1
920	422	1	810	13	1
944	435	1	175	13	1
943	434	1	175	13	1
942	433	1	175	13	1
941	432	1	175	13	1
759	291	1	175	13	1
760	292	1	175	13	1
761	293	1	175	13	1
762	294	1	175	13	1
763	295	1	175	13	1
945	436	1	230	13	1
951	440	1	280	13	1
946	437	1	280	13	1
833	365	1	280	13	1
939	430	1	260	13	1
940	431	1	260	13	1
936	427	1	330	13	1
937	428	1	330	13	1
938	429	1	330	13	1
934	425	1	450	13	1
935	426	1	450	13	1
933	424	1	570	13	1
\.


--
-- Data for Name: commodity_turnover_selling; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY commodity_turnover_selling (id, date_create, date_paid, buyer_id, comment) FROM stdin;
8	2017-09-03 13:34:12+03	2017-09-03 13:34:20+03	2	
9	2017-09-04 13:38:51+03	2017-09-04 13:38:53+03	2	
10	2017-09-04 13:39:48+03	2017-09-04 13:39:51+03	2	
11	2017-09-05 14:10:30+03	2017-09-05 14:10:33+03	2	
12	2017-09-05 14:14:27+03	2017-09-05 14:14:30+03	2	
13	2017-09-06 14:20:56+03	2017-09-06 14:21:04+03	2	
14	2017-09-07 14:22:55+03	2017-09-07 14:22:59+03	2	
15	2017-09-07 14:24:31+03	2017-09-07 14:24:35+03	6	
16	2017-09-09 14:27:44+03	2017-09-09 14:27:59+03	2	
18	2017-09-10 14:52:03+03	2017-09-10 14:52:06+03	7	
19	2017-09-11 15:25:59+03	2017-09-11 15:26:05+03	2	
20	2017-09-12 15:50:59+03	2017-09-12 15:51:13+03	2	
21	2017-09-13 15:55:58+03	2017-09-13 15:56:02+03	2	
22	2017-09-13 15:57:36+03	2017-09-13 15:57:46+03	2	
23	2017-09-14 15:59:27+03	2017-09-14 15:59:36+03	2	
24	2017-09-16 16:28:55+03	2017-09-16 16:29:11+03	2	
25	2017-09-16 17:21:27+03	2017-09-16 17:21:36+03	2	
26	2017-09-16 17:25:50+03	2017-09-16 17:25:58+03	8	
27	2017-09-17 11:57:39+03	2017-09-17 11:57:41+03	2	
28	2017-09-17 11:58:23+03	2017-09-17 11:58:25+03	2	
29	2017-09-18 12:01:05+03	2017-09-18 12:01:07+03	9	
30	2017-09-18 12:02:08+03	2017-09-18 12:02:10+03	2	
31	2017-09-19 12:03:41+03	2017-09-19 12:03:44+03	2	
32	2017-09-19 12:05:19+03	2017-09-19 12:05:22+03	2	
33	2017-09-19 12:06:05+03	2017-09-19 12:06:08+03	2	
34	2017-09-20 12:08:38+03	2017-09-20 12:08:41+03	2	
35	2017-09-20 12:10:26+03	2017-09-20 12:10:28+03	2	
36	2017-09-20 12:12:20+03	2017-09-20 12:12:23+03	2	
38	2017-09-21 12:16:44+03	2017-09-21 12:16:47+03	2	
39	2017-09-23 12:20:06+03	2017-09-23 12:20:08+03	2	
40	2017-09-23 12:22:13+03	2017-09-23 12:22:16+03	2	
41	2017-09-24 12:30:58+03	2017-09-24 12:31:01+03	2	
42	2017-09-24 12:35:05+03	2017-09-24 12:35:07+03	2	
43	2017-09-25 12:36:27+03	2017-09-25 12:36:29+03	2	
44	2017-09-26 12:38:59+03	2017-09-26 12:39:15+03	2	
45	2017-09-26 12:41:23+03	2017-09-26 12:41:27+03	2	
46	2017-09-27 12:43:10+03	2017-09-27 12:43:12+03	2	
47	2017-09-27 12:44:31+03	2017-09-27 12:44:33+03	2	
48	2017-09-27 12:47:18+03	2017-09-27 12:47:20+03	2	
49	2017-09-27 12:48:51+03	2017-09-27 12:48:54+03	2	
51	2017-09-28 12:54:33+03	2017-09-28 12:54:34+03	2	
52	2017-09-28 12:57:55+03	2017-09-28 12:57:57+03	2	
53	2017-09-28 12:59:56+03	2017-09-28 12:59:58+03	2	
54	2017-09-28 13:01:18+03	2017-09-28 13:01:20+03	2	
55	2017-09-29 13:01:53+03	2017-09-29 13:01:57+03	2	
56	2017-09-29 13:03:21+03	2017-09-29 13:03:26+03	2	
57	2017-09-30 13:04:50+03	2017-09-30 13:04:53+03	2	
58	2017-09-30 13:06:02+03	2017-09-30 13:06:04+03	2	
59	2017-09-30 13:08:13+03	2017-09-30 13:08:16+03	2	
60	2017-09-30 13:10:18+03	2017-09-30 13:10:20+03	2	
61	2017-09-30 13:11:01+03	2017-09-30 13:11:03+03	10	
2	2017-09-01 11:14:55+03	2017-09-01 11:14:57+03	2	
3	2017-09-01 13:08:41+03	2017-09-01 13:08:50+03	2	
4	2017-09-01 13:22:05+03	2017-09-01 13:22:13+03	3	
5	2017-09-02 13:25:29+03	2017-09-02 13:25:36+03	4	
6	2017-09-02 13:27:54+03	2017-09-02 13:28:00+03	2	
7	2017-09-02 13:30:08+03	2017-09-02 13:30:12+03	5	
62	2017-10-01 13:37:09+03	2017-10-01 13:37:19+03	2	
63	2017-10-01 13:39:01+03	2017-10-01 13:39:05+03	2	
64	2017-10-02 13:56:50+03	2017-10-02 13:56:59+03	2	
65	2017-10-02 13:59:06+03	2017-10-02 13:59:11+03	2	
66	2017-10-03 13:59:45+03	2017-10-03 13:59:51+03	2	
67	2017-10-04 14:01:41+03	2017-10-04 14:01:45+03	2	
69	2017-10-05 14:05:29+03	2017-10-05 14:05:33+03	2	
70	2017-10-05 14:07:21+03	2017-10-05 14:07:26+03	11	
71	2017-10-06 14:11:02+03	2017-10-06 14:11:04+03	2	
72	2017-10-06 14:13:25+03	2017-10-06 14:13:29+03	2	
73	2017-10-07 14:17:21+03	2017-10-07 14:17:27+03	2	
74	2017-10-07 14:21:54+03	2017-10-07 14:21:59+03	2	
75	2017-10-07 14:23:34+03	2017-10-07 14:23:38+03	12	
76	2017-10-07 14:24:25+03	2017-10-07 14:24:31+03	2	
77	2017-10-07 14:25:46+03	2017-10-07 14:25:51+03	2	
78	2017-10-07 14:26:36+03	2017-10-07 14:26:40+03	9	
79	2017-10-08 15:52:04+03	2017-10-08 15:52:10+03	2	
80	2017-10-08 15:57:13+03	2017-10-08 15:57:17+03	2	
81	2017-10-08 16:07:49+03	2017-10-08 16:07:56+03	2	
82	2017-10-08 16:09:19+03	2017-10-08 16:09:24+03	2	
83	2017-10-08 16:10:29+03	2017-10-08 16:10:35+03	2	
84	2017-10-08 16:12:02+03	2017-10-08 16:12:06+03	2	
85	2017-10-08 16:15:27+03	2017-10-08 16:15:31+03	2	
87	2017-10-09 16:19:52+03	\N	13	
88	2017-10-09 16:39:58+03	2017-10-09 16:40:03+03	2	
89	2017-10-09 17:01:33+03	2017-10-09 17:01:39+03	2	
90	2017-10-10 17:04:02+03	2017-10-10 17:04:07+03	2	
91	2017-10-10 17:08:04+03	2017-10-10 17:08:08+03	2	
93	2017-10-11 17:33:17+03	2017-10-11 17:33:26+03	2	
94	2017-10-12 17:36:11+03	2017-10-12 17:36:16+03	2	
95	2017-10-12 17:38:06+03	2017-10-12 17:38:11+03	2	
96	2017-10-12 17:38:37+03	2017-10-12 17:38:42+03	2	
97	2017-10-12 17:39:53+03	2017-10-12 17:39:58+03	2	
98	2017-10-14 15:54:25+03	2017-10-14 15:54:29+03	9	
99	2017-10-14 15:55:54+03	2017-10-14 15:55:58+03	2	
100	2017-10-15 15:59:47+03	2017-10-15 15:59:51+03	2	
101	2017-10-15 16:02:52+03	2017-10-15 16:02:57+03	2	
102	2017-10-15 16:05:21+03	2017-10-15 16:05:27+03	2	
103	2017-10-15 16:06:15+03	2017-10-15 16:06:20+03	2	
104	2017-10-16 16:15:03+03	2017-10-16 16:15:07+03	2	
105	2017-10-16 16:15:48+03	2017-10-16 16:15:51+03	2	
106	2017-10-16 16:16:43+03	2017-10-16 16:16:46+03	2	
107	2017-10-17 16:19:25+03	2017-10-17 16:19:30+03	2	
108	2017-10-17 16:20:09+03	2017-10-17 16:20:13+03	2	
109	2017-10-17 16:21:28+03	2017-10-17 16:21:32+03	2	
110	2017-10-18 16:22:24+03	2017-10-18 16:22:27+03	2	
111	2017-10-19 16:23:37+03	2017-10-19 16:23:38+03	2	
113	2017-10-21 16:32:06+03	2017-10-21 16:32:11+03	2	
114	2017-10-22 16:36:16+03	2017-10-22 16:36:20+03	2	
112	2017-10-21 16:29:59+03	2017-10-21 16:30:03+03	2	
115	2017-10-22 16:37:21+03	2017-10-22 16:37:25+03	11	
116	2017-10-22 16:38:20+03	2017-10-22 16:38:24+03	2	
117	2017-10-22 16:41:02+03	2017-10-22 16:41:06+03	12	
118	2017-10-22 16:42:37+03	2017-10-22 16:42:40+03	14	
119	2017-10-23 16:44:09+03	2017-10-23 16:44:13+03	2	
120	2017-10-24 16:45:06+03	2017-10-24 16:45:10+03	2	
121	2017-10-24 16:46:03+03	2017-10-24 16:46:06+03	2	
68	2017-10-05 14:02:16+03	2017-10-05 14:02:21+03	2	
122	2017-10-25 17:55:31+03	2017-10-25 17:55:35+03	2	
123	2017-10-27 16:53:43+03	2017-10-27 16:53:44+03	2	
124	2017-10-28 11:07:38+03	2017-10-28 11:07:38+03	2	
126	2017-10-29 12:21:46+03	2017-10-29 12:21:46+03	2	казбеку
127	2017-10-29 12:24:13+03	2017-10-29 12:24:14+03	2	
128	2017-10-29 16:01:02+03	2017-10-29 16:01:02+03	2	
129	2017-10-29 18:36:37+03	2017-10-29 18:36:37+03	2	
130	2017-10-30 15:23:44+03	2017-10-30 15:23:44+03	2	
131	2017-10-31 11:29:59+03	2017-10-31 11:29:59+03	2	
125	2017-10-29 11:10:25+03	2017-10-29 11:10:25+03	2	
132	2017-10-31 12:32:09+03	2017-10-31 12:32:09+03	2	
133	2017-10-31 16:56:43+03	2017-10-31 16:56:43+03	2	
134	2017-10-31 17:15:36+03	2017-10-31 17:15:36+03	2	
135	2017-11-01 16:38:07+03	2017-11-01 16:38:07+03	2	
136	2017-11-01 16:39:56+03	2017-11-01 16:39:56+03	2	
137	2017-11-01 16:43:10+03	2017-11-01 16:43:10+03	2	
17	2017-09-10 14:37:16+03	2017-09-10 14:37:20+03	2	
92	2017-10-10 17:12:10+03	2017-10-10 17:12:14+03	11	
50	2017-09-28 12:51:55+03	2017-09-28 12:51:59+03	9	
138	2017-11-02 17:43:52+03	2017-11-02 17:43:52+03	2	
229	2017-12-16 16:42:29+03	2017-12-16 16:42:29+03	3	
37	2017-09-20 12:13:21+03	2017-09-20 12:13:24+03	2	
140	2017-11-03 12:35:01+03	2017-11-03 12:35:01+03	2	
141	2017-11-03 12:36:00+03	2017-11-03 12:36:00+03	2	
142	2017-11-03 12:36:31+03	2017-11-03 12:36:31+03	2	
145	2017-11-04 17:51:02+03	2017-11-04 17:51:02+03	2	
146	2017-11-04 18:06:40+03	2017-11-04 18:06:40+03	12	
147	2017-11-05 17:50:26+03	2017-11-05 17:50:26+03	2	
148	2017-11-06 15:16:32+03	2017-11-06 15:16:32+03	2	
149	2017-11-06 15:17:40+03	2017-11-06 15:17:40+03	2	
151	2017-11-06 15:19:12+03	2017-11-06 15:19:12+03	2	
153	2017-11-06 17:13:34+03	2017-11-06 17:13:34+03	2	
154	2017-11-07 14:59:32+03	2017-11-07 14:59:32+03	2	
155	2017-11-07 15:22:37+03	2017-11-07 15:22:37+03	2	
139	2017-11-02 17:47:23+03	2017-11-07 17:10:12+03	3	
157	2017-11-07 18:04:46+03	2017-11-07 18:04:46+03	2	
158	2017-11-08 14:10:04+03	2017-11-08 14:10:04+03	2	
163	2017-11-09 17:23:59+03	2017-11-09 17:23:59+03	2	
164	2017-11-09 17:24:38+03	2017-11-09 17:24:38+03	2	
166	2017-11-10 12:55:00+03	2017-11-10 12:55:00+03	2	
167	2017-11-11 15:12:50+03	2017-11-11 15:12:50+03	2	
168	2017-11-11 17:00:00+03	2017-11-11 17:00:00+03	2	
169	2017-11-09 12:00:00+03	2017-11-09 12:00:00+03	14	
170	2017-11-12 13:36:52+03	2017-11-12 13:36:52+03	2	
171	2017-11-12 14:38:13+03	2017-11-12 14:38:13+03	2	
172	2017-11-12 15:10:54+03	2017-11-12 15:10:54+03	2	
173	2017-11-13 13:06:29+03	2017-11-13 13:06:29+03	2	
174	2017-11-13 13:09:15+03	2017-11-13 13:09:15+03	2	
176	2017-11-13 13:11:40+03	2017-11-13 13:11:40+03	2	
231	2017-12-17 12:04:37+03	2017-12-17 12:04:37+03	2	
152	2017-11-06 15:23:05+03	2017-11-06 15:23:05+03	2	
175	2017-11-13 13:10:43+03	2017-11-13 13:10:43+03	2	
177	2017-11-14 13:18:17+03	2017-11-14 13:18:17+03	2	
178	2017-11-14 13:19:47+03	2017-11-15 13:19:47+03	17	
180	2017-11-15 13:42:46+03	2017-11-15 13:42:46+03	2	
182	2017-11-15 14:22:20+03	2017-11-15 17:16:50+03	9	
184	2017-11-16 11:10:10+03	2017-11-16 11:10:10+03	9	
185	2017-11-16 11:12:13+03	2017-11-16 11:12:13+03	18	
186	2017-11-18 13:34:33+03	2017-11-18 13:34:33+03	2	
187	2017-11-18 17:17:58+03	2017-11-18 17:17:58+03	2	
188	2017-11-18 17:18:20+03	2017-11-18 17:18:20+03	2	
150	2017-11-06 15:18:47+03	2017-11-19 13:03:37+03	10	
189	2017-11-19 13:02:51+03	2017-11-19 13:02:51+03	2	
191	2017-11-19 13:04:51+03	2017-11-19 13:04:51+03	2	
232	2017-12-17 14:49:11+03	2017-12-17 14:49:11+03	2	
192	2017-11-19 13:37:31+03	2017-11-19 17:22:14+03	12	
190	2017-11-19 13:04:04+03	2017-11-19 17:22:31+03	11	
233	2017-12-18 11:31:00+03	2017-12-18 11:31:00+03	2	
234	2017-12-19 11:27:34+03	2017-12-19 11:27:34+03	2	
156	2017-11-07 17:08:53+03	2017-11-20 17:01:11+03	3	
194	2017-11-20 18:08:55+03	2017-11-20 18:08:55+03	2	
195	2017-11-23 13:41:29+03	2017-11-23 13:41:29+03	2	
196	2017-11-24 14:51:35+03	2017-11-24 14:51:35+03	2	
198	2017-11-25 12:05:54+03	2017-11-25 12:05:54+03	2	
199	2017-11-25 14:04:11+03	2017-11-25 14:04:11+03	2	
200	2017-11-25 15:38:03+03	2017-11-25 15:38:03+03	2	
202	2017-11-26 14:47:22+03	2017-11-26 14:47:22+03	2	
203	2017-11-26 17:37:16+03	\N	19	
204	2017-11-27 13:47:25+03	2017-11-27 13:47:25+03	2	
205	2017-11-28 13:51:16+03	2017-11-28 13:51:16+03	2	
206	2017-11-28 13:51:41+03	2017-11-28 13:51:41+03	2	
207	2017-11-28 13:52:50+03	2017-11-28 13:52:50+03	2	
208	2017-11-28 13:54:23+03	2017-11-28 13:54:23+03	2	
209	2017-11-28 17:30:08+03	2017-11-28 17:30:08+03	2	
235	2017-12-19 11:28:25+03	2017-12-19 11:28:25+03	2	
210	2017-11-29 13:15:01+03	2017-11-29 13:15:01+03	2	
211	2017-11-29 13:20:17+03	2017-11-29 13:20:17+03	2	
201	2017-11-25 17:31:36+03	2017-11-29 13:31:23+03	9	
212	2017-11-29 15:01:04+03	2017-11-29 15:01:04+03	2	
213	2017-11-29 15:47:22+03	2017-11-29 15:47:22+03	2	
214	2017-11-30 12:09:23+03	2017-11-30 12:09:23+03	2	
143	2017-11-04 17:47:24+03	2017-11-04 17:47:24+03	2	
144	2017-11-04 17:48:59+03	2017-11-04 17:48:59+03	2	
258	2018-01-10 14:19:00+03	2018-01-10 14:19:00+03	2	
179	2017-11-15 13:21:31+03	2017-11-15 13:21:31+03	2	
228	2017-12-14 16:25:31+03	2017-12-14 16:25:31+03	2	
183	2017-11-15 17:15:13+03	2017-11-15 17:15:13+03	2	
217	2017-12-03 11:23:05+03	2017-12-03 11:23:05+03	2	
218	2017-12-03 13:28:11+03	2017-12-03 13:28:11+03	2	
219	2017-12-03 17:45:08+03	2017-12-03 17:45:08+03	2	
216	2017-12-02 17:06:28+03	2017-12-03 17:30:00+03	3	
220	2017-12-05 16:12:36+03	2017-12-05 16:12:36+03	2	
221	2017-12-05 16:13:53+03	2017-12-05 16:13:53+03	2	
181	2017-11-15 13:47:24+03	2017-11-15 13:47:24+03	2	шамиль
223	2017-12-09 13:48:12+03	2017-12-10 16:20:44+03	17	
222	2017-12-09 13:22:55+03	2017-12-09 13:22:55+03	2	
224	2017-12-11 11:11:24+03	2017-12-11 11:11:24+03	2	
225	2017-12-11 12:20:37+03	2017-12-11 12:20:37+03	2	
197	2017-11-24 15:33:36+03	2017-12-11 14:29:01+03	4	
226	2017-12-12 15:32:32+03	2017-12-12 15:32:32+03	2	
227	2017-12-13 14:22:01+03	2017-12-13 14:22:01+03	2	
236	2017-12-19 17:07:37+03	2017-12-19 17:07:37+03	2	
237	2017-12-21 15:51:36+03	2017-12-21 15:51:36+03	2	
259	2018-01-11 10:34:56+03	2018-01-11 10:34:56+03	2	
230	2017-12-16 16:43:16+03	2017-12-16 16:43:16+03	2	
239	2017-12-24 14:36:52+03	2017-12-24 14:36:52+03	3	
240	2017-12-24 14:38:28+03	2017-12-24 14:38:28+03	2	
242	2017-12-25 12:12:59+03	2017-12-25 12:12:59+03	2	
243	2017-12-26 13:19:59+03	2017-12-26 13:19:59+03	2	
245	2017-12-27 16:55:37+03	2017-12-27 16:55:37+03	2	
238	2017-12-23 17:51:08+03	2017-12-28 16:01:46+03	3	
246	2017-12-28 16:01:06+03	2017-12-28 16:01:06+03	2	
247	2017-12-28 16:01:56+03	\N	12	
248	2018-01-03 16:15:08+03	2018-01-03 16:15:08+03	2	
249	2018-01-04 13:34:11+03	2018-01-04 13:34:11+03	2	
250	2018-01-04 13:35:13+03	2018-01-04 13:35:13+03	2	
251	2018-01-06 13:00:57+03	2018-01-06 13:00:57+03	2	
252	2018-01-07 12:20:08+03	2018-01-07 12:20:08+03	2	
253	2018-01-07 13:41:49+03	2018-01-07 13:41:49+03	17	
254	2018-01-07 15:22:11+03	2018-01-07 15:22:11+03	2	
255	2018-01-07 16:11:37+03	2018-01-07 16:11:37+03	2	
256	2018-01-08 11:41:53+03	2018-01-08 11:41:53+03	2	
257	2018-01-10 14:18:59+03	2018-01-10 14:18:59+03	2	
263	2018-01-13 18:13:02+03	2018-01-13 18:13:02+03	2	
241	2017-12-25 11:38:18+03	2017-12-25 11:38:18+03	2	
260	2018-01-11 15:10:48+03	2018-01-11 15:10:48+03	2	
261	2018-01-13 14:37:57+03	\N	3	
262	2018-01-13 16:46:13+03	2018-01-13 16:46:13+03	2	
264	2018-01-14 16:40:35+03	2018-01-14 16:40:35+03	2	
\.


--
-- Data for Name: commodity_turnover_sellingcontent; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY commodity_turnover_sellingcontent (id, object_id, count, price, sold_price, complement, content_type_id, selling_order_id, pack, wholesale) FROM stdin;
2	128	3	1000	1000	f	10	2	f	f
3	6	1	300	300	f	8	2	f	f
4	328	1	800	1000	f	13	3	f	f
5	10	1	200	200	f	8	3	f	f
6	8	1	2700	2700	f	8	4	t	t
7	10	1	2500	2500	f	8	4	t	t
8	9	1	2500	2500	f	8	5	t	t
9	212	3	1000	1000	f	10	6	f	f
10	9	3	0	200	f	8	7	f	f
11	58	3	1300	1300	f	10	8	f	f
12	63	3	800	800	f	10	8	f	f
13	9	3	200	200	f	8	8	f	f
14	246	1	1300	1400	f	13	9	f	f
15	87	2	1100	1200	f	10	10	f	f
16	2	1	300	300	f	8	10	f	f
17	83	3	700	800	f	10	11	f	f
18	9	5	200	200	f	8	11	f	f
19	28	4	1100	1400	f	10	12	f	f
20	281	3	1000	1000	f	10	12	f	f
21	120	2	1600	1600	f	10	13	f	f
22	9	2	200	200	f	8	13	f	f
23	217	1	1000	1000	f	10	14	f	f
24	9	1	2500	2500	f	8	15	t	t
25	127	4	1300	1400	f	10	16	f	f
26	6	1	300	300	f	8	16	f	f
27	9	1	200	200	f	8	17	f	f
29	9	1	2500	2500	f	8	18	t	t
30	43	5	1300	1400	f	10	19	f	f
31	6	2	250	300	f	8	19	f	f
32	461	1	500	500	f	10	20	f	f
33	9	1	200	200	f	8	20	f	f
34	8	2	250	250	f	8	21	f	f
35	78	1	1300	1400	f	10	22	f	f
36	120	1	1600	1600	f	10	23	f	f
37	4	2	1300	1400	f	10	24	f	f
38	11	4	1300	1400	f	10	24	f	f
39	308	1	900	1000	f	10	25	f	f
40	219	1	900	1000	f	10	25	f	f
41	294	1	900	1000	f	10	25	f	f
42	6	1	300	300	f	8	25	f	f
43	33	3	1200	1400	f	10	26	f	f
44	44	1	1200	1400	f	10	26	f	f
45	331	3	1100	1300	f	10	26	f	f
46	293	3	800	1000	f	10	26	f	f
47	35	1	1100	1100	f	10	26	f	f
48	58	4	1100	1300	f	10	26	f	f
49	32	4	800	1000	f	10	26	f	f
50	9	9	200	200	f	8	26	f	f
52	258	1	1200	1200	f	10	27	f	f
53	99	2	1200	1200	f	10	28	f	f
54	9	1	2500	2500	f	8	29	t	t
55	63	1	800	800	f	10	30	f	f
56	58	1	1300	1300	f	10	31	f	f
57	9	1	200	200	f	8	31	f	f
58	10	1	200	200	f	8	32	f	f
59	189	1	1500	1700	f	13	33	f	f
60	92	6	1300	1400	f	10	33	f	f
61	9	3	200	200	f	8	33	f	f
62	41	1	1400	1400	f	10	34	f	f
63	110	4	1300	1400	f	10	35	f	f
64	127	4	1300	1400	f	10	35	f	f
65	9	4	200	200	f	8	35	f	f
66	184	6	1300	1400	f	10	36	f	f
67	9	3	200	200	f	8	36	f	f
68	16	4	1350	1400	f	10	37	f	f
70	81	2	1300	1300	f	10	38	f	f
71	2	1	300	300	f	8	38	f	f
72	432	9	550	600	f	10	39	f	f
73	9	2	175	200	f	8	39	f	f
74	235	1	1600	1800	f	13	40	f	f
75	213	3	1200	1200	f	10	41	f	f
76	10	2	200	200	f	8	41	f	f
78	9	1	200	200	f	8	42	f	f
79	63	2	800	800	f	10	43	f	f
80	109	3	800	800	f	10	43	f	f
82	368	1	1500	1600	f	10	44	f	f
83	9	1	200	200	f	8	44	f	f
84	461	1	500	500	f	10	45	f	f
85	9	1	200	200	f	8	45	f	f
86	10	2	100	200	f	8	46	f	f
87	63	4	750	800	f	10	47	f	f
88	6	1	300	300	f	8	47	f	f
90	461	4	500	500	f	10	48	f	f
91	6	1	300	300	f	8	48	f	f
93	131	4	1000	1000	f	10	49	f	f
94	9	2	200	200	f	8	49	f	f
96	10	1	2500	2500	f	8	50	t	t
98	3	1	3400	3400	f	8	50	t	t
99	63	5	800	800	f	10	51	f	f
100	9	2	200	200	f	8	51	f	f
101	461	2	500	500	f	10	52	f	f
102	9	1	200	200	f	8	52	f	f
103	159	1	1000	1000	f	13	53	f	f
104	173	1	1000	1000	f	13	53	f	f
105	13	1	150	150	f	8	53	f	f
106	6	2	300	300	f	8	54	f	f
107	50	5	1350	1400	f	10	55	f	f
108	10	2	200	200	f	8	55	f	f
109	461	4	500	500	f	10	56	f	f
110	9	2	200	200	f	8	56	f	f
111	123	4	1000	1000	f	10	57	f	f
112	132	7	1000	1000	f	10	58	f	f
113	6	2	300	300	f	8	58	f	f
114	81	3	1200	1300	f	10	59	f	f
115	2	2	200	300	f	8	59	f	f
116	9	1	200	200	f	8	60	f	f
117	10	1	2500	2500	f	8	61	t	t
118	5	1	1800	1800	f	8	61	t	t
119	8	1	2700	2700	f	8	61	t	t
120	3	1	3400	3400	f	8	61	t	t
121	9	1	2500	2500	f	8	61	t	t
97	12	1	2800	2800	f	8	50	t	t
122	115	5	1000	1000	f	10	62	f	f
123	461	5	500	500	f	10	63	f	f
124	7	1	300	300	f	8	63	f	f
125	122	1	1000	1000	f	10	64	f	f
126	9	1	200	200	f	8	64	f	f
127	9	1	200	200	f	8	65	f	f
128	415	2	500	600	f	10	66	f	f
129	3	1	300	300	f	8	67	f	f
131	3	3	300	300	f	8	68	f	f
132	151	5	1800	2000	f	10	69	f	f
133	3	2	300	300	f	8	69	f	f
134	10	1	2500	200	f	8	70	t	t
135	389	3	1300	1300	f	10	71	f	f
136	162	2	2000	2000	f	10	72	f	f
137	1	1	300	300	f	8	72	f	f
138	50	3	1300	1400	f	10	73	f	f
139	1	1	300	300	f	8	73	f	f
140	78	1	1400	1400	f	10	73	f	f
141	2	1	300	300	f	8	73	f	f
142	137	4	1000	1000	f	10	74	f	f
143	8	1	2700	2700	f	8	75	t	t
144	19	1	1000	1000	f	10	76	f	f
145	9	1	200	200	f	8	76	f	f
146	85	1	1200	1200	f	10	77	f	f
147	12	1	2800	2800	f	8	78	t	t
148	272	4	1200	1200	f	10	79	f	f
149	11	1	200	200	f	8	79	f	f
150	312	2	2000	2000	f	10	80	f	f
151	323	1	1500	1500	f	10	80	f	f
152	166	6	1200	1400	f	10	80	f	f
153	6	2	300	300	f	8	80	f	f
154	227	1	800	800	f	10	81	f	f
155	9	1	200	200	f	8	81	f	f
156	223	2	500	500	f	10	82	f	f
157	9	1	200	200	f	8	82	f	f
158	461	5	500	500	f	10	83	f	f
159	9	2	150	200	f	8	83	f	f
160	85	1	1200	1200	f	10	84	f	f
161	94	2	1000	1000	f	10	85	f	f
162	10	1	200	200	f	8	85	f	f
167	50	6	1200	1400	f	10	87	f	f
168	363	4	1400	1600	f	10	87	f	f
169	393	2	1300	1300	f	10	87	f	f
170	9	5	200	200	f	8	87	f	f
171	160	7	1800	2000	f	10	88	f	f
172	9	3	200	200	f	8	88	f	f
173	121	3	1000	1000	f	10	89	f	f
174	10	1	200	200	f	8	89	f	f
175	383	1	1000	1000	f	10	90	f	f
176	117	3	1400	1400	f	10	90	f	f
177	9	2	200	200	f	8	90	f	f
178	50	1	1300	1400	f	10	91	f	f
180	320	4	2700	3000	f	10	93	f	f
181	197	2	2700	3000	f	10	93	f	f
182	3	2	300	300	f	8	93	f	f
183	35	1	1400	1100	f	10	94	f	f
184	3	2	300	300	f	8	95	f	f
185	21	3	1400	1400	f	10	96	f	f
186	9	1	200	200	f	8	96	f	f
187	203	2	2800	3000	f	10	97	f	f
188	145	5	1800	2000	f	10	97	f	f
189	9	1	2500	2500	f	8	98	t	t
190	274	1	750	800	f	13	99	f	f
191	420	3	600	600	f	10	99	f	f
192	9	1	200	200	f	8	99	f	f
193	13	1	100	150	f	8	99	f	f
194	128	3	1000	1000	f	10	100	f	f
195	133	2	800	800	f	10	100	f	f
196	9	2	200	200	f	8	100	f	f
197	121	1	1000	1000	f	10	101	f	f
198	10	1	0	200	f	8	101	f	f
199	461	2	500	500	f	10	102	f	f
200	9	1	200	200	f	8	102	f	f
201	457	3	700	700	f	10	103	f	f
202	11	1	200	200	f	8	103	f	f
203	420	1	600	600	t	10	104	f	f
204	188	4	1600	1600	f	10	105	f	f
205	150	4	1700	2000	f	10	106	f	f
206	6	1	300	300	f	8	106	f	f
207	85	1	1200	1200	f	10	107	f	f
208	394	4	1000	1000	f	10	108	f	f
209	3	1	300	300	f	8	108	f	f
210	457	1	700	700	t	10	109	f	f
211	461	2	500	500	f	10	110	f	f
212	9	1	200	200	f	8	110	f	f
213	452	1	600	600	f	10	111	f	f
214	13	1	150	150	f	8	111	f	f
216	13	1	150	150	f	8	112	f	f
217	115	3	1000	1000	f	10	113	f	f
218	212	1	1600	1700	f	13	113	f	f
228	10	1	2500	2500	f	8	118	t	t
215	381	1	1200	1300	f	13	112	f	f
219	87	1	1200	1200	f	10	114	f	f
220	10	2	200	200	f	8	114	f	f
221	10	1	2500	2500	f	8	115	t	t
222	103	1	1600	1400	f	10	116	f	f
223	40	1	1000	1000	f	10	116	f	f
224	12	1	250	250	f	8	116	f	f
225	3	1	3400	3400	f	8	117	t	t
226	5	1	1800	1800	f	8	118	t	t
227	6	1	3400	3400	f	8	118	t	t
229	328	1	1500	1500	f	10	119	f	f
230	87	1	1200	1200	f	10	120	f	f
231	371	6	1300	1400	f	10	121	f	f
130	459	6	550	600	f	10	68	f	f
232	86	1	1100	1100	f	10	122	f	f
233	181	8	1800	2000	f	10	123	f	f
234	3	3	300	300	f	8	123	f	f
236	355	2	1600	1600	f	10	124	f	f
237	2	1	1000	1100	f	13	124	f	f
238	13	1	150	150	f	8	124	f	f
239	303	1	700	800	f	10	125	f	f
241	9	1	200	200	f	8	125	f	f
242	88	1	1000	1000	f	10	126	f	t
243	332	6	1250	1300	f	10	127	f	f
244	12	4	250	250	f	8	127	f	f
179	8	1	2700	2500	f	8	92	t	t
245	80	1	1300	1300	f	10	128	f	f
246	206	1	1500	1700	f	13	129	f	f
247	198	1	1500	1700	f	13	129	f	f
248	21	2	1100	1100	f	10	129	f	f
249	160	1	1300	1300	f	10	129	f	f
250	12	2	200	250	f	8	129	f	f
251	35	1	1000	1000	f	10	129	f	f
252	461	2	500	500	f	10	129	f	f
254	129	4	1000	1000	f	10	130	f	f
255	134	1	1000	1000	f	10	130	f	f
256	9	2	200	200	f	8	130	f	f
258	140	7	1300	1400	f	10	131	f	f
259	10	2	200	200	f	8	131	f	f
261	362	4	1600	1600	f	10	132	f	f
262	6	1	300	300	f	8	132	f	f
263	163	1	1800	2000	f	10	133	f	f
264	186	3	1800	2000	f	10	133	f	f
265	6	1	300	300	f	8	133	f	f
267	461	1	500	500	f	10	134	f	f
268	136	2	1000	1100	f	10	135	f	f
269	9	1	200	200	f	8	135	f	f
270	71	4	1300	1400	f	10	136	f	f
271	38	1	1300	1400	f	10	136	f	f
272	30	4	1300	1400	f	10	136	f	f
273	43	1	1300	1400	f	10	136	f	f
274	6	2	300	300	f	8	136	f	f
275	9	3	200	200	f	8	136	f	f
277	347	1	1200	1200	f	10	137	f	f
278	346	4	1500	1600	f	10	137	f	f
279	106	3	1500	1600	f	10	137	f	f
280	464	4	1500	1600	f	10	137	f	f
281	206	5	2800	3000	f	10	137	f	f
282	235	1	1800	1800	f	13	137	f	f
283	3	6	200	300	f	8	137	f	f
285	33	2	1400	1400	f	10	138	f	f
286	44	2	1400	1400	f	10	138	f	f
287	9	1	2500	2500	f	8	139	t	t
288	6	1	300	300	f	8	37	f	f
289	175	1	1000	1000	f	13	140	f	f
290	13	1	100	150	f	8	140	f	f
291	302	1	500	600	f	10	141	f	f
292	13	1	100	150	f	8	142	f	f
293	462	3	800	800	f	10	143	f	f
294	5	1	200	200	f	8	143	f	f
295	13	1	100	150	f	8	144	f	f
296	13	1	150	150	f	8	143	f	f
297	461	1	500	500	f	10	145	f	f
298	8	2	250	300	f	8	145	f	f
299	3	1	3400	3400	f	8	146	t	t
300	376	5	1300	1400	f	10	147	f	f
301	9	2	200	200	f	8	147	f	f
302	319	1	1500	1500	f	10	148	f	f
303	9	1	0	200	f	8	148	f	f
304	78	4	1300	1400	f	10	149	f	f
305	3	3	300	300	f	8	149	f	f
306	8	1	2700	2700	f	8	150	t	t
307	370	2	1400	1600	f	10	151	f	f
308	369	4	1400	1600	f	10	151	f	f
309	10	2	200	200	f	8	151	f	f
310	467	3	1600	1600	f	10	152	f	f
312	9	2	200	200	f	8	152	f	f
313	19	3	1000	1000	f	10	153	f	f
314	9	1	200	200	f	8	153	f	f
315	461	8	500	500	f	10	154	f	f
316	13	2	150	150	f	8	154	f	f
317	120	1	1600	1600	t	10	155	f	f
318	8	1	2700	2700	f	8	156	t	t
319	10	1	200	200	f	8	157	f	f
320	285	1	1300	1300	f	10	158	f	f
329	170	5	1300	1400	f	10	163	f	f
330	15	1	300	300	f	8	163	f	f
331	84	3	600	800	f	10	164	f	f
332	462	4	700	800	f	10	164	f	f
333	8	2	300	300	f	8	164	f	f
335	120	1	1600	1600	t	10	166	f	f
336	159	3	1900	2000	f	10	167	f	f
337	129	4	1000	1000	f	10	167	f	f
338	6	2	250	300	f	8	167	f	f
339	381	1	1000	1000	f	10	168	f	f
340	9	1	200	200	f	8	168	f	f
341	237	1	1250	1250	f	13	169	f	t
342	108	1	450	450	f	13	169	f	t
343	463	6	1600	1600	f	10	170	f	f
344	8	2	300	300	f	8	170	f	f
345	78	1	1300	1400	f	10	171	f	f
346	9	1	200	200	f	8	172	f	f
347	8	1	300	300	f	8	173	f	f
348	10	1	200	200	f	8	174	f	f
349	486	4	1100	1200	f	10	175	f	f
350	9	2	200	200	f	8	175	f	f
351	171	4	1400	1400	f	10	176	f	f
352	9	2	200	200	f	8	176	f	f
367	3	24	300	300	f	8	181	f	f
353	3	3	300	300	f	8	177	f	f
354	10	1	2500	2500	f	8	178	t	t
355	13	1	150	150	f	8	179	f	f
356	205	8	2800	3000	f	10	180	f	f
357	3	1	300	300	f	8	180	f	f
358	62	7	700	800	f	10	181	f	f
359	150	11	1900	2000	f	10	181	f	f
360	183	8	1500	1600	f	10	181	f	f
361	187	8	1500	1600	f	10	181	f	f
362	375	9	1300	1400	f	10	181	f	f
363	206	10	2900	3000	f	10	181	f	f
364	352	12	1500	1600	f	10	181	f	f
365	353	4	1500	1600	f	10	181	f	f
366	48	12	1300	1400	f	10	181	f	f
368	3	1	3400	3400	f	8	182	t	t
370	13	1	150	150	f	8	183	f	f
371	12	1	2800	2800	f	8	184	t	t
372	8	1	2700	2700	f	8	185	t	t
373	9	1	2500	2500	f	8	185	t	t
374	10	1	2500	2500	f	8	185	t	t
375	474	1	1300	1400	f	10	186	f	f
376	36	5	1300	1400	f	10	186	f	f
377	3	2	300	300	f	8	186	f	f
378	15	4	300	350	f	8	187	f	f
379	319	1	800	900	f	13	188	f	f
380	13	2	150	150	f	8	188	f	f
381	83	5	600	800	f	10	189	f	f
382	9	1	2500	2500	f	8	190	t	t
383	10	1	2500	2500	f	8	190	t	t
384	156	2	1400	1400	f	10	191	f	f
385	3	1	3400	3400	f	8	192	t	t
387	163	4	1800	2000	f	10	194	f	f
388	9	2	200	200	f	8	194	f	f
389	16	2	1300	1400	f	10	195	f	f
390	38	2	1300	1400	f	10	195	f	f
391	112	2	1300	1400	f	10	195	f	f
392	111	2	1300	1400	f	10	195	f	f
393	3	3	300	300	f	8	195	f	f
394	309	1	800	800	f	10	196	f	f
395	299	1	800	800	f	10	196	f	f
396	297	1	800	800	f	10	196	f	f
397	298	1	800	800	f	10	196	f	f
398	9	1	2500	2500	f	8	197	t	t
399	268	4	1100	1200	f	10	198	f	f
400	278	4	1100	1200	f	10	198	f	f
401	3	1	300	300	f	8	198	f	f
402	373	3	1200	1200	f	10	199	f	f
403	469	2	1400	1400	f	10	199	f	f
404	9	2	200	200	f	8	199	f	f
405	206	2	2800	3000	f	10	200	f	f
406	487	5	2200	2400	f	10	200	f	f
407	3	2	200	300	f	8	200	f	f
408	9	1	2500	2500	f	8	201	t	t
409	385	1	1000	1000	f	10	202	f	f
410	9	1	2500	2500	f	8	203	t	t
411	115	2	1000	1000	f	10	204	f	f
412	3	1	300	300	f	8	205	f	f
413	215	2	1200	1200	f	10	206	f	f
414	9	1	200	200	f	8	206	f	f
415	168	6	1600	1400	f	10	207	f	f
416	9	3	200	200	f	8	207	f	f
417	138	7	1000	1000	f	10	208	f	f
418	8	1	300	300	f	8	208	f	f
419	9	1	200	200	f	8	209	f	f
478	9	4	1400	1400	f	10	241	f	f
420	369	1	1400	1600	t	10	210	f	f
421	374	1	1000	1000	f	10	211	f	f
422	469	1	1400	1400	t	10	211	f	f
423	9	1	200	200	f	8	211	f	f
424	461	1	500	500	f	10	212	f	f
425	34	7	1000	1000	f	10	213	f	f
426	136	1	800	800	f	13	214	f	f
427	13	1	150	150	f	8	214	f	f
429	494	1	250	250	f	10	17	f	f
430	494	8	250	250	f	10	143	f	f
431	494	3	250	250	f	10	144	f	f
479	467	4	1500	1600	f	10	241	f	f
432	461	1	500	500	f	10	179	f	f
480	468	1	1500	1600	f	10	241	f	f
481	120	5	1500	1600	f	10	241	f	f
435	494	4	175	250	f	10	183	f	f
436	8	1	2700	2700	f	8	216	t	t
437	158	8	1800	2000	f	10	217	f	f
438	490	8	1500	1600	f	10	218	f	f
439	8	2	300	300	f	8	218	f	f
440	469	4	1400	1400	f	10	219	f	f
441	332	1	1300	1300	f	10	220	f	f
442	134	3	1000	1000	f	10	221	f	f
443	129	4	1000	1000	f	10	221	f	f
444	9	3	200	200	f	8	221	f	f
445	495	9	1700	1700	f	10	181	f	f
447	3	1	3400	3400	f	8	223	t	t
446	484	3	1500	1600	f	10	222	f	f
448	140	6	1300	1400	f	10	224	f	f
449	12	1	200	250	f	8	224	f	f
450	417	1	1700	1700	f	13	225	f	f
451	19	3	1000	1000	f	10	225	f	f
452	10	1	200	200	f	8	225	f	f
453	494	2	250	250	f	10	225	f	f
454	332	2	1300	1300	f	10	226	f	f
455	362	6	1500	1600	f	10	227	f	f
457	371	10	1300	1400	f	10	228	f	f
458	9	10	200	200	f	8	228	f	f
459	11	1	2100	2100	f	8	229	t	t
463	494	3	250	250	f	10	231	f	f
464	10	1	200	200	f	8	232	f	f
465	364	7	1700	1800	f	10	233	f	f
466	8	2	300	300	f	8	233	f	f
467	494	1	250	250	f	10	234	f	f
468	86	1	1100	1100	f	10	235	f	f
456	372	6	1300	1400	f	10	228	f	f
469	6	1	3400	3400	f	8	236	t	t
470	175	4	1300	1400	f	10	237	f	f
471	9	2	200	200	f	8	237	f	f
472	9	1	2500	2500	f	8	238	t	t
460	472	2	1200	1200	f	10	230	f	f
461	10	6	200	200	f	8	230	f	f
482	188	4	1500	1600	f	10	241	f	f
473	181	1	550	550	f	13	239	f	t
474	217	1	1700	1700	f	13	240	f	f
475	208	9	2800	3000	f	10	241	f	f
476	205	5	2800	3000	f	10	241	f	f
477	206	6	2800	3000	f	10	241	f	f
483	9	20	200	200	f	8	241	f	f
484	129	5	1000	1000	f	10	242	f	f
485	10	3	200	200	f	8	242	f	f
486	3	3	300	300	f	8	243	f	f
487	478	1	1300	1300	f	10	243	f	f
488	479	1	1300	1300	f	10	243	f	f
490	499	1	1300	1300	f	10	243	f	f
491	288	2	1300	1500	f	10	245	f	f
492	9	1	200	200	f	8	245	f	f
493	53	1	1600	1600	f	10	246	f	f
494	8	1	2700	2700	f	8	247	t	t
495	490	7	1500	1600	f	10	248	f	f
496	9	3	200	200	f	8	248	f	f
497	113	8	1400	1400	f	10	249	f	f
498	156	4	1400	1400	f	10	250	f	f
499	9	2	200	200	f	8	250	f	f
500	118	1	800	800	f	13	251	f	f
501	13	1	150	150	f	8	251	f	f
502	397	2	500	600	f	10	252	f	f
503	304	3	1200	1200	f	10	252	f	f
504	32	3	1000	1000	f	10	252	f	f
505	9	3	200	200	f	8	252	f	f
506	13	1	150	150	f	8	252	f	f
507	9	1	2500	2500	f	8	253	t	t
508	32	4	1000	1000	f	10	254	f	f
509	9	2	200	200	f	8	254	f	f
510	3	1	300	300	f	8	255	f	f
511	484	4	1500	1600	f	10	256	f	f
512	131	2	1000	1000	f	10	257	f	f
513	135	1	1000	1000	f	10	257	f	f
514	10	1	200	200	f	8	257	f	f
515	134	9	1000	1000	f	10	258	f	f
516	461	3	500	500	f	10	259	f	f
517	11	1	200	200	f	8	259	f	f
518	441	1	6800	7000	f	13	241	f	f
519	112	1	800	800	f	13	260	f	f
520	13	1	150	150	f	8	260	f	f
521	9	1	2500	2500	f	8	261	t	t
522	249	1	1300	1500	f	13	262	f	f
523	194	1	1500	1700	f	13	262	f	f
524	257	1	1300	1500	f	13	262	f	f
525	365	1	900	1100	f	13	262	f	f
526	13	1	0	150	f	8	262	f	f
527	105	2	1600	1600	f	10	263	f	f
528	107	1	1600	1600	f	10	263	f	f
529	8	1	300	300	f	8	263	f	f
530	442	1	7000	7000	f	13	264	f	f
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-10-16 20:02:07.000921+03	1	Начальные остатки  () 	1	[{"added": {}}]	16	1
2	2017-10-16 20:02:11.372736+03	1	Начальные остатки  ()  2017-10-16 20:02:08	1	[{"added": {}}]	15	1
3	2017-10-16 20:10:50.459311+03	1	Начальные остатки  ()  2017-10-16 20:02:08	2	[{"changed": {"object": "ACM \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 \\u2014 23 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}]	15	1
4	2017-10-16 20:12:14.740517+03	1	Начальные остатки  ()  2017-10-16 20:02:08	2	[{"changed": {"object": "8684-42 [4A] \\u2014 41\\u0440\\u0443\\u043b (4/1) \\u2014 17 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}]	15	1
5	2017-10-16 20:14:25.40951+03	1	Начальные остатки  ()  2017-10-16 20:02:08	2	[{"changed": {"fields": ["count"], "object": "8684-42 [4A] \\u2014 42\\u0440\\u0443\\u043b (4/1) \\u2014 18 \\u2014 0\\u20bd", "name": "receipt content"}}]	15	1
6	2017-10-16 20:21:11.436093+03	1	Начальные остатки  ()  2017-10-16 20:02:08	2	[{"changed": {"object": "8684-42 [4A] \\u2014 0\\u0440\\u0443\\u043b (4/1) \\u2014 17 \\u2014 0\\u20bd", "name": "receipt content", "fields": ["count"]}}]	15	1
7	2017-10-16 20:22:59.989092+03	1	Начальные остатки  ()  2017-10-16 20:02:08	2	[{"changed": {"object": "8684-42 [4A] \\u2014 0\\u0440\\u0443\\u043b (4/1) \\u2014 19 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}]	15	1
8	2017-10-16 20:24:08.417521+03	2	Начальные остатки  ()  2017-10-16 20:23:46	1	[{"added": {}}, {"added": {"object": "8684-42 [4A] \\u2014 0\\u0440\\u0443\\u043b (4/1) \\u2014 10 \\u2014 0\\u20bd", "name": "receipt content"}}]	15	1
9	2017-10-16 20:25:39.372065+03	2	Начальные остатки  ()  2017-10-16 20:23:46	2	[{"changed": {"name": "receipt content", "object": "8684-42 [4A] \\u2014 0\\u0440\\u0443\\u043b (4/1) \\u2014 11 \\u2014 0\\u20bd", "fields": ["count"]}}]	15	1
10	2017-10-16 20:26:35.580206+03	2	Начальные остатки  ()  2017-10-16 20:23:46	2	[{"changed": {"object": "8684-42 [4A] \\u2014 39\\u0440\\u0443\\u043b (4/1) \\u2014 20 \\u2014 0\\u20bd", "name": "receipt content", "fields": ["count"]}}]	15	1
11	2017-10-16 20:27:32.354961+03	2	Начальные остатки  ()  2017-10-16 20:23:46	2	[{"changed": {"object": "8684-42 [4A] \\u2014 38\\u0440\\u0443\\u043b (4/1) \\u2014 19 \\u2014 0\\u20bd", "name": "receipt content", "fields": ["count"]}}]	15	1
12	2017-10-16 20:28:53.641542+03	1	1 Начальные остатки  ()  20:28:33	1	[{"added": {}}, {"added": {"name": "selling content", "object": "1 \\u041d\\u0430\\u0447\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u0438  ()  20:28:33 - 1500\\u20bd"}}]	19	1
13	2017-10-16 20:40:51.416226+03	1	1 Начальные остатки  2017-10-16 17:28:33 (20:40:32)	1	[{"added": {}}, {"added": {"name": "purchase return content", "object": "1 \\u041d\\u0430\\u0447\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u043e\\u0441\\u0442\\u0430\\u0442\\u043a\\u0438  2017-10-16 17:28:33 (20:40:32) \\u2014 2"}}]	18	1
14	2017-10-16 20:41:28.409034+03	1	1 Начальные остатки  2017-10-16 17:28:33 (17:40:32)	3		18	1
15	2017-10-16 20:41:35.645182+03	1	1 Начальные остатки  2017-10-16 17:28:33	3		19	1
16	2017-10-16 20:41:44.720433+03	2	Начальные остатки  2017-10-16 17:23:46	3		15	1
17	2017-10-16 20:42:38.346664+03	1	Начальные остатки  2017-10-16 20:02:08	2	[{"changed": {"object": "8684-42 [4A] \\u2014 18\\u0440\\u0443\\u043b (4/1) \\u2014 18 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}]	15	1
18	2017-10-16 20:47:05.9906+03	1	Начальные остатки  2017-10-16 20:02:08	2	[{"changed": {"name": "receipt content", "object": "ACM \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 \\u2014 24 \\u2014 0\\u20bd", "fields": ["count"]}}]	15	1
19	2017-10-19 14:39:02.19879+03	233	53167 [D/606] — 10рул (9/11)	2	[{"changed": {"fields": ["count"]}}]	10	1
20	2017-10-19 15:17:58.653031+03	311	26854 [1307040] — 4рул (8/6)	2	[{"changed": {"fields": ["cell"]}}]	10	1
21	2017-10-19 15:19:38.873161+03	197	50100 [1311130] — 4рул (8/6)	2	[{"changed": {"fields": ["showcase"]}}]	10	1
22	2017-10-19 15:19:40.285421+03	320	50100 [1308300] — 4рул (8/6)	2	[{"changed": {"fields": ["showcase"]}}]	10	1
23	2017-10-19 15:21:19.489562+03	380	7356-21 [012] — 1	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
24	2017-10-19 15:25:24.060137+03	378	БРАК	1	[{"added": {}}]	11	1
25	2017-10-19 15:25:38.802252+03	461	БРАК [] — 57	1	[{"added": {}}]	10	1
26	2017-10-19 15:28:56.568289+03	1	Начальные остатки  2017-10-16 20:02:08	2	[{"added": {"object": "\\u0411\\u0420\\u0410\\u041a [] \\u2014 57 \\u2014 57 \\u2014 0\\u20bd", "name": "receipt content"}}, {"changed": {"object": "988057 [509] \\u2014 13\\u0440\\u0443\\u043b (4/14) \\u2014 13 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}, {"changed": {"object": "8914-19 [18A] \\u2014 8\\u0440\\u0443\\u043b (4/15) \\u2014 8 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}, {"changed": {"object": "981-42 [10106A1] \\u2014 20\\u0440\\u0443\\u043b (4/16) \\u2014 20 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}, {"changed": {"object": "EX 8/786/09-N106 [132531] \\u2014 23\\u0440\\u0443\\u043b (5/12) \\u2014 23 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}, {"changed": {"object": "7328-24 [001] \\u2014 25\\u0440\\u0443\\u043b (6/5) \\u2014 25 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}, {"changed": {"object": "N2546-1 [140325] \\u2014 8\\u0440\\u0443\\u043b (7/12) \\u2014 8 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}, {"changed": {"object": "53167 [D/606] \\u2014 10\\u0440\\u0443\\u043b (9/11) \\u2014 10 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}]	15	1
27	2017-10-19 15:29:48.743013+03	227	EX 8/851/14-N106 [134825] — 1	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
28	2017-10-19 15:29:55.930437+03	226	EX 8/851/13-N106 [134826] — 1	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
29	2017-10-19 15:30:18.918864+03	228	N2045-6 [140310] — 1	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
30	2017-10-19 15:30:23.544901+03	342	M 3963 [I] — 1	2	[{"changed": {"fields": ["stillage"]}}]	10	1
31	2017-10-19 15:30:27.218309+03	411	10901 [] — 2	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
32	2017-10-19 15:31:20.767591+03	94	7158-21 [001] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
33	2017-10-19 15:31:22.991282+03	392	7249-28 [001] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
34	2017-10-19 15:31:27.090673+03	133	7183-28 [002] — 2	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
35	2017-10-19 15:31:29.159749+03	390	7252-42 [003] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
36	2017-10-19 15:31:31.398651+03	382	7072-38 [006] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
37	2017-10-19 15:31:33.634056+03	391	7227-12 [006] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
38	2017-10-19 15:31:35.893748+03	393	7357-24 [010] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
39	2017-10-19 15:31:40.160092+03	136	0715-24 [011] — 2	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
40	2017-10-19 15:31:42.131853+03	99	3063-2 [014] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
41	2017-10-19 15:31:44.750051+03	218	8914-26 [11A] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
42	2017-10-19 15:31:47.744621+03	312	26854 [13-03-020] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
43	2017-10-19 15:31:50.284641+03	322	50123 [1311210] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
44	2017-10-19 15:31:52.495267+03	97	BXA-015-06-3 [143944] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
45	2017-10-19 15:31:57.089672+03	288	43138-3 [17.Feb.2014] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
46	2017-10-19 15:32:07.227584+03	259	A983382 [2011] — 2	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
47	2017-10-19 15:32:12.13419+03	57	BXA-030-15-0 [153047] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
48	2017-10-19 15:32:41.938118+03	307	2015-39 [24A] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
49	2017-10-19 15:32:44.16126+03	287	43119-3 [24.Jan.2014] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
50	2017-10-19 15:32:46.346152+03	283	43120-3 [24.Jan.2014] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
51	2017-10-19 15:32:48.411717+03	295	8743-75 [4A] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
52	2017-10-19 15:32:50.437852+03	220	8944-34 [4A] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
53	2017-10-19 15:32:52.819292+03	215	9193-42 [5A] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
54	2017-10-19 15:32:54.873485+03	216	8914-26 [8A] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
55	2017-10-19 15:32:56.981211+03	223	PV 6/248/11-N106 [92730] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
56	2017-10-19 15:32:59.099277+03	262	4342 [A] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
57	2017-10-19 15:33:02.963037+03	333	M 7332 [B] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
58	2017-10-19 15:33:04.799952+03	334	Z 2457 [F] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
59	2017-10-19 15:33:07.43572+03	336	M 3963 [O] — 2	2	[{"changed": {"fields": ["stillage"]}}]	10	1
60	2017-10-19 15:33:10.049065+03	300	46058-05 [0000] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
61	2017-10-19 15:33:15.202322+03	389	7110-22 [001] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
62	2017-10-19 15:33:18.989748+03	304	3067-7 [002] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
63	2017-10-19 15:33:23.66932+03	373	7356-22 [005] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
64	2017-10-19 15:33:48.050926+03	124	0715-13 [010] — 3	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
65	2017-10-19 15:33:58.600979+03	386	7227-21 [020] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
66	2017-10-19 15:34:01.378516+03	296	679427 [1] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
67	2017-10-19 15:34:03.617187+03	306	EX 8/429/11-N106 [128855] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
68	2017-10-19 15:34:30.53217+03	313	26800 [13-02-270] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
69	2017-10-19 15:34:32.72222+03	198	50101 [1310100] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
70	2017-10-19 15:34:36.751639+03	318	50122 [1311200] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
71	2017-10-19 15:34:40.386723+03	293	EX 8/859/17-N106 [138168] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
72	2017-10-19 15:34:42.578707+03	284	N2529-6 [140324] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
73	2017-10-19 15:34:45.001383+03	98	BXA-015-21-2 [143947] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
74	2017-10-19 15:34:47.422103+03	292	BXA-030-14-1 [151913] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
75	2017-10-19 15:34:49.863838+03	96	BXA-030-10-5 [153918] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
76	2017-10-19 15:34:52.021889+03	35	8543-77 [4A] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
77	2017-10-19 15:34:54.402448+03	305	827109 [8] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
78	2017-10-19 15:34:56.876099+03	201	70966 [A2/1306] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
79	2017-10-19 15:34:59.715409+03	315	70969 [A3/1306] — 3	2	[{"changed": {"fields": ["stillage"]}}]	10	1
80	2017-10-19 15:35:03.301188+03	261	53153 [C/606] — 3	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
81	2017-10-19 16:19:39.067197+03	13	СтройДекоП винил 150гр	1	[{"added": {}}]	8	1
82	2017-10-19 16:23:35.058664+03	1	Начальные остатки  2017-10-16 20:02:08	2	[{"added": {"name": "receipt content", "object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150\\u0433\\u0440 \\u2014 59 \\u2014 0\\u20bd"}}]	15	1
83	2017-10-19 16:28:22.084065+03	5	грунтовка	1	[{"added": {}}]	7	1
84	2017-10-19 16:28:28.539164+03	14	Decoro грунтовка 100гр	1	[{"added": {}}]	8	1
85	2017-10-19 16:28:57.173679+03	1	Начальные остатки  2017-10-16 20:02:08	2	[{"added": {"name": "receipt content", "object": "Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 \\u2014 257 \\u2014 0\\u20bd"}}]	15	1
86	2017-10-23 10:41:47.443618+03	2	розница 	1	[{"added": {}}]	16	1
87	2017-10-23 13:05:33.446445+03	2	2 розница  2017-08-29 11:14:55	1	[{"added": {}}, {"added": {"object": "2 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-08-29 11:14:55 \\u2014 7182-28 [004] \\u2014 6\\u0440\\u0443\\u043b (6/10) - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "2 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-08-29 11:14:55 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
88	2017-10-23 13:08:54.805193+03	3	3 розница  2017-08-29 13:08:41	1	[{"added": {}}, {"added": {"object": "3 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-08-29 13:08:41 \\u2014 \\u0414\\u043e\\u0440\\u043e\\u0436\\u043d\\u0430\\u044f \\u0430\\u0437\\u0431\\u0443\\u043a\\u0430 6\\u043b 204x194 - 800\\u20bd", "name": "selling content"}}, {"added": {"object": "3 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-08-29 13:08:41 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
89	2017-10-23 13:11:29.545417+03	3	ACM универсал 300гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
90	2017-10-23 13:11:47.814806+03	2	ACM флизелин 300гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
91	2017-10-23 13:12:08.037259+03	1	ACM индикатор, флизелин 300гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
92	2017-10-23 13:12:41.994021+03	11	Decoro винил, индикатор 200гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
93	2017-10-23 13:13:46.22697+03	10	Decoro индикатор, флизелин 250гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
375	2017-11-10 11:45:45.797055+03	472	07017 [0306] — 0	1	[{"added": {}}]	10	1
94	2017-10-23 13:14:57.5473+03	9	Emsland индикатор, универсал, флизелин 200гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
95	2017-10-23 13:15:09.70556+03	8	Emsland флизелин 300гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
96	2017-10-23 13:15:41.130553+03	12	PRODecoro флизелин 250гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
97	2017-10-23 13:16:24.351776+03	7	Rips винил 300гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
98	2017-10-23 13:16:39.997528+03	6	Rips флизелин 300гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
99	2017-10-23 13:17:10.921638+03	5	СтройДеко флизелин 200гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
100	2017-10-23 13:17:27.536307+03	4	СтройДеко винил 200гр	2	[{"changed": {"fields": ["wholesale_price_pack"]}}]	8	1
101	2017-10-23 13:20:31.676693+03	3	#7 Сайка 	1	[{"added": {}}]	16	1
102	2017-10-23 13:22:04.272685+03	4	4 #7 Сайка  2017-08-29 13:22:05	1	[{"added": {}}, {"added": {"object": "4 #7 \\u0421\\u0430\\u0439\\u043a\\u0430  2017-08-29 13:22:05 \\u2014 Emsland \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 2700\\u20bd", "name": "selling content"}}, {"added": {"object": "4 #7 \\u0421\\u0430\\u0439\\u043a\\u0430  2017-08-29 13:22:05 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}]	19	1
103	2017-10-23 13:23:13.042382+03	3	#4 Сайка 	2	[{"changed": {"fields": ["first_name"]}}]	16	1
104	2017-10-23 13:23:53.052482+03	4	#7 Райсат 	1	[{"added": {}}]	16	1
105	2017-10-23 13:25:30.561187+03	5	5 #7 Райсат  2017-08-31 13:25:29	1	[{"added": {}}, {"added": {"object": "5 #7 \\u0420\\u0430\\u0439\\u0441\\u0430\\u0442  2017-08-31 13:25:29 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}]	19	1
106	2017-10-23 13:27:33.960802+03	6	6 розница  2017-08-31 13:27:54	1	[{"added": {}}, {"added": {"object": "6 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-08-31 13:27:54 \\u2014 7182-23 [006] \\u2014 0 - 1000\\u20bd", "name": "selling content"}}]	19	1
107	2017-10-23 13:29:48.752482+03	2	Зайнаб (соседка) 	2	[{"changed": {"fields": ["first_name"]}}]	16	1
108	2017-10-23 13:29:56.300902+03	7	7 Зайнаб (соседка)  2017-08-31 13:30:08	1	[{"added": {}}, {"added": {"object": "7 \\u0417\\u0430\\u0439\\u043d\\u0430\\u0431 (\\u0441\\u043e\\u0441\\u0435\\u0434\\u043a\\u0430)  2017-08-31 13:30:08 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 0\\u20bd", "name": "selling content"}}]	19	1
109	2017-10-23 13:31:46.421306+03	2	розница 	2	[{"changed": {"fields": ["first_name"]}}]	16	1
110	2017-10-23 13:31:51.086969+03	5	Зайнаб (соседка) 	1	[{"added": {}}]	16	1
111	2017-10-23 13:31:55.105485+03	7	7 Зайнаб (соседка)  2017-08-31 13:30:08	2	[{"changed": {"fields": ["buyer"]}}]	19	1
112	2017-10-23 13:36:38.419961+03	8	8 розница  2017-09-03 13:34:12	1	[{"added": {}}, {"added": {"object": "8 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-03 13:34:12 \\u2014 EX 8/859/08-N106 [138164] \\u2014 15\\u0440\\u0443\\u043b (5/3) - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "8 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-03 13:34:12 \\u2014 2342-2 [003] \\u2014 12\\u0440\\u0443\\u043b (5/4) - 800\\u20bd", "name": "selling content"}}, {"added": {"object": "8 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-03 13:34:12 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
113	2017-10-23 13:38:04.809364+03	9	9 розница  2017-09-04 13:38:51	1	[{"added": {}}, {"added": {"object": "9 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-04 13:38:51 \\u2014 \\u0421\\u0435\\u0432\\u0435\\u0440\\u043d\\u043e\\u0435 \\u0441\\u0438\\u044f\\u043d\\u0438\\u0435 6\\u043b 294x134 - 1300\\u20bd", "name": "selling content"}}]	19	1
114	2017-10-23 13:39:35.708046+03	10	10 розница  2017-09-04 13:39:48	1	[{"added": {}}, {"added": {"object": "10 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-04 13:39:48 \\u2014 07022 [0154] \\u2014 2\\u0440\\u0443\\u043b (5/13) - 1100\\u20bd", "name": "selling content"}}, {"added": {"object": "10 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-04 13:39:48 \\u2014 ACM \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
115	2017-10-23 14:12:41.511773+03	11	11 розница  2017-09-05 14:10:30	1	[{"added": {}}, {"added": {"object": "11 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-05 14:10:30 \\u2014 2348-2 [002] \\u2014 9\\u0440\\u0443\\u043b (5/11) - 700\\u20bd", "name": "selling content"}}, {"added": {"object": "11 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-05 14:10:30 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
116	2017-10-23 14:14:04.819243+03	12	12 розница  2017-09-05 14:14:27	1	[{"added": {}}, {"added": {"object": "12 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-05 14:14:27 \\u2014 0714-21 [003] \\u2014 0\\u0440\\u0443\\u043b (4/10) - 1100\\u20bd", "name": "selling content"}}, {"added": {"object": "12 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-05 14:14:27 \\u2014 288112 [001] \\u2014 0 - 1000\\u20bd", "name": "selling content"}}]	19	1
117	2017-10-23 14:20:49.325058+03	13	13 розница  2017-09-06 14:20:56	1	[{"added": {}}, {"added": {"object": "13 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-06 14:20:56 \\u2014 7153-22 [012] \\u2014 16\\u0440\\u0443\\u043b (6/6) - 1600\\u20bd", "name": "selling content"}}, {"added": {"object": "13 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-06 14:20:56 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
118	2017-10-23 14:22:29.119659+03	14	14 розница  2017-09-07 14:22:55	1	[{"added": {}}, {"added": {"object": "14 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-07 14:22:55 \\u2014 8914-26 [9A] \\u2014 0 - 1000\\u20bd", "name": "selling content"}}]	19	1
119	2017-10-23 14:23:02.347935+03	6	#18 Зуля 	1	[{"added": {}}]	16	1
120	2017-10-23 14:24:35.445483+03	15	15 #18 Зуля  2017-09-07 14:24:31	1	[{"added": {}}, {"added": {"object": "15 #18 \\u0417\\u0443\\u043b\\u044f  2017-09-07 14:24:31 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}]	19	1
378	2017-11-10 11:50:45.74975+03	473	EX 8/785/20-N106 [139980] — 0	1	[{"added": {}}]	10	1
417	2017-11-10 13:16:33.730734+03	315	70969 [A3/1306] — 3	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
121	2017-10-23 14:28:50.458226+03	16	16 розница  2017-09-09 14:27:44	1	[{"added": {}}, {"added": {"object": "16 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-09 14:27:44 \\u2014 925-33 [50525B1] \\u2014 8\\u0440\\u0443\\u043b (6/9) - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "16 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-09 14:27:44 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
122	2017-10-23 14:43:28.191728+03	17	17 розница  2017-09-10 14:37:16	1	[{"added": {}}, {"added": {"object": "17 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-10 14:37:16 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
123	2017-10-23 14:49:34.447191+03	17	17 розница  2017-09-10 14:37:16	2	[{"added": {"object": "17 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-10 14:37:16 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 50\\u20bd", "name": "selling content"}}]	19	1
124	2017-10-23 14:50:28.834876+03	7	#2 Арслан 	1	[{"added": {}}]	16	1
125	2017-10-23 14:52:11.896271+03	18	18 #2 Арслан  2017-09-10 14:52:03	1	[{"added": {}}, {"added": {"object": "18 #2 \\u0410\\u0440\\u0441\\u043b\\u0430\\u043d  2017-09-10 14:52:03 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}]	19	1
126	2017-10-23 15:48:43.02728+03	19	19 розница  2017-09-11 15:25:59	1	[{"added": {}}, {"added": {"object": "19 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-11 15:25:59 \\u2014 988057 [509] \\u2014 8\\u0440\\u0443\\u043b (4/14) - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "19 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-11 15:25:59 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 250\\u20bd", "name": "selling content"}}]	19	1
127	2017-10-23 15:52:05.498151+03	20	20 розница  2017-09-12 15:50:59	1	[{"added": {}}, {"added": {"object": "20 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-12 15:50:59 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 56 - 500\\u20bd", "name": "selling content"}}, {"added": {"object": "20 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-12 15:50:59 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
128	2017-10-23 15:55:31.68837+03	21	21 розница  2017-09-13 15:55:58	1	[{"added": {}}, {"added": {"object": "21 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-13 15:55:58 \\u2014 Emsland \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 250\\u20bd", "name": "selling content"}}]	19	1
129	2017-10-23 15:57:32.320126+03	22	22 розница  2017-09-13 15:57:36	1	[{"added": {}}, {"added": {"object": "22 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-13 15:57:36 \\u2014 07020 [0143] \\u2014 7\\u0440\\u0443\\u043b (5/10) - 1300\\u20bd", "name": "selling content"}}]	19	1
130	2017-10-23 16:00:33.233551+03	23	23 розница  2017-09-14 15:59:27	1	[{"added": {}}, {"added": {"object": "23 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-14 15:59:27 \\u2014 7153-22 [012] \\u2014 15\\u0440\\u0443\\u043b (6/6) - 1600\\u20bd", "name": "selling content"}}]	19	1
131	2017-10-23 17:19:15.747956+03	24	24 розница  2017-09-16 16:28:55	1	[{"added": {}}, {"added": {"object": "24 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-16 16:28:55 \\u2014 0714-28 [001] \\u2014 11\\u0440\\u0443\\u043b (4/2) - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "24 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-16 16:28:55 \\u2014 0713-28 [001] \\u2014 28\\u0440\\u0443\\u043b (4/4) - 1300\\u20bd", "name": "selling content"}}]	19	1
132	2017-10-23 17:22:59.733028+03	25	25 розница  2017-09-16 17:21:27	1	[{"added": {}}, {"added": {"object": "25 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-16 17:21:27 \\u2014 8914-26 [18A] \\u2014 0 - 900\\u20bd", "name": "selling content"}}, {"added": {"object": "25 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-16 17:21:27 \\u2014 8914-26 [13A] \\u2014 0 - 900\\u20bd", "name": "selling content"}}, {"added": {"object": "25 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-16 17:21:27 \\u2014 8914-26 [6A] \\u2014 0 - 900\\u20bd", "name": "selling content"}}, {"added": {"object": "25 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-16 17:21:27 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
133	2017-10-23 17:24:13.895278+03	8	Заира (одноклассница) 	1	[{"added": {}}]	16	1
134	2017-10-23 17:34:04.298487+03	26	26 Заира (одноклассница)  2017-09-16 17:25:50	1	[{"added": {}}, {"added": {"object": "26 \\u0417\\u0430\\u0438\\u0440\\u0430 (\\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u0446\\u0430)  2017-09-16 17:25:50 \\u2014 788071 [4A] \\u2014 11\\u0440\\u0443\\u043b (4/11) - 1200\\u20bd", "name": "selling content"}}, {"added": {"object": "26 \\u0417\\u0430\\u0438\\u0440\\u0430 (\\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u0446\\u0430)  2017-09-16 17:25:50 \\u2014 788081 [4A] \\u2014 6\\u0440\\u0443\\u043b (4/14) - 1200\\u20bd", "name": "selling content"}}, {"added": {"object": "26 \\u0417\\u0430\\u0438\\u0440\\u0430 (\\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u0446\\u0430)  2017-09-16 17:25:50 \\u2014 98386 [34] \\u2014 1\\u0440\\u0443\\u043b (5/16) - 1100\\u20bd", "name": "selling content"}}, {"added": {"object": "26 \\u0417\\u0430\\u0438\\u0440\\u0430 (\\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u0446\\u0430)  2017-09-16 17:25:50 \\u2014 EX 8/859/17-N106 [138168] \\u2014 0 - 800\\u20bd", "name": "selling content"}}, {"added": {"object": "26 \\u0417\\u0430\\u0438\\u0440\\u0430 (\\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u0446\\u0430)  2017-09-16 17:25:50 \\u2014 8543-77 [4A] \\u2014 2 - 1100\\u20bd", "name": "selling content"}}, {"added": {"object": "26 \\u0417\\u0430\\u0438\\u0440\\u0430 (\\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u0446\\u0430)  2017-09-16 17:25:50 \\u2014 EX 8/859/08-N106 [138164] \\u2014 11\\u0440\\u0443\\u043b (5/3) - 1100\\u20bd", "name": "selling content"}}, {"added": {"object": "26 \\u0417\\u0430\\u0438\\u0440\\u0430 (\\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u0446\\u0430)  2017-09-16 17:25:50 \\u2014 45a-064-05 [0010] \\u2014 26\\u0440\\u0443\\u043b (4/11) - 800\\u20bd", "name": "selling content"}}, {"added": {"object": "26 \\u0417\\u0430\\u0438\\u0440\\u0430 (\\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u0446\\u0430)  2017-09-16 17:25:50 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}, {"added": {"object": "26 \\u0417\\u0430\\u0438\\u0440\\u0430 (\\u043e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u0446\\u0430)  2017-09-16 17:25:50 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "selling content"}}]	19	1
135	2017-10-24 11:56:45.744079+03	27	27 розница  2017-09-17 11:57:39	1	[{"added": {}}, {"added": {"object": "27 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-17 11:57:39 \\u2014 50925 [AG/606] \\u2014 12\\u0440\\u0443\\u043b (9/8) - 1200\\u20bd", "name": "selling content"}}]	19	1
136	2017-10-24 11:57:34.82478+03	28	28 розница  2017-09-17 11:58:23	1	[{"added": {}}, {"added": {"object": "28 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-17 11:58:23 \\u2014 3063-2 [014] \\u2014 0 - 1200\\u20bd", "name": "selling content"}}]	19	1
137	2017-10-24 11:59:32.896822+03	9	#10 Даният 	1	[{"added": {}}]	16	1
138	2017-10-24 12:00:32.24841+03	29	29 #10 Даният  2017-09-18 12:01:05	1	[{"added": {}}, {"added": {"object": "29 #10 \\u0414\\u0430\\u043d\\u0438\\u044f\\u0442  2017-09-18 12:01:05 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}]	19	1
139	2017-10-24 12:01:38.528711+03	30	30 розница  2017-09-18 12:02:08	1	[{"added": {}}, {"added": {"object": "30 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-18 12:02:08 \\u2014 2342-2 [003] \\u2014 11\\u0440\\u0443\\u043b (5/4) - 800\\u20bd", "name": "selling content"}}]	19	1
140	2017-10-24 12:03:23.481165+03	31	31 розница  2017-09-19 12:03:41	1	[{"added": {}}, {"added": {"object": "31 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-19 12:03:41 \\u2014 EX 8/859/08-N106 [138164] \\u2014 10\\u0440\\u0443\\u043b (5/3) - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "31 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-19 12:03:41 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
379	2017-11-10 11:52:08.348493+03	289	613537 [4] — 1рул (10)	2	[{"changed": {"fields": ["retail_price", "stillage"]}}]	10	1
141	2017-10-24 12:04:12.699256+03	32	32 розница  2017-09-19 12:05:19	1	[{"added": {}}, {"added": {"object": "32 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-19 12:05:19 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
142	2017-10-24 12:06:21.027697+03	33	33 розница  2017-09-19 12:06:05	1	[{"added": {}}, {"added": {"object": "33 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-19 12:06:05 \\u2014 \\u0411\\u0435\\u0440\\u0451\\u0437\\u043e\\u0432\\u0430\\u044f \\u0440\\u043e\\u0449\\u0430 12\\u043b 294x260 - 1500\\u20bd", "name": "selling content"}}, {"added": {"object": "33 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-19 12:06:05 \\u2014 7057-22 [015] \\u2014 5\\u0440\\u0443\\u043b (6/11) - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "33 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-19 12:06:05 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
143	2017-10-24 12:08:09.295579+03	34	34 розница  2017-09-20 12:08:38	1	[{"added": {}}, {"added": {"object": "34 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:08:38 \\u2014 788088 [4A] \\u2014 14\\u0440\\u0443\\u043b (4/13) - 1400\\u20bd", "name": "selling content"}}]	19	1
144	2017-10-24 12:10:32.573451+03	35	35 розница  2017-09-20 12:10:26	1	[{"added": {}}, {"added": {"object": "35 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:10:26 \\u2014 7327-24 [001] \\u2014 23\\u0440\\u0443\\u043b (6/1) - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "35 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:10:26 \\u2014 925-33 [50525B1] \\u2014 4\\u0440\\u0443\\u043b (6/9) - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "35 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:10:26 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
145	2017-10-24 12:11:39.023268+03	36	36 розница  2017-09-20 12:12:20	1	[{"added": {}}, {"added": {"object": "36 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:12:20 \\u2014 288107 [001] \\u2014 9\\u0440\\u0443\\u043b (8/8) - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "36 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:12:20 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
146	2017-10-24 12:13:06.698394+03	37	37 розница  2017-09-20 12:13:21	1	[{"added": {}}, {"added": {"object": "37 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:13:21 \\u2014 788074 [4A] \\u2014 19\\u0440\\u0443\\u043b (4/6) - 1350\\u20bd", "name": "selling content"}}, {"added": {"object": "37 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:13:21 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
147	2017-10-24 12:16:52.214268+03	38	38 розница  2017-09-21 12:16:44	1	[{"added": {}}, {"added": {"object": "38 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-21 12:16:44 \\u2014 03085 [0002] \\u2014 11\\u0440\\u0443\\u043b (5/10) - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "38 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-21 12:16:44 \\u2014 ACM \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
148	2017-10-24 12:20:15.735461+03	39	39 розница  2017-09-23 12:20:06	1	[{"added": {}}, {"added": {"object": "39 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-23 12:20:06 \\u2014 5517 [40] \\u2014 51\\u0440\\u0443\\u043b (3/5) - 550\\u20bd", "name": "selling content"}}, {"added": {"object": "39 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-23 12:20:06 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 175\\u20bd", "name": "selling content"}}]	19	1
149	2017-10-24 12:20:39.646433+03	39	39 розница  2017-09-23 12:20:06	2	[]	19	1
150	2017-10-24 12:21:33.646955+03	40	40 розница  2017-09-23 12:22:13	1	[{"added": {}}, {"added": {"object": "40 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-23 12:22:13 \\u2014 \\u0421\\u0442\\u0430\\u0440\\u044b\\u0439 \\u0434\\u0432\\u043e\\u0440\\u0438\\u043a 16\\u043b 392x260 - 1600\\u20bd", "name": "selling content"}}]	19	1
151	2017-10-24 12:33:13.765501+03	41	41 розница  2017-09-24 12:30:58	1	[{"added": {}}, {"added": {"object": "41 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-24 12:30:58 \\u2014 7318-28 [001] \\u2014 0 - 1200\\u20bd", "name": "selling content"}}, {"added": {"object": "41 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-24 12:30:58 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}, {"added": {"object": "41 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-24 12:30:58 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "selling content"}}]	19	1
152	2017-10-24 12:33:25.231499+03	41	41 розница  2017-09-24 12:30:58	2	[]	19	1
153	2017-10-24 12:33:56.055143+03	42	42 розница  2017-09-24 12:35:05	1	[{"added": {}}, {"added": {"object": "42 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-24 12:35:05 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
154	2017-10-24 12:36:49.702243+03	43	43 розница  2017-09-25 12:36:27	1	[{"added": {}}, {"added": {"object": "43 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-25 12:36:27 \\u2014 2342-2 [003] \\u2014 9\\u0440\\u0443\\u043b (5/4) - 800\\u20bd", "name": "selling content"}}, {"added": {"object": "43 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-25 12:36:27 \\u2014 628-91 [3140A3] \\u2014 9\\u0440\\u0443\\u043b (5/16) - 800\\u20bd", "name": "selling content"}}, {"added": {"object": "43 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-25 12:36:27 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "selling content"}}]	19	1
155	2017-10-24 12:37:16.7476+03	43	43 розница  2017-09-25 12:36:27	2	[]	19	1
156	2017-10-24 12:39:49.951036+03	44	44 розница  2017-09-26 12:38:59	1	[{"added": {}}, {"added": {"object": "44 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-26 12:38:59 \\u2014 7248-23 [006] \\u2014 14\\u0440\\u0443\\u043b (8/11) - 1500\\u20bd", "name": "selling content"}}, {"added": {"object": "44 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-26 12:38:59 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
380	2017-11-10 11:53:55.907799+03	388	VXB-101-02-8	1	[{"added": {}}]	11	1
670	2017-12-27 13:01:48.761421+03	499	8527-17 [17c] — 0	1	[{"added": {}}]	10	1
157	2017-10-24 12:41:05.27187+03	45	45 розница  2017-09-26 12:41:23	1	[{"added": {}}, {"added": {"object": "45 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-26 12:41:23 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 55 - 500\\u20bd", "name": "selling content"}}, {"added": {"object": "45 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-26 12:41:23 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
158	2017-10-24 12:41:18.650009+03	45	45 розница  2017-09-26 12:41:23	2	[]	19	1
159	2017-10-24 12:42:37.692078+03	46	46 розница  2017-09-27 12:43:10	1	[{"added": {}}, {"added": {"object": "46 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-27 12:43:10 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 100\\u20bd", "name": "selling content"}}]	19	1
160	2017-10-24 12:44:34.894391+03	47	47 розница  2017-09-27 12:44:31	1	[{"added": {}}, {"added": {"object": "47 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-27 12:44:31 \\u2014 2342-2 [003] \\u2014 5\\u0440\\u0443\\u043b (5/4) - 750\\u20bd", "name": "selling content"}}, {"added": {"object": "47 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-27 12:44:31 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}, {"added": {"object": "47 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-27 12:44:31 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "selling content"}}]	19	1
161	2017-10-24 12:45:10.113369+03	47	47 розница  2017-09-27 12:44:31	2	[]	19	1
162	2017-10-24 12:46:47.743358+03	48	48 розница  2017-09-27 12:47:18	1	[{"added": {}}, {"added": {"object": "48 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-27 12:47:18 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 51 - 500\\u20bd", "name": "selling content"}}, {"added": {"object": "48 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-27 12:47:18 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}, {"added": {"object": "48 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-27 12:47:18 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "selling content"}}]	19	1
163	2017-10-24 12:48:53.412933+03	49	49 розница  2017-09-27 12:48:51	1	[{"added": {}}, {"added": {"object": "49 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-27 12:48:51 \\u2014 7074-43 [001] \\u2014 2\\u0440\\u0443\\u043b (6/10) - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "49 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-27 12:48:51 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}, {"added": {"object": "49 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-27 12:48:51 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "selling content"}}]	19	1
164	2017-10-24 12:52:18.225731+03	50	50 #10 Даният  2017-09-28 12:51:55	1	[{"added": {}}, {"added": {"object": "50 #10 \\u0414\\u0430\\u043d\\u0438\\u044f\\u0442  2017-09-28 12:51:55 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}, {"added": {"object": "50 #10 \\u0414\\u0430\\u043d\\u0438\\u044f\\u0442  2017-09-28 12:51:55 \\u2014 PRODecoro \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 2800\\u20bd", "name": "selling content"}}, {"added": {"object": "50 #10 \\u0414\\u0430\\u043d\\u0438\\u044f\\u0442  2017-09-28 12:51:55 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 3400\\u20bd", "name": "selling content"}}]	19	1
165	2017-10-24 12:52:57.459856+03	50	50 #10 Даният  2017-09-28 12:51:55	2	[]	19	1
166	2017-10-24 12:54:45.052276+03	51	51 розница  2017-09-28 12:54:33	1	[{"added": {}}, {"added": {"object": "51 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-28 12:54:33 \\u2014 2342-2 [003] \\u2014 0\\u0440\\u0443\\u043b (5/4) - 800\\u20bd", "name": "selling content"}}, {"added": {"object": "51 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-28 12:54:33 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
167	2017-10-24 12:56:20.583002+03	51	51 розница  2017-09-28 12:54:33	2	[]	19	1
168	2017-10-24 12:57:13.813045+03	52	52 розница  2017-09-28 12:57:55	1	[{"added": {}}, {"added": {"object": "52 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-28 12:57:55 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 49 - 500\\u20bd", "name": "selling content"}}, {"added": {"object": "52 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-28 12:57:55 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
169	2017-10-24 12:59:46.194369+03	53	53 розница  2017-09-28 12:59:56	1	[{"added": {}}, {"added": {"object": "53 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-28 12:59:56 \\u2014 \\u0417\\u0432\\u0435\\u043d\\u044f\\u0449\\u0438\\u0435 \\u0432\\u043e\\u0434\\u043e\\u043f\\u0430\\u0434\\u044b 9\\u043b 294x201 - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "53 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-28 12:59:56 \\u2014 \\u041f\\u043e\\u044e\\u0449\\u0438\\u0435 \\u0432\\u043e\\u0434\\u043e\\u043f\\u0430\\u0434\\u044b 9\\u043b 300x201 - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "53 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-28 12:59:56 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150\\u0433\\u0440 - 150\\u20bd", "name": "selling content"}}]	19	1
170	2017-10-24 13:00:09.583983+03	54	54 розница  2017-09-28 13:01:18	1	[{"added": {}}, {"added": {"object": "54 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-28 13:01:18 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
171	2017-10-24 13:01:37.679875+03	55	55 розница  2017-09-29 13:01:53	1	[{"added": {}}, {"added": {"object": "55 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-29 13:01:53 \\u2014 981-42 [10106A1] \\u2014 15\\u0440\\u0443\\u043b (4/16) - 1350\\u20bd", "name": "selling content"}}, {"added": {"object": "55 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-29 13:01:53 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
172	2017-10-24 13:01:47.371384+03	55	55 розница  2017-09-29 13:01:53	2	[]	19	1
229	2017-10-25 15:53:26.442428+03	98	98 #10 Даният  2017-10-14 15:54:25	1	[{"added": {}}, {"added": {"object": "98 #10 \\u0414\\u0430\\u043d\\u0438\\u044f\\u0442  2017-10-14 15:54:25 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}]	19	1
173	2017-10-24 13:03:01.980804+03	56	56 розница  2017-09-29 13:03:21	1	[{"added": {}}, {"added": {"object": "56 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-29 13:03:21 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 45 - 500\\u20bd", "name": "selling content"}}, {"added": {"object": "56 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-29 13:03:21 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
174	2017-10-24 13:03:14.142472+03	56	56 розница  2017-09-29 13:03:21	2	[]	19	1
175	2017-10-24 13:04:06.742195+03	57	57 розница  2017-09-30 13:04:50	1	[{"added": {}}, {"added": {"object": "57 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-30 13:04:50 \\u2014 7075-77 [002] \\u2014 6\\u0440\\u0443\\u043b (6/7) - 1000\\u20bd", "name": "selling content"}}]	19	1
176	2017-10-24 13:04:19.636935+03	57	57 розница  2017-09-30 13:04:50	2	[]	19	1
177	2017-10-24 13:05:19.58486+03	58	58 розница  2017-09-30 13:06:02	1	[{"added": {}}, {"added": {"object": "58 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-30 13:06:02 \\u2014 7183-23 [011] \\u2014 15\\u0440\\u0443\\u043b (6/13) - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "58 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-30 13:06:02 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
178	2017-10-24 13:05:51.841476+03	58	58 розница  2017-09-30 13:06:02	2	[]	19	1
179	2017-10-24 13:08:49.462126+03	59	59 розница  2017-09-30 13:08:13	1	[{"added": {}}, {"added": {"object": "59 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-30 13:08:13 \\u2014 03085 [0002] \\u2014 8\\u0440\\u0443\\u043b (5/10) - 1200\\u20bd", "name": "selling content"}}, {"added": {"object": "59 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-30 13:08:13 \\u2014 ACM \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
180	2017-10-24 13:09:08.324504+03	60	60 розница  2017-09-30 13:10:18	1	[{"added": {}}, {"added": {"object": "60 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-30 13:10:18 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
181	2017-10-24 13:09:35.044549+03	10	#15 Казбек 	1	[{"added": {}}]	16	1
182	2017-10-24 13:11:07.196294+03	61	61 #15 Казбек  2017-09-30 13:11:01	1	[{"added": {}}, {"added": {"object": "61 #15 \\u041a\\u0430\\u0437\\u0431\\u0435\\u043a  2017-09-30 13:11:01 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}, {"added": {"object": "61 #15 \\u041a\\u0430\\u0437\\u0431\\u0435\\u043a  2017-09-30 13:11:01 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 1800\\u20bd", "name": "selling content"}}, {"added": {"object": "61 #15 \\u041a\\u0430\\u0437\\u0431\\u0435\\u043a  2017-09-30 13:11:01 \\u2014 Emsland \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 2700\\u20bd", "name": "selling content"}}, {"added": {"object": "61 #15 \\u041a\\u0430\\u0437\\u0431\\u0435\\u043a  2017-09-30 13:11:01 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 3400\\u20bd", "name": "selling content"}}, {"added": {"object": "61 #15 \\u041a\\u0430\\u0437\\u0431\\u0435\\u043a  2017-09-30 13:11:01 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}]	19	1
183	2017-10-24 13:23:25.187337+03	2	2 розница  2017-09-01 11:14:55	2	[{"changed": {"fields": ["date_create", "date_paid"]}}]	19	1
184	2017-10-24 13:24:13.882543+03	3	3 розница  2017-09-01 13:08:41	2	[{"changed": {"fields": ["date_create", "date_paid"]}}]	19	1
185	2017-10-24 13:24:42.603398+03	4	4 #4 Сайка  2017-09-01 13:22:05	2	[{"changed": {"fields": ["date_create", "date_paid"]}}]	19	1
186	2017-10-24 13:25:15.750931+03	5	5 #7 Райсат  2017-09-02 13:25:29	2	[{"changed": {"fields": ["date_create", "date_paid"]}}]	19	1
187	2017-10-24 13:26:47.81742+03	6	6 розница  2017-09-02 13:27:54	2	[{"changed": {"fields": ["date_create", "date_paid"]}}]	19	1
188	2017-10-24 13:27:14.605716+03	7	7 Зайнаб (соседка)  2017-09-02 13:30:08	2	[{"changed": {"fields": ["date_create", "date_paid"]}}]	19	1
189	2017-10-24 13:37:26.973886+03	62	62 розница  2017-10-01 13:37:09	1	[{"added": {}}, {"added": {"object": "62 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-01 13:37:09 \\u2014 7048-25 [004] \\u2014 9\\u0440\\u0443\\u043b (6/3) - 1000\\u20bd", "name": "selling content"}}]	19	1
190	2017-10-24 13:39:15.285328+03	63	63 розница  2017-10-01 13:39:01	1	[{"added": {}}, {"added": {"object": "63 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-01 13:39:01 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 40 - 500\\u20bd", "name": "selling content"}}, {"added": {"object": "63 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-01 13:39:01 \\u2014 Rips \\u0432\\u0438\\u043d\\u0438\\u043b 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
191	2017-10-24 13:57:31.703494+03	64	64 розница  2017-10-02 13:56:50	1	[{"added": {}}, {"added": {"object": "64 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-02 13:56:50 \\u2014 7181-25 [002] \\u2014 7\\u0440\\u0443\\u043b (6/7) - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "64 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-02 13:56:50 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
192	2017-10-24 13:58:03.849876+03	65	65 розница  2017-10-02 13:59:06	1	[{"added": {}}, {"added": {"object": "65 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-02 13:59:06 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
193	2017-10-24 13:59:05.952386+03	66	66 розница  2017-10-03 13:59:45	1	[{"added": {}}, {"added": {"object": "66 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-03 13:59:45 \\u2014 12206 [004] \\u2014 10\\u0440\\u0443\\u043b (1/5) - 500\\u20bd", "name": "selling content"}}]	19	1
194	2017-10-24 14:00:39.819599+03	67	67 розница  2017-10-04 14:01:41	1	[{"added": {}}, {"added": {"object": "67 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-04 14:01:41 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
195	2017-10-24 14:03:24.193344+03	68	68 розница  2017-10-05 14:02:16	1	[{"added": {}}, {"added": {"object": "68 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-05 14:02:16 \\u2014 29009 [47] \\u2014 25\\u0440\\u0443\\u043b (2/6) - 550\\u20bd", "name": "selling content"}}, {"added": {"object": "68 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-05 14:02:16 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
196	2017-10-24 14:05:39.261944+03	69	69 розница  2017-10-05 14:05:29	1	[{"added": {}}, {"added": {"object": "69 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-05 14:05:29 \\u2014 N2547-2 [140320] \\u2014 2\\u0440\\u0443\\u043b (7/8) - 1800\\u20bd", "name": "selling content"}}, {"added": {"object": "69 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-05 14:05:29 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
197	2017-10-24 14:07:18.256353+03	11	#14 Дина 	1	[{"added": {}}]	16	1
198	2017-10-24 14:07:44.569616+03	70	70 #14 Дина  2017-10-05 14:07:21	1	[{"added": {}}, {"added": {"object": "70 #14 \\u0414\\u0438\\u043d\\u0430  2017-10-05 14:07:21 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}]	19	1
199	2017-10-24 14:08:14.775904+03	70	70 #14 Дина  2017-10-05 14:07:21	2	[{"changed": {"object": "70 #14 \\u0414\\u0438\\u043d\\u0430  2017-10-05 14:07:21 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 2500\\u20bd", "fields": ["wholesale", "pack"], "name": "selling content"}}]	19	1
200	2017-10-24 14:11:50.050184+03	71	71 розница  2017-10-06 14:11:02	1	[{"added": {}}, {"added": {"object": "71 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-06 14:11:02 \\u2014 7110-22 [001] \\u2014 0 - 1300\\u20bd", "name": "selling content"}}]	19	1
201	2017-10-24 14:14:16.158633+03	72	72 розница  2017-10-06 14:13:25	1	[{"added": {}}, {"added": {"object": "72 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-06 14:13:25 \\u2014 N2547-6 [140320] \\u2014 24\\u0440\\u0443\\u043b (7/14) - 2000\\u20bd", "name": "selling content"}}, {"added": {"object": "72 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-06 14:13:25 \\u2014 ACM \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
202	2017-10-24 14:20:11.322939+03	73	73 розница  2017-10-07 14:17:21	1	[{"added": {}}, {"added": {"object": "73 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-07 14:17:21 \\u2014 981-42 [10106A1] \\u2014 12\\u0440\\u0443\\u043b (4/16) - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "73 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-07 14:17:21 \\u2014 ACM \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}, {"added": {"object": "73 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-07 14:17:21 \\u2014 07020 [0143] \\u2014 6\\u0440\\u0443\\u043b (5/10) - 1400\\u20bd", "name": "selling content"}}, {"added": {"object": "73 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-07 14:17:21 \\u2014 ACM \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
203	2017-10-24 14:21:27.113469+03	74	74 розница  2017-10-07 14:21:54	1	[{"added": {}}, {"added": {"object": "74 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-07 14:21:54 \\u2014 7183-25 [001] \\u2014 1\\u0440\\u0443\\u043b (6/15) - 1000\\u20bd", "name": "selling content"}}]	19	1
204	2017-10-24 14:21:58.485155+03	12	#9 Барият 	1	[{"added": {}}]	16	1
205	2017-10-24 14:22:44.023398+03	75	75 #9 Барият  2017-10-07 14:23:34	1	[{"added": {}}, {"added": {"object": "75 #9 \\u0411\\u0430\\u0440\\u0438\\u044f\\u0442  2017-10-07 14:23:34 \\u2014 Emsland \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 2700\\u20bd", "name": "selling content"}}]	19	1
206	2017-10-24 14:24:07.252738+03	76	76 розница  2017-10-07 14:24:25	1	[{"added": {}}, {"added": {"object": "76 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-07 14:24:25 \\u2014 0714-62 [001] \\u2014 10\\u0440\\u0443\\u043b (4/7) - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "76 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-07 14:24:25 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
207	2017-10-24 14:24:51.848554+03	77	77 розница  2017-10-07 14:25:46	1	[{"added": {}}, {"added": {"object": "77 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-07 14:25:46 \\u2014 07017 [0296] \\u2014 11\\u0440\\u0443\\u043b (5/13) - 1200\\u20bd", "name": "selling content"}}]	19	1
208	2017-10-24 14:25:53.021419+03	78	78 #10 Даният  2017-10-07 14:26:36	1	[{"added": {}}, {"added": {"object": "78 #10 \\u0414\\u0430\\u043d\\u0438\\u044f\\u0442  2017-10-07 14:26:36 \\u2014 PRODecoro \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 2800\\u20bd", "name": "selling content"}}]	19	1
209	2017-10-24 15:55:38.562883+03	79	79 розница  2017-10-08 15:52:04	1	[{"added": {}}, {"added": {"object": "79 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 15:52:04 \\u2014 BA 140057 [8-12-09] \\u2014 2\\u0440\\u0443\\u043b (1/2) - 1200\\u20bd", "name": "selling content"}}, {"added": {"object": "79 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 15:52:04 \\u2014 Decoro \\u0432\\u0438\\u043d\\u0438\\u043b, \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
210	2017-10-24 15:59:13.878664+03	80	80 розница  2017-10-08 15:57:13	1	[{"added": {}}, {"added": {"object": "80 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 15:57:13 \\u2014 26854 [13-03-020] \\u2014 0 - 2000\\u20bd", "name": "selling content"}}, {"added": {"object": "80 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 15:57:13 \\u2014 26854 [13-03-040] \\u2014 0 - 1500\\u20bd", "name": "selling content"}}, {"added": {"object": "80 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 15:57:13 \\u2014 46058-03 [0003] \\u2014 0\\u0440\\u0443\\u043b (7/15) - 1200\\u20bd", "name": "selling content"}}, {"added": {"object": "80 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 15:57:13 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
211	2017-10-24 16:07:39.299136+03	81	81 розница  2017-10-08 16:07:49	1	[{"added": {}}, {"added": {"object": "81 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 16:07:49 \\u2014 EX 8/851/14-N106 [134825] \\u2014 0 - 800\\u20bd", "name": "selling content"}}, {"added": {"object": "81 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 16:07:49 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
212	2017-10-24 16:08:51.987908+03	82	82 розница  2017-10-08 16:09:19	1	[{"added": {}}, {"added": {"object": "82 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 16:09:19 \\u2014 PV 6/248/11-N106 [92730] \\u2014 0 - 500\\u20bd", "name": "selling content"}}, {"added": {"object": "82 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 16:09:19 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
293	2017-10-31 10:57:53.686548+03	463	10017-06 [94] — 30рул (10/6)	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
371	2017-11-10 00:29:23.344591+03	6	Rips флиз 300 300гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
213	2017-10-24 16:10:26.439587+03	83	83 розница  2017-10-08 16:10:29	1	[{"added": {}}, {"added": {"object": "83 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 16:10:29 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 35 - 500\\u20bd", "name": "selling content"}}, {"added": {"object": "83 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 16:10:29 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 150\\u20bd", "name": "selling content"}}]	19	1
214	2017-10-24 16:13:50.30533+03	84	84 розница  2017-10-08 16:12:02	1	[{"added": {}}, {"added": {"object": "84 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 16:12:02 \\u2014 07017 [0296] \\u2014 10\\u0440\\u0443\\u043b (5/13) - 1200\\u20bd", "name": "selling content"}}]	19	1
215	2017-10-24 16:15:17.910711+03	85	85 розница  2017-10-08 16:15:27	1	[{"added": {}}, {"added": {"object": "85 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 16:15:27 \\u2014 7158-21 [001] \\u2014 0 - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "85 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-08 16:15:27 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
216	2017-10-24 16:18:18.983154+03	13	Патя (квартирантка) 	1	[{"added": {}}]	16	1
217	2017-10-24 16:37:05.617531+03	87	87 Патя (квартирантка)  2017-10-09 16:19:52	1	[{"added": {}}, {"added": {"object": "87 \\u041f\\u0430\\u0442\\u044f (\\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0430\\u043d\\u0442\\u043a\\u0430)  2017-10-09 16:19:52 \\u2014 981-42 [10106A1] \\u2014 6\\u0440\\u0443\\u043b (4/16) - 1200\\u20bd", "name": "selling content"}}, {"added": {"object": "87 \\u041f\\u0430\\u0442\\u044f (\\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0430\\u043d\\u0442\\u043a\\u0430)  2017-10-09 16:19:52 \\u2014 7357-24 [018] \\u2014 0\\u0440\\u0443\\u043b (8/14) - 1400\\u20bd", "name": "selling content"}}, {"added": {"object": "87 \\u041f\\u0430\\u0442\\u044f (\\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0430\\u043d\\u0442\\u043a\\u0430)  2017-10-09 16:19:52 \\u2014 7357-24 [010] \\u2014 0 - 1300\\u20bd", "name": "selling content"}}, {"added": {"object": "87 \\u041f\\u0430\\u0442\\u044f (\\u043a\\u0432\\u0430\\u0440\\u0442\\u0438\\u0440\\u0430\\u043d\\u0442\\u043a\\u0430)  2017-10-09 16:19:52 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
218	2017-10-24 16:39:57.389168+03	88	88 розница  2017-10-09 16:39:58	1	[{"added": {}}, {"added": {"object": "88 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-09 16:39:58 \\u2014 N2546-1 [140325] \\u2014 1\\u0440\\u0443\\u043b (7/12) - 1800\\u20bd", "name": "selling content"}}, {"added": {"object": "88 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-09 16:39:58 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
219	2017-10-24 17:01:51.164631+03	89	89 розница  2017-10-09 17:01:33	1	[{"added": {}}, {"added": {"object": "89 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-09 17:01:33 \\u2014 7170-55 [002] \\u2014 21\\u0440\\u0443\\u043b (6/6) - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "89 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-09 17:01:33 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
220	2017-10-24 17:06:28.862055+03	90	90 розница  2017-10-10 17:04:02	1	[{"added": {}}, {"added": {"object": "90 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-10 17:04:02 \\u2014 0732-88 [002] \\u2014 0 - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "90 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-10 17:04:02 \\u2014 0731-88 [003] \\u2014 10\\u0440\\u0443\\u043b (6/4) - 1400\\u20bd", "name": "selling content"}}, {"added": {"object": "90 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-10 17:04:02 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
221	2017-10-24 17:08:58.871004+03	91	91 розница  2017-10-10 17:08:04	1	[{"added": {}}, {"added": {"object": "91 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-10 17:08:04 \\u2014 981-42 [10106A1] \\u2014 5\\u0440\\u0443\\u043b (4/16) - 1300\\u20bd", "name": "selling content"}}]	19	1
222	2017-10-24 17:10:18.412006+03	91	91 розница  2017-10-10 17:08:04	2	[]	19	1
223	2017-10-24 17:11:29.477253+03	92	92 #14 Дина  2017-10-10 17:12:10	1	[{"added": {}}, {"added": {"object": "92 #14 \\u0414\\u0438\\u043d\\u0430  2017-10-10 17:12:10 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 2700\\u20bd", "name": "selling content"}}]	19	1
224	2017-10-24 17:33:05.781191+03	93	93 розница  2017-10-11 17:33:17	1	[{"added": {}}, {"added": {"object": "93 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-11 17:33:17 \\u2014 50100 [1308300] \\u2014 0\\u0440\\u0443\\u043b (8/6) - 2700\\u20bd", "name": "selling content"}}, {"added": {"object": "93 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-11 17:33:17 \\u2014 50100 [1311130] \\u2014 2\\u0440\\u0443\\u043b (8/6) - 2700\\u20bd", "name": "selling content"}}, {"added": {"object": "93 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-11 17:33:17 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
225	2017-10-24 17:36:31.375457+03	94	94 розница  2017-10-12 17:36:11	1	[{"added": {}}, {"added": {"object": "94 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-12 17:36:11 \\u2014 8543-77 [4A] \\u2014 1 - 1400\\u20bd", "name": "selling content"}}]	19	1
226	2017-10-24 17:37:02.615995+03	95	95 розница  2017-10-12 17:38:06	1	[{"added": {}}, {"added": {"object": "95 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-12 17:38:06 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
227	2017-10-24 17:38:07.929494+03	96	96 розница  2017-10-12 17:38:37	1	[{"added": {}}, {"added": {"object": "96 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-12 17:38:37 \\u2014 0716-77 [007] \\u2014 2\\u0440\\u0443\\u043b (6/11) - 1400\\u20bd", "name": "selling content"}}, {"added": {"object": "96 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-12 17:38:37 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
228	2017-10-24 17:40:51.940034+03	97	97 розница  2017-10-12 17:39:53	1	[{"added": {}}, {"added": {"object": "97 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-12 17:39:53 \\u2014 M 7339 [A] \\u2014 4\\u0440\\u0443\\u043b (8/6) - 2800\\u20bd", "name": "selling content"}}, {"added": {"object": "97 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-12 17:39:53 \\u2014 N2547-5 [140320] \\u2014 52\\u0440\\u0443\\u043b (7/4) - 1800\\u20bd", "name": "selling content"}}]	19	1
230	2017-10-25 15:56:27.876304+03	99	99 розница  2017-10-14 15:55:54	1	[{"added": {}}, {"added": {"object": "99 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-14 15:55:54 \\u2014 \\u0421\\u043e\\u0441\\u043d\\u044b 3\\u043b 97x204 - 750\\u20bd", "name": "selling content"}}, {"added": {"object": "99 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-14 15:55:54 \\u2014 165736 [2009] \\u2014 9\\u0440\\u0443\\u043b (1/5) - 600\\u20bd", "name": "selling content"}}, {"added": {"object": "99 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-14 15:55:54 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}, {"added": {"object": "99 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-14 15:55:54 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150\\u0433\\u0440 - 100\\u20bd", "name": "selling content"}}]	19	1
231	2017-10-25 16:00:49.546921+03	100	100 розница  2017-10-15 15:59:47	1	[{"added": {}}, {"added": {"object": "100 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-15 15:59:47 \\u2014 7182-28 [004] \\u2014 3\\u0440\\u0443\\u043b (6/10) - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "100 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-15 15:59:47 \\u2014 7183-28 [002] \\u2014 0 - 800\\u20bd", "name": "selling content"}}, {"added": {"object": "100 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-15 15:59:47 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
232	2017-10-25 16:03:42.845836+03	101	101 розница  2017-10-15 16:02:52	1	[{"added": {}}, {"added": {"object": "101 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-15 16:02:52 \\u2014 7170-55 [002] \\u2014 20\\u0440\\u0443\\u043b (6/6) - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "101 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-15 16:02:52 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 0\\u20bd", "name": "selling content"}}]	19	1
233	2017-10-25 16:04:38.114091+03	102	102 розница  2017-10-15 16:05:21	1	[{"added": {}}, {"added": {"object": "102 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-15 16:05:21 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 33 - 500\\u20bd", "name": "selling content"}}, {"added": {"object": "102 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-15 16:05:21 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
234	2017-10-25 16:06:05.282761+03	103	103 розница  2017-10-15 16:06:15	1	[{"added": {}}, {"added": {"object": "103 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-15 16:06:15 \\u2014 28030 [137] \\u2014 21\\u0440\\u0443\\u043b (1/5) - 700\\u20bd", "name": "selling content"}}, {"added": {"object": "103 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-15 16:06:15 \\u2014 Decoro \\u0432\\u0438\\u043d\\u0438\\u043b, \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
235	2017-10-25 16:07:44.404437+03	2	36 розница  2017-09-20 12:12:20 (16:08:53)	1	[{"added": {}}, {"added": {"object": "36 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:12:20 (16:08:53) \\u2014 1", "name": "purchase return content"}}]	18	1
236	2017-10-25 16:14:13.670254+03	104	104 розница  2017-10-16 16:15:03	1	[{"added": {}}, {"added": {"object": "104 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-16 16:15:03 \\u2014 165736 [2009] \\u2014 8\\u0440\\u0443\\u043b (1/5) - 600\\u20bd", "name": "selling content"}}]	19	1
237	2017-10-25 16:15:04.54719+03	105	105 розница  2017-10-16 16:15:48	1	[{"added": {}}, {"added": {"object": "105 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-16 16:15:48 \\u2014 613544 [3] \\u2014 44\\u0440\\u0443\\u043b (8/18) - 1600\\u20bd", "name": "selling content"}}]	19	1
238	2017-10-25 16:16:27.691508+03	106	106 розница  2017-10-16 16:16:43	1	[{"added": {}}, {"added": {"object": "106 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-16 16:16:43 \\u2014 N2045-6 [140211] \\u2014 13\\u0440\\u0443\\u043b (7/7) - 1700\\u20bd", "name": "selling content"}}, {"added": {"object": "106 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-16 16:16:43 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
239	2017-10-25 16:18:32.70143+03	107	107 розница  2017-10-17 16:19:25	1	[{"added": {}}, {"added": {"object": "107 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-17 16:19:25 \\u2014 07017 [0296] \\u2014 9\\u0440\\u0443\\u043b (5/13) - 1200\\u20bd", "name": "selling content"}}]	19	1
240	2017-10-25 16:19:51.598726+03	108	108 розница  2017-10-17 16:20:09	1	[{"added": {}}, {"added": {"object": "108 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-17 16:20:09 \\u2014 7034-21 [001] \\u2014 0\\u0440\\u0443\\u043b (8/14) - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "108 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-17 16:20:09 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
241	2017-10-25 16:20:38.516894+03	109	109 розница  2017-10-17 16:21:28	1	[{"added": {}}, {"added": {"object": "109 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-17 16:21:28 \\u2014 28030 [137] \\u2014 20\\u0440\\u0443\\u043b (1/5) - 700\\u20bd", "name": "selling content"}}]	19	1
242	2017-10-25 16:21:27.149897+03	110	110 розница  2017-10-18 16:22:24	1	[{"added": {}}, {"added": {"object": "110 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-18 16:22:24 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 31 - 500\\u20bd", "name": "selling content"}}, {"added": {"object": "110 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-18 16:22:24 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
243	2017-10-25 16:28:11.376109+03	111	111 розница  2017-10-19 16:23:37	1	[{"added": {}}, {"added": {"object": "111 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-19 16:23:37 \\u2014 70904 [02] \\u2014 11\\u0440\\u0443\\u043b (1/3) - 600\\u20bd", "name": "selling content"}}, {"added": {"object": "111 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-19 16:23:37 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150\\u0433\\u0440 - 150\\u20bd", "name": "selling content"}}]	19	1
244	2017-10-25 16:30:22.921879+03	112	112 розница  2017-10-21 16:29:59	1	[{"added": {}}, {"added": {"object": "112 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-21 16:29:59 \\u2014 \\u0420\\u0430\\u0439\\u0441\\u043a\\u0438\\u0439 \\u0443\\u0433\\u043e\\u043b\\u043e\\u043a 9\\u043b 291x204 - 1200\\u20bd", "name": "selling content"}}, {"added": {"object": "112 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-21 16:29:59 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150\\u0433\\u0440 - 150\\u20bd", "name": "selling content"}}]	19	1
372	2017-11-10 00:29:28.455271+03	5	СтройДеко флиз 200 200гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
245	2017-10-25 16:32:39.562712+03	113	113 розница  2017-10-21 16:32:06	1	[{"added": {}}, {"added": {"object": "113 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-21 16:32:06 \\u2014 7048-25 [004] \\u2014 6\\u0440\\u0443\\u043b (6/3) - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "113 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-21 16:32:06 \\u2014 \\u0420\\u0430\\u0439\\u0441\\u043a\\u0438\\u0439 \\u0443\\u0433\\u043e\\u043b\\u043e\\u043a 12\\u043b 294x260 - 1600\\u20bd", "name": "selling content"}}]	19	1
246	2017-10-25 16:33:39.961012+03	112	112 розница  2017-10-21 16:29:59	2	[{"changed": {"object": "112 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-21 16:29:59 \\u2014 \\u0420\\u0430\\u0439\\u0441\\u043a\\u0438\\u0439 \\u0443\\u0433\\u043e\\u043b\\u043e\\u043a 9\\u043b 291x204 - 1200\\u20bd", "fields": ["count"], "name": "selling content"}}]	19	1
247	2017-10-25 16:34:14.329191+03	112	112 розница  2017-10-21 16:29:59	2	[{"changed": {"object": "112 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-21 16:29:59 \\u2014 \\u0420\\u0430\\u0439\\u0441\\u043a\\u0438\\u0439 \\u0443\\u0433\\u043e\\u043b\\u043e\\u043a 9\\u043b 291x204 - 1200\\u20bd", "fields": ["object_id", "count"], "name": "selling content"}}]	19	1
248	2017-10-25 16:35:44.562156+03	114	114 розница  2017-10-22 16:36:16	1	[{"added": {}}, {"added": {"object": "114 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-22 16:36:16 \\u2014 07022 [0154] \\u2014 1\\u0440\\u0443\\u043b (5/13) - 1200\\u20bd", "name": "selling content"}}, {"added": {"object": "114 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-22 16:36:16 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 200\\u20bd", "name": "selling content"}}]	19	1
249	2017-10-25 16:36:26.132424+03	115	115 #14 Дина  2017-10-22 16:37:21	1	[{"added": {}}, {"added": {"object": "115 #14 \\u0414\\u0438\\u043d\\u0430  2017-10-22 16:37:21 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}]	19	1
250	2017-10-25 16:38:41.34137+03	116	116 розница  2017-10-22 16:38:20	1	[{"added": {}}, {"added": {"object": "116 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-22 16:38:20 \\u2014 0715-24 [006] \\u2014 11\\u0440\\u0443\\u043b (6/14) - 1600\\u20bd", "name": "selling content"}}, {"added": {"object": "116 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-22 16:38:20 \\u2014 0716-14 [004] \\u2014 0 - 1000\\u20bd", "name": "selling content"}}, {"added": {"object": "116 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-22 16:38:20 \\u2014 PRODecoro \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 250\\u20bd", "name": "selling content"}}]	19	1
251	2017-10-25 16:40:11.236832+03	117	117 #9 Барият  2017-10-22 16:41:02	1	[{"added": {}}, {"added": {"object": "117 #9 \\u0411\\u0430\\u0440\\u0438\\u044f\\u0442  2017-10-22 16:41:02 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 3400\\u20bd", "name": "selling content"}}]	19	1
252	2017-10-25 16:40:47.529298+03	14	#6 Марат 	1	[{"added": {}}]	16	1
253	2017-10-25 16:42:01.09023+03	118	118 #6 Марат  2017-10-22 16:42:37	1	[{"added": {}}, {"added": {"object": "118 #6 \\u041c\\u0430\\u0440\\u0430\\u0442  2017-10-22 16:42:37 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 1800\\u20bd", "name": "selling content"}}, {"added": {"object": "118 #6 \\u041c\\u0430\\u0440\\u0430\\u0442  2017-10-22 16:42:37 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 3400\\u20bd", "name": "selling content"}}, {"added": {"object": "118 #6 \\u041c\\u0430\\u0440\\u0430\\u0442  2017-10-22 16:42:37 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 2500\\u20bd", "name": "selling content"}}]	19	1
254	2017-10-25 16:43:24.77837+03	119	119 розница  2017-10-23 16:44:09	1	[{"added": {}}, {"added": {"object": "119 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-23 16:44:09 \\u2014 42267 [G/1404] \\u2014 0 - 1500\\u20bd", "name": "selling content"}}]	19	1
255	2017-10-25 16:44:24.234647+03	120	120 розница  2017-10-24 16:45:06	1	[{"added": {}}, {"added": {"object": "120 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-24 16:45:06 \\u2014 07022 [0154] \\u2014 0\\u0440\\u0443\\u043b (5/13) - 1200\\u20bd", "name": "selling content"}}]	19	1
256	2017-10-25 16:45:28.00855+03	121	121 розница  2017-10-24 16:46:03	1	[{"added": {}}, {"added": {"object": "121 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-24 16:46:03 \\u2014 7357-22 [006] \\u2014 31\\u0440\\u0443\\u043b (7/17) - 1300\\u20bd", "name": "selling content"}}]	19	1
257	2017-10-25 17:09:06.637814+03	68	68 розница  2017-10-05 14:02:16	2	[{"changed": {"object": "68 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-05 14:02:16 \\u2014 29009 [47] \\u2014 26\\u0440\\u0443\\u043b (2/6) - 550\\u20bd", "fields": ["count"], "name": "selling content"}}]	19	1
258	2017-10-25 17:11:25.117519+03	413	Сказочный замок 12л 294x260	1	[{"added": {}}]	13	1
259	2017-10-25 17:13:56.125451+03	1	Начальные остатки  2017-10-16 20:02:08	2	[{"added": {"object": "\\u0421\\u043a\\u0430\\u0437\\u043e\\u0447\\u043d\\u044b\\u0439 \\u0437\\u0430\\u043c\\u043e\\u043a 12\\u043b 294x260 \\u2014 1 \\u2014 0\\u20bd", "name": "receipt content"}}, {"changed": {"object": "\\u0421\\u0442\\u0430\\u0440\\u044b\\u0439 \\u0434\\u0432\\u043e\\u0440\\u0438\\u043a 16\\u043b 392x260 \\u2014 2 \\u2014 0\\u20bd", "fields": ["count"], "name": "receipt content"}}]	15	1
260	2017-10-25 17:54:22.8898+03	122	122 розница  2017-10-25 17:55:31	1	[{"added": {}}, {"added": {"object": "122 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-25 17:55:31 \\u2014 02065 [0006] \\u2014 11\\u0440\\u0443\\u043b (5/13) - 1100\\u20bd", "name": "selling content"}}]	19	1
261	2017-10-27 16:52:55.936092+03	123	123 розница  2017-10-27 16:53:43	1	[{"added": {}}, {"added": {"object": "123 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-27 16:53:43 \\u2014 42084 [B/1305] \\u2014 4\\u0440\\u0443\\u043b (8/3) - 1800\\u20bd", "name": "selling content"}}, {"added": {"object": "123 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-27 16:53:43 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 300\\u20bd", "name": "selling content"}}]	19	1
262	2017-10-27 18:33:06.362496+03	123	123 розница  2017-10-27 16:53:43	2	[{"added": {"object": "123 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-27 16:53:43 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "selling content"}}]	19	1
263	2017-10-29 11:10:25.47044+03	124	124 розница  2017-10-28 11:07:38	1	[{"added": {}}, {"added": {"object": "124 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-28 11:07:38 \\u2014 7226-25 [002] \\u2014 10\\u0440\\u0443\\u043b (8/7) - 1600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "124 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-28 11:07:38 \\u2014 \\u0414\\u0443\\u0431\\u0430\\u0439 12\\u043b 294x260 - 1000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "124 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-28 11:07:38 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150\\u0433\\u0440 - 150\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
264	2017-10-29 11:11:58.105802+03	125	125 розница  2017-10-29 11:10:25	1	[{"added": {}}, {"added": {"object": "125 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 11:10:25 \\u2014 3016-3 [021] \\u2014 0 - 700\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "125 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 11:10:25 \\u2014 3016-3 [029] \\u2014 0 - 700\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "125 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 11:10:25 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
265	2017-10-29 11:18:47.374821+03	15	ОВК 	1	[{"added": {}}]	16	1
266	2017-10-29 11:20:51.808788+03	42	Артекс (RU)	1	[{"added": {}}]	12	1
267	2017-10-29 11:21:30.478074+03	379	20014-02	1	[{"added": {}}]	11	1
268	2017-10-29 11:22:09.856833+03	462	20014-02 [250] — 0	1	[{"added": {}}]	10	1
269	2017-10-29 11:24:28.241272+03	380	10017-06	1	[{"added": {}}]	11	1
270	2017-10-29 11:25:00.469538+03	463	10017-06 [94] — 0	1	[{"added": {}}]	10	1
271	2017-10-29 11:27:11.219843+03	381	10017-03	1	[{"added": {}}]	11	1
272	2017-10-29 11:27:46.978663+03	464	10017-03 [13] — 0	1	[{"added": {}}]	10	1
273	2017-10-29 11:28:07.727829+03	3	ОВК  2017-10-29 11:15:01	1	[{"added": {}}, {"added": {"object": "20014-02 [250] \\u2014 27 \\u2014 27 \\u2014 480\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "10017-06 [94] \\u2014 30 \\u2014 30 \\u2014 1180\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "10017-03 [13] \\u2014 30 \\u2014 30 \\u2014 1180\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
274	2017-10-29 11:59:41.552486+03	464	10017-03 [13] — 30рул (10/10)	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
275	2017-10-29 11:59:49.675352+03	463	10017-06 [94] — 30рул (10/6)	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
276	2017-10-29 11:59:57.861546+03	462	20014-02 [250] — 27рул (10/4)	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
277	2017-10-29 12:00:44.239529+03	379	20014-02	2	[{"changed": {"fields": ["pack"]}}]	11	1
278	2017-10-29 12:00:46.247916+03	380	10017-06	2	[{"changed": {"fields": ["pack"]}}]	11	1
279	2017-10-29 12:00:48.433691+03	381	10017-03	2	[{"changed": {"fields": ["pack"]}}]	11	1
280	2017-10-29 12:04:46.35435+03	1	Начальные остатки  2017-10-16 20:02:08	2	[{"changed": {"object": "\\u0414\\u0443\\u0431\\u0430\\u0439 12\\u043b 294x260 \\u2014 2 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
281	2017-10-29 12:23:32.182027+03	88	07022 [0150] — 4рул (5/13)	2	[{"changed": {"fields": ["wholesale_price_item"]}}]	10	1
282	2017-10-29 12:24:09.44492+03	126	126 розница  2017-10-29 12:21:46	1	[{"added": {}}, {"added": {"object": "126 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 12:21:46 \\u2014 07022 [0150] \\u2014 3\\u0440\\u0443\\u043b (5/13) - 1000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
283	2017-10-29 12:25:07.522373+03	127	127 розница  2017-10-29 12:24:13	1	[{"added": {}}, {"added": {"object": "127 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 12:24:13 \\u2014 07036 [0324] \\u2014 2 - 1250\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "127 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 12:24:13 \\u2014 PRODecoro \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 250\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
284	2017-10-29 16:01:25.826596+03	128	128 розница  2017-10-29 16:01:02	1	[{"added": {}}, {"added": {"object": "128 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 16:01:02 \\u2014 07050 [0120] \\u2014 7\\u0440\\u0443\\u043b (5/10) - 1300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
285	2017-10-29 18:39:36.686286+03	21	0716-77 [007] — 2рул (6/11)	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
286	2017-10-29 18:40:17.22726+03	160	N2546-1 [140325] — 1рул (7/12)	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
287	2017-10-29 18:41:11.289764+03	35	8543-77 [4A] — 1	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
288	2017-10-29 18:43:24.432491+03	129	129 розница  2017-10-29 18:36:37	1	[{"added": {}}, {"added": {"object": "129 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 18:36:37 \\u2014 \\u041d\\u0430\\u0431\\u0435\\u0440\\u0435\\u0436\\u043d\\u0430\\u044f 12\\u043b 294x260 - 1500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "129 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 18:36:37 \\u2014 \\u0412\\u043e\\u043b\\u0448\\u0435\\u0431\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 12\\u043b 294x260 - 1500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "129 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 18:36:37 \\u2014 0716-77 [007] \\u2014 0\\u0440\\u0443\\u043b (6/11) - 1100\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "129 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 18:36:37 \\u2014 N2546-1 [140325] \\u2014 0\\u0440\\u0443\\u043b (7/12) - 1300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "129 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 18:36:37 \\u2014 PRODecoro \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "129 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 18:36:37 \\u2014 8543-77 [4A] \\u2014 0 - 1000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "129 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 18:36:37 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 29 - 500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "129 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 18:36:37 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
289	2017-10-30 15:25:14.407639+03	130	130 розница  2017-10-30 15:23:44	1	[{"added": {}}, {"added": {"object": "130 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-30 15:23:44 \\u2014 7182-28 [003] \\u2014 12\\u0440\\u0443\\u043b (6/10) - 1000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "130 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-30 15:23:44 \\u2014 7183-28 [003] \\u2014 17\\u0440\\u0443\\u043b (6/13) - 1000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "130 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-30 15:23:44 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "130 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-30 15:23:44 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
290	2017-10-31 10:36:11.652067+03	125	125 розница  2017-10-29 11:10:25	2	[{"changed": {"object": "125 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 11:10:25 \\u2014 3016-3 [029] \\u2014 1 - 700\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
291	2017-10-31 10:36:43.116604+03	125	125 розница  2017-10-29 11:10:25	2	[{"deleted": {"object": "125 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-29 11:10:25 \\u2014 3016-3 [029] \\u2014 1 - 700\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
292	2017-10-31 10:57:52.054931+03	464	10017-03 [13] — 30рул (10/10)	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
294	2017-10-31 12:32:04.985125+03	131	131 розница  2017-10-31 11:29:59	1	[{"added": {}}, {"added": {"object": "131 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-31 11:29:59 \\u2014 3086-2 [004] \\u2014 6\\u0440\\u0443\\u043b (7/11) - 1300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "131 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-31 11:29:59 \\u2014 Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "131 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-31 11:29:59 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
295	2017-10-31 12:32:46.596315+03	132	132 розница  2017-10-31 12:32:09	1	[{"added": {}}, {"added": {"object": "132 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-31 12:32:09 \\u2014 7226-12 [006] \\u2014 6\\u0440\\u0443\\u043b (8/19) - 1600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "132 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-31 12:32:09 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
296	2017-10-31 15:16:12.673471+03	382	20006-02	1	[{"added": {}}]	11	1
297	2017-10-31 15:16:41.947593+03	465	20006-02 [250] — 0рул (10/12)	1	[{"added": {}}]	10	1
298	2017-10-31 15:33:31.567993+03	383	20006-04	1	[{"added": {}}]	11	1
299	2017-10-31 15:33:46.102309+03	466	20006-04 [250] — 0рул (10/12)	1	[{"added": {}}]	10	1
300	2017-10-31 15:35:29.561905+03	384	10009-06	1	[{"added": {}}]	11	1
301	2017-10-31 15:35:48.434458+03	467	10009-06 [250] — 0рул (10/8)	1	[{"added": {}}]	10	1
302	2017-10-31 15:38:08.122821+03	385	10010-06	1	[{"added": {}}]	11	1
303	2017-10-31 15:38:23.27478+03	468	10010-06 [250] — 0рул (10/8)	1	[{"added": {}}]	10	1
304	2017-10-31 15:38:37.961912+03	3	ОВК  2017-10-29 11:15:01	2	[{"added": {"object": "20006-02 [250] \\u2014 27\\u0440\\u0443\\u043b (10/12) \\u2014 27 \\u2014 530\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "20006-04 [250] \\u2014 18\\u0440\\u0443\\u043b (10/12) \\u2014 18 \\u2014 530\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "10009-06 [250] \\u2014 18\\u0440\\u0443\\u043b (10/8) \\u2014 18 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "10010-06 [250] \\u2014 18\\u0440\\u0443\\u043b (10/8) \\u2014 18 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
305	2017-10-31 15:40:10.597593+03	384	10009-06	2	[{"changed": {"fields": ["combination"]}}]	11	1
306	2017-10-31 16:57:52.922564+03	133	133 розница  2017-10-31 16:56:43	1	[{"added": {}}, {"added": {"object": "133 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-31 16:56:43 \\u2014 43119-4 [24.Jan.2014] \\u2014 15\\u0440\\u0443\\u043b (7/14) - 1800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "133 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-31 16:56:43 \\u2014 43120-4 [24.Jan.2014] \\u2014 5\\u0440\\u0443\\u043b (7/6) - 1800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "133 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-31 16:56:43 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "133 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-31 16:56:43 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
307	2017-10-31 17:15:51.1022+03	134	134 розница  2017-10-31 17:15:36	1	[{"added": {}}, {"added": {"object": "134 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-10-31 17:15:36 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 28 - 500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
308	2017-11-01 10:32:57.839935+03	1	Начальные остатки  2017-10-16 20:02:08	2	[{"changed": {"object": "\\u0412\\u043e\\u043b\\u0448\\u0435\\u0431\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0430 12\\u043b 294x260 \\u2014 2 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "\\u041d\\u0430\\u0431\\u0435\\u0440\\u0435\\u0436\\u043d\\u0430\\u044f 12\\u043b 294x260 \\u2014 2 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
309	2017-11-01 16:39:37.666873+03	135	135 розница  2017-11-01 16:38:07	1	[{"added": {}}, {"added": {"object": "135 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:38:07 \\u2014 0715-24 [011] \\u2014 0 - 1000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "135 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:38:07 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
310	2017-11-01 16:42:28.833381+03	136	136 розница  2017-11-01 16:39:56	1	[{"added": {}}, {"added": {"object": "136 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:39:56 \\u2014 8874-12 [4A] \\u2014 12\\u0440\\u0443\\u043b (5/7) - 1300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "136 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:39:56 \\u2014 788084 [4A] \\u2014 17\\u0440\\u0443\\u043b (4/12) - 1300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "136 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:39:56 \\u2014 988047 [363] \\u2014 1\\u0440\\u0443\\u043b (4/10) - 1300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "136 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:39:56 \\u2014 988057 [509] \\u2014 7\\u0440\\u0443\\u043b (4/14) - 1300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "136 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:39:56 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "136 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:39:56 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "136 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:39:56 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
311	2017-11-01 16:47:23.863159+03	137	137 розница  2017-11-01 16:43:10	1	[{"added": {}}, {"added": {"object": "137 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:43:10 \\u2014 7072-28 [029] \\u2014 0 - 1200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "137 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:43:10 \\u2014 7072-28 [034] \\u2014 0\\u0440\\u0443\\u043b (8/12) - 1500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "137 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:43:10 \\u2014 EX 8/308/68-N106 [149555] \\u2014 3\\u0440\\u0443\\u043b (5/15) - 1500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "137 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:43:10 \\u2014 10017-03 [13] \\u2014 26\\u0440\\u0443\\u043b (10/10) - 1500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "137 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:43:10 \\u2014 28422 [1407040] \\u2014 7\\u0440\\u0443\\u043b (8/13) - 2800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "137 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:43:10 \\u2014 \\u0421\\u0442\\u0430\\u0440\\u044b\\u0439 \\u0434\\u0432\\u043e\\u0440\\u0438\\u043a 16\\u043b 392x260 - 1800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "137 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:43:10 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "137 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-01 16:43:10 \\u2014 Decoro \\u0433\\u0440\\u0443\\u043d\\u0442\\u043e\\u0432\\u043a\\u0430 100\\u0433\\u0440 - 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
312	2017-11-02 17:47:13.484888+03	138	138 розница  2017-11-02 17:43:52	1	[{"added": {}}, {"added": {"object": "138 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-02 17:43:52 \\u2014 788071 [4A] \\u2014 9\\u0440\\u0443\\u043b (4/11) - 1400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "138 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-02 17:43:52 \\u2014 788081 [4A] \\u2014 4\\u0440\\u0443\\u043b (4/14) - 1400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
313	2017-11-02 17:47:55.300223+03	139	139 #4 Сайка  2017-11-02 17:47:23	1	[{"added": {}}, {"added": {"object": "139 #4 \\u0421\\u0430\\u0439\\u043a\\u0430  2017-11-02 17:47:23 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 2500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
314	2017-11-02 17:49:09.787378+03	139	139 #4 Сайка  2017-11-02 17:47:23	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
315	2017-11-03 11:27:25.388544+03	1	Начальные остатки  2017-10-16 20:02:08	2	[{"changed": {"object": "07020 [0143] \\u2014 6\\u0440\\u0443\\u043b (5/10) \\u2014 8 \\u2014 1060\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "07025 [0087] \\u2014 4\\u0440\\u0443\\u043b (5/10) \\u2014 4 \\u2014 960\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "07050 [0120] \\u2014 7\\u0440\\u0443\\u043b (5/10) \\u2014 8 \\u2014 1010\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "03085 [0002] \\u2014 8\\u0440\\u0443\\u043b (5/10) \\u2014 13 \\u2014 730\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "04110 [0002] \\u2014 4\\u0440\\u0443\\u043b (5/10) \\u2014 4 \\u2014 830\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "07017 [0296] \\u2014 9\\u0440\\u0443\\u043b (5/13) \\u2014 12 \\u2014 830\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "02065 [0006] \\u2014 11\\u0440\\u0443\\u043b (5/13) \\u2014 12 \\u2014 510\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "07022 [0154] \\u2014 0\\u0440\\u0443\\u043b (5/13) \\u2014 4 \\u2014 870\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "07022 [0150] \\u2014 3\\u0440\\u0443\\u043b (5/13) \\u2014 4 \\u2014 870\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "07036 [0324] \\u2014 2 \\u2014 8 \\u2014 1010\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
316	2017-11-03 15:12:20.714791+03	124	0715-13 [010] — 3	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
317	2017-11-03 15:14:27.652507+03	124	0715-13 [010] — 3рул (4/2)	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
318	2017-11-04 12:10:05.988693+03	37	37 розница  2017-09-20 12:13:21	2	[{"added": {"object": "37 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:13:21 \\u2014 Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"changed": {"object": "37 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:13:21 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 300\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
319	2017-11-04 12:11:23.765577+03	37	37 розница  2017-09-20 12:13:21	2	[{"deleted": {"object": "37 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-09-20 12:13:21 \\u2014 Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
320	2017-11-04 12:36:00.399559+03	140	140 розница  2017-11-03 12:35:01	1	[{"added": {}}, {"added": {"object": "140 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-03 12:35:01 \\u2014 \\u0421\\u0430\\u0434 \\u0428\\u0430\\u0445\\u0440\\u0435\\u0437\\u0430\\u0434\\u044b 9\\u043b 294x201 - 1000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "140 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-03 12:35:01 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150\\u0433\\u0440 - 100\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
321	2017-11-04 12:36:26.88471+03	141	141 розница  2017-11-03 12:36:00	1	[{"added": {}}, {"added": {"object": "141 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-03 12:36:00 \\u2014 3067-6 [002] \\u2014 0 - 500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
322	2017-11-04 12:37:15.320651+03	142	142 розница  2017-11-03 12:36:31	1	[{"added": {}}, {"added": {"object": "142 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-03 12:36:31 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150\\u0433\\u0440 - 100\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
323	2017-11-04 17:48:58.76542+03	143	143 розница  2017-11-04 17:47:24	1	[{"added": {}}, {"added": {"object": "143 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-04 17:47:24 \\u2014 20014-02 [250] \\u2014 24\\u0440\\u0443\\u043b (10/4) - 800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "143 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-04 17:47:24 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
324	2017-11-04 17:49:13.840456+03	144	144 розница  2017-11-04 17:48:59	1	[{"added": {}}, {"added": {"object": "144 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-04 17:48:59 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150\\u0433\\u0440 - 100\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
325	2017-11-04 17:50:24.691174+03	143	143 розница  2017-11-04 17:47:24	2	[{"added": {"object": "143 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-04 17:47:24 \\u2014 \\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150\\u0433\\u0440 - 150\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
326	2017-11-04 17:52:01.87492+03	8	Emsland флизелин 300гр	2	[{"changed": {"fields": ["retail_price"]}}]	8	1
327	2017-11-04 17:52:08.149454+03	145	145 розница  2017-11-04 17:51:02	1	[{"added": {}}, {"added": {"object": "145 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-04 17:51:02 \\u2014 \\u0411\\u0420\\u0410\\u041a [] \\u2014 27 - 500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "145 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-04 17:51:02 \\u2014 Emsland \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 250\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
328	2017-11-04 18:07:06.082518+03	146	146 #9 Барият  2017-11-04 18:06:40	1	[{"added": {}}, {"added": {"object": "146 #9 \\u0411\\u0430\\u0440\\u0438\\u044f\\u0442  2017-11-04 18:06:40 \\u2014 ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 3400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
329	2017-11-05 17:51:18.379567+03	147	147 розница  2017-11-05 17:50:26	1	[{"added": {}}, {"added": {"object": "7252-82 [001] \\u2014 28\\u0440\\u0443\\u043b (7/5) - 6500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
330	2017-11-05 22:53:03.494777+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"fields": ["date"]}}]	15	1
373	2017-11-10 00:29:33.473999+03	4	СтройДеко винил 200 200гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
381	2017-11-10 11:54:18.969801+03	474	VXB-101-02-8 [153025] — 0	1	[{"added": {}}]	10	1
418	2017-11-10 13:18:11.677081+03	313	26800 [13-02-270] — 3	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
331	2017-11-06 15:17:25.85411+03	148	148 розница  2017-11-06 15:16:32	1	[{"added": {}}, {"added": {"object": "26855 [1310010] \\u2014 0 - 1500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
332	2017-11-06 15:18:22.786739+03	149	149 розница  2017-11-06 15:17:40	1	[{"added": {}}, {"added": {"object": "07020 [0143] \\u2014 2\\u0440\\u0443\\u043b (5/10) - 5200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 - 900\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
333	2017-11-06 15:19:07.289441+03	150	150 #15 Казбек  2017-11-06 15:18:47	1	[{"added": {}}, {"added": {"object": "Emsland \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 2700\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
334	2017-11-06 15:22:21.931466+03	151	151 розница  2017-11-06 15:19:12	1	[{"added": {}}, {"added": {"object": "7356-21 [013] \\u2014 9\\u0440\\u0443\\u043b (8/11) - 2800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "7357-21 [020] \\u2014 32\\u0440\\u0443\\u043b (8/10) - 5600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
335	2017-11-06 15:25:18.697268+03	152	152 розница  2017-11-06 15:23:05	1	[{"added": {}}, {"added": {"object": "10009-06 [250] \\u2014 15\\u0440\\u0443\\u043b (10/8) - 4800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "10010-06 [250] \\u2014 17\\u0440\\u0443\\u043b (10/8) - 1600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
336	2017-11-06 16:31:53.672517+03	14	Decoro грунтовка 100гр	3		8	1
337	2017-11-06 17:16:18.879879+03	153	153 розница  2017-11-06 17:13:34	1	[{"added": {}}, {"added": {"object": "0714-62 [001] \\u2014 7\\u0440\\u0443\\u043b (4/7) - 3000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
338	2017-11-07 15:00:01.37689+03	154	154 розница  2017-11-07 14:59:32	1	[{"added": {}}, {"added": {"object": "\\u0411\\u0420\\u0410\\u041a [] \\u2014 19 - 4000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150\\u0433\\u0440 - 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
339	2017-11-07 15:22:55.965167+03	155	155 розница  2017-11-07 15:22:37	1	[{"added": {}}, {"added": {"object": "7153-22 [012] \\u2014 14\\u0440\\u0443\\u043b (6/6) - 1600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
340	2017-11-07 17:08:35.697111+03	139	139 #4 Сайка  2017-11-02 17:47:23	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
341	2017-11-07 17:09:20.441484+03	156	156 #4 Сайка  2017-11-07 17:08:53	1	[{"added": {}}, {"added": {"object": "Emsland \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 2700\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
342	2017-11-07 17:21:40.305838+03	92	92 #14 Дина  2017-10-10 17:12:10	2	[{"changed": {"object": "Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 - 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
343	2017-11-07 17:22:04.212251+03	92	92 #14 Дина  2017-10-10 17:12:10	2	[{"changed": {"object": "Emsland \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 2700\\u20bd", "fields": ["object_id", "count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
344	2017-11-07 17:50:53.705757+03	12	PRODecoro флизелин 250гр	2	[{"changed": {"fields": ["pack"]}}]	8	1
345	2017-11-07 17:54:59.003996+03	50	50 #10 Даният  2017-09-28 12:51:55	2	[{"changed": {"object": "PRODecoro \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
346	2017-11-07 17:55:09.751725+03	50	50 #10 Даният  2017-09-28 12:51:55	2	[{"changed": {"object": "PRODecoro \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 2800\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
347	2017-11-07 18:05:06.672504+03	157	157 розница  2017-11-07 18:04:46	1	[{"added": {}}, {"added": {"object": "Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
374	2017-11-10 00:29:38.982605+03	13	СтройДекоП винил 150 150гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
376	2017-11-10 11:47:13.249819+03	3	ОВК  2017-10-29 11:15:01	2	[{"changed": {"object": "20006-04 [250] \\u2014 18\\u0440\\u0443\\u043b (10/12) \\u2014 27 \\u2014 530\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
416	2017-11-10 12:55:32.374309+03	166	166 розница  2017-11-10 12:55:00 — 1600₽	1	[{"added": {}}, {"added": {"object": "7153-22 [012] \\u2014 13\\u0440\\u0443\\u043b (6/6) \\u2014 1600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
420	2017-11-10 13:19:52.23053+03	179	26803	2	[{"changed": {"fields": ["combination"]}}]	11	1
421	2017-11-10 13:20:06.774503+03	191	26804	2	[{"changed": {"fields": ["combination"]}}]	11	1
348	2017-11-07 18:08:33.863875+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"object": "ACM \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 300\\u0433\\u0440 \\u2014 240 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e \\u0432\\u0438\\u043d\\u0438\\u043b 200\\u0433\\u0440 \\u2014 90 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 \\u2014 150 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 \\u2014 150 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 \\u2014 782 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
349	2017-11-07 18:09:43.250581+03	157	157 розница  2017-11-07 18:04:46	2	[{"changed": {"object": "Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 - 200\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
350	2017-11-07 20:40:51.816403+03	3	ОВК  2017-10-29 11:15:01	2	[{"changed": {"object": "10009-06 [250] \\u2014 15\\u0440\\u0443\\u043b (10/8) \\u2014 18 \\u2014 1050\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "10010-06 [250] \\u2014 17\\u0440\\u0443\\u043b (10/8) \\u2014 18 \\u2014 1010\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
351	2017-11-08 14:10:56.368745+03	158	158 розница  2017-11-08 14:10:04	1	[{"added": {}}, {"added": {"object": "43127-3 [11.Feb.2014] \\u2014 0 - 1300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
352	2017-11-09 16:58:01.764169+03	15	PRODecoro универсал 350гр	1	[{"added": {}}]	8	1
353	2017-11-09 17:22:30.140586+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "PRODecoro \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 350\\u0433\\u0440 \\u2014 24 \\u2014 0\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 \\u2014 300 \\u2014 0\\u20bd", "fields": ["count"]}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "Rips \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 \\u2014 210 \\u2014 0\\u20bd", "fields": ["count"]}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "Emsland \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 \\u2014 330 \\u2014 0\\u20bd", "fields": ["count"]}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "Emsland \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 200\\u0433\\u0440 \\u2014 1012 \\u2014 0\\u20bd", "fields": ["count"]}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "Decoro \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440, \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 \\u2014 510 \\u2014 0\\u20bd", "fields": ["count"]}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "Decoro \\u0432\\u0438\\u043d\\u0438\\u043b, \\u0438\\u043d\\u0434\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440 200\\u0433\\u0440 \\u2014 90 \\u2014 0\\u20bd", "fields": ["count"]}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "PRODecoro \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 250\\u0433\\u0440 \\u2014 168 \\u2014 0\\u20bd", "fields": ["count"]}}]	15	1
354	2017-11-09 17:24:27.630921+03	163	163 розница  2017-11-09 17:23:59	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "3078-2 [003] \\u2014 0\\u0440\\u0443\\u043b (7/18) - 6500\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "PRODecoro \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b 350\\u0433\\u0440 - 300\\u20bd"}}]	19	1
355	2017-11-09 17:26:27.209786+03	164	164 розница  2017-11-09 17:24:38	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "4141-15 [003] \\u2014 41\\u0440\\u0443\\u043b (5/11) - 1800\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "20014-02 [250] \\u2014 20\\u0440\\u0443\\u043b (10/4) - 2800\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland \\u0444\\u043b\\u0438\\u0437\\u0435\\u043b\\u0438\\u043d 300\\u0433\\u0440 - 600\\u20bd"}}]	19	1
356	2017-11-09 17:35:48.694301+03	386	70048-42	1	[{"added": {}}]	11	1
357	2017-11-09 17:36:43.513977+03	469	70048-42 [8A] — 0рул (6/15)	1	[{"added": {}}]	10	1
358	2017-11-09 17:41:36.340124+03	470	7072-11 [046] — 0рул (8/12)	1	[{"added": {}}]	10	1
359	2017-11-09 17:44:28.877048+03	471	07050 [0161] — 0рул (5/10)	1	[{"added": {}}]	10	1
360	2017-11-09 17:46:02.314734+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "70048-42 [8A] \\u2014 26\\u0440\\u0443\\u043b (6/15) \\u2014 26 \\u2014 0\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "7072-11 [046] \\u2014 8\\u0440\\u0443\\u043b (8/12) \\u2014 8 \\u2014 0\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "07050 [0161] \\u2014 8\\u0440\\u0443\\u043b (5/10) \\u2014 8 \\u2014 0\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "EX 8/859/08-N106 [138164] \\u2014 10\\u0440\\u0443\\u043b (5/3) \\u2014 30 \\u2014 0\\u20bd", "fields": ["count"]}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "0715-24 [006] \\u2014 11\\u0440\\u0443\\u043b (6/14) \\u2014 18 \\u2014 0\\u20bd", "fields": ["count"]}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "7183-28 [003] \\u2014 17\\u0440\\u0443\\u043b (6/13) \\u2014 36 \\u2014 0\\u20bd", "fields": ["count"]}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "28422 [1407040] \\u2014 7\\u0440\\u0443\\u043b (8/13) \\u2014 20 \\u2014 0\\u20bd", "fields": ["count"]}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "07036 [0324] \\u2014 2 \\u2014 20 \\u2014 1010\\u20bd", "fields": ["count"]}}]	15	1
361	2017-11-10 00:27:00.182762+03	3	ACM U 300гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
362	2017-11-10 00:27:15.996604+03	2	ACM TNT 300гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
363	2017-11-10 00:27:21.679916+03	1	ACM Marker 300гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
364	2017-11-10 00:27:34.766039+03	11	Decoro винил 200 200гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
365	2017-11-10 00:27:39.465712+03	10	Decoro флиз 200 250гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
366	2017-11-10 00:27:45.476851+03	9	Emsland 200 200гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
367	2017-11-10 00:27:48.330821+03	8	Emsland 300 300гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
368	2017-11-10 00:28:36.794796+03	15	PRODecoro уни 350 350гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
369	2017-11-10 00:28:42.997593+03	12	PRODecoro флиз 250 250гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
370	2017-11-10 00:28:47.968333+03	7	Rips винил 300 300гр	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
377	2017-11-10 11:50:24.433189+03	387	EX 8/785/20-N106	1	[{"added": {}}]	11	1
382	2017-11-10 11:54:46.321004+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"object": "07017 [0306] \\u2014 12 \\u2014 12 \\u2014 830\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "EX 8/785/20-N106 [139980] \\u2014 1 \\u2014 1 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "VXB-101-02-8 [153025] \\u2014 1 \\u2014 1 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "07020 [0143] \\u2014 2\\u0440\\u0443\\u043b (5/10) \\u2014 20 \\u2014 1060\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "07025 [0087] \\u2014 4\\u0440\\u0443\\u043b (5/10) \\u2014 8 \\u2014 960\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "07017 [0296] \\u2014 9\\u0440\\u0443\\u043b (5/13) \\u2014 13 \\u2014 830\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "628-91 [3140A3] \\u2014 9\\u0440\\u0443\\u043b (5/16) \\u2014 24 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "613537 [4] \\u2014 1\\u0440\\u0443\\u043b (10) \\u2014 2 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "07050 [0161] \\u2014 8\\u0440\\u0443\\u043b (5/10) \\u2014 8 \\u2014 1010\\u20bd", "fields": ["price"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
383	2017-11-10 11:57:50.649487+03	333	M 7332 [B] — 2рул (8/2)	2	[{"changed": {"fields": ["retail_price", "stillage", "cell"]}}]	10	1
384	2017-11-10 12:02:02.243382+03	389	50125	1	[{"added": {}}]	11	1
385	2017-11-10 12:02:18.669713+03	475	50125 [1309030] — 0	1	[{"added": {}}]	10	1
386	2017-11-10 12:04:11.149707+03	390	28420	1	[{"added": {}}]	11	1
387	2017-11-10 12:04:38.844419+03	476	28420 [1408110] — 0рул (10)	1	[{"added": {}}]	10	1
388	2017-11-10 12:07:37.613043+03	477	50101 [1308300] — 0рул (10)	1	[{"added": {}}]	10	1
389	2017-11-10 12:08:55.290571+03	391	8527-17	1	[{"added": {}}]	11	1
390	2017-11-10 12:09:11.481678+03	478	8527-17 [23A] — 0	1	[{"added": {}}]	10	1
391	2017-11-10 12:09:51.68283+03	479	8527-17 [23C] — 0	1	[{"added": {}}]	10	1
392	2017-11-10 12:10:26.055681+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"object": "50125 [1309030] \\u2014 1 \\u2014 1 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "28420 [1408110] \\u2014 3\\u0440\\u0443\\u043b (10) \\u2014 3 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "50101 [1308300] \\u2014 1\\u0440\\u0443\\u043b (10) \\u2014 1 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "8527-17 [23A] \\u2014 1 \\u2014 1 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "8527-17 [23C] \\u2014 1 \\u2014 1 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "70984 [A2/1306] \\u2014 1 \\u2014 2 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "M 7332 [B] \\u2014 2\\u0440\\u0443\\u043b (8/2) \\u2014 4 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
393	2017-11-10 12:27:45.571575+03	43	Domani Casa (RU)	1	[{"added": {}}]	12	1
394	2017-11-10 12:30:54.151258+03	392	40507	1	[{"added": {}}]	11	1
395	2017-11-10 12:31:20.174793+03	480	40507 [C] — 0рул (8/16)	1	[{"added": {}}]	10	1
396	2017-11-10 12:32:44.034076+03	393	40509	1	[{"added": {}}]	11	1
397	2017-11-10 12:32:59.550626+03	481	40509 [B1] — 0рул (8/16)	1	[{"added": {}}]	10	1
398	2017-11-10 12:34:05.338187+03	394	40519	1	[{"added": {}}]	11	1
399	2017-11-10 12:34:29.640978+03	482	40519 [A] — 0рул (8/12)	1	[{"added": {}}]	10	1
400	2017-11-10 12:34:42.116833+03	4	ОВК  2017-11-09 12:22:21	1	[{"added": {}}, {"added": {"object": "40507 [C] \\u2014 16\\u0440\\u0443\\u043b (8/16) \\u2014 16 \\u2014 1660\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "40509 [B1] \\u2014 16\\u0440\\u0443\\u043b (8/16) \\u2014 16 \\u2014 1660\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "40519 [A] \\u2014 8\\u0440\\u0443\\u043b (8/12) \\u2014 8 \\u2014 1660\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
401	2017-11-10 12:39:54.673071+03	3	ОВК  2017-10-29 11:15:01	2	[{"changed": {"object": "20006-04 [250] \\u2014 27\\u0440\\u0443\\u043b (10/12) \\u2014 18 \\u2014 530\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
402	2017-11-10 12:40:34.50822+03	483	20006-04 [251] — 0	1	[{"added": {}}]	10	1
403	2017-11-10 12:40:57.482575+03	4	ОВК  2017-11-09 12:22:21	2	[{"added": {"object": "20006-04 [251] \\u2014 9 \\u2014 9 \\u2014 530\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
404	2017-11-10 12:42:16.264043+03	329	70984 [A2/1306] — 2	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
405	2017-11-10 12:43:41.230504+03	329	70984 [A2/1306] — 2рул (8/6)	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
406	2017-11-10 12:44:15.603752+03	202	70966 [A1/1306] — 1рул (8/6)	2	[{"changed": {"fields": ["retail_price", "stillage", "cell", "showcase"]}}]	10	1
407	2017-11-10 12:44:27.004716+03	201	70966 [A2/1306] — 3рул (8/6)	2	[{"changed": {"fields": ["retail_price", "stillage", "cell"]}}]	10	1
408	2017-11-10 12:46:46.238929+03	198	50101 [1310100] — 3рул (8/6)	2	[{"changed": {"fields": ["retail_price", "stillage", "cell"]}}]	10	1
409	2017-11-10 12:46:50.088932+03	477	50101 [1308300] — 1рул (8/6)	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
410	2017-11-10 12:48:07.886933+03	86	02065 [0006] — 11рул (5/10)	2	[{"changed": {"fields": ["cell"]}}]	10	1
411	2017-11-10 12:48:28.762932+03	81	03085 [0002] — 8рул (5/13)	2	[{"changed": {"fields": ["cell"]}}]	10	1
412	2017-11-10 12:49:35.828245+03	78	07020 [0143] — 14	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
413	2017-11-10 12:50:25.708548+03	88	07022 [0150] — 3рул (5/16)	2	[{"changed": {"fields": ["cell", "showcase"]}}]	10	1
414	2017-11-10 12:51:10.10004+03	87	07022 [0154] — 0рул (5/13)	2	[{"changed": {"fields": ["showcase"]}}]	10	1
415	2017-11-10 12:51:46.63708+03	79	07025 [0087] — 8рул (5/13)	2	[{"changed": {"fields": ["cell"]}}]	10	1
419	2017-11-10 13:19:40.826576+03	273	26800	2	[{"changed": {"fields": ["combination"]}}]	11	1
422	2017-11-10 15:50:52.274333+03	261	Вдохновение 9л 294x201	2	[{"changed": {"fields": ["retail_price"]}}]	13	1
423	2017-11-10 16:27:30.428159+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"object": "\\u041f\\u0440\\u0430\\u0437\\u0434\\u043d\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0431\\u0443\\u043a\\u0435\\u0442 6\\u043b 196x201 \\u2014 2 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"object": "\\u0423\\u0442\\u0440\\u0435\\u043d\\u043d\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434 16\\u043b 392x260 \\u2014 2 \\u2014 0\\u20bd", "fields": ["count"], "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
424	2017-11-11 13:51:08.162324+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "\\u0421\\u0430\\u0434 \\u0428\\u0430\\u0445\\u0440\\u0435\\u0437\\u0430\\u0434\\u044b 9\\u043b 294x201 \\u2014 2 \\u2014 0\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "\\u0421\\u0442\\u0430\\u0440\\u044b\\u0439 \\u0434\\u0432\\u043e\\u0440\\u0438\\u043a 16\\u043b 392x260 \\u2014 3 \\u2014 0\\u20bd"}}]	15	1
425	2017-11-11 15:17:05.427368+03	167	167 розница  2017-11-11 15:12:50 — 10200₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "N2545-3 [140321] \\u2014 3\\u0440\\u0443\\u043b (7/12) \\u2014 5700\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7182-28 [003] \\u2014 8\\u0440\\u0443\\u043b (6/10) \\u2014 4000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0444\\u043b\\u0438\\u0437 300 \\u2014 500\\u20bd"}}]	19	1
426	2017-11-11 15:19:31.349482+03	9	Emsland 200	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
427	2017-11-11 15:19:38.63273+03	8	Emsland 300	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
428	2017-11-11 15:19:47.085938+03	1	ACM Marker	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
429	2017-11-11 15:19:49.752549+03	2	ACM TNT	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
430	2017-11-11 15:19:52.180716+03	3	ACM U	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
431	2017-11-11 15:20:08.589495+03	13	СтройДекоП винил 150	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
432	2017-11-11 15:20:19.07189+03	11	Decoro винил 200	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
433	2017-11-11 15:20:43.143428+03	15	DecoroPRO уни 350	2	[{"changed": {"fields": ["warehouse_str", "retail_price"]}}]	8	1
434	2017-11-11 15:20:46.842408+03	10	Decoro флиз 200	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
435	2017-11-11 15:20:56.029092+03	12	DecoroPRO флиз 250	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
436	2017-11-11 15:21:05.51689+03	6	Rips флиз 300	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
437	2017-11-11 15:21:15.78608+03	5	СтройДеко флиз 200	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
438	2017-11-11 15:21:20.333355+03	4	СтройДеко винил 200	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
439	2017-11-11 15:21:27.84097+03	7	Rips винил 300	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
440	2017-11-11 15:23:38.441234+03	4	СтройДеко винил 200	2	[]	8	1
441	2017-11-11 15:23:42.652301+03	13	СтройДекоП винил 150	2	[]	8	1
442	2017-11-11 15:23:47.390995+03	5	СтройДеко флиз 200	2	[]	8	1
443	2017-11-11 17:00:37.814975+03	168	168 розница  2017-11-11 17:00:00 — 1200₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7072-38 [014] \\u2014 0 \\u2014 1000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 200\\u20bd"}}]	19	1
444	2017-11-11 22:02:26.553303+03	169	169 #6 Марат  2017-11-09 12:00:00 — 1700₽	1	[{"added": {}}, {"added": {"object": "\\u0423\\u0442\\u0440\\u0435\\u043d\\u043d\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434 16\\u043b 392x260 \\u2014 1250\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "\\u041f\\u0440\\u0430\\u0437\\u0434\\u043d\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0431\\u0443\\u043a\\u0435\\u0442 6\\u043b 196x201 \\u2014 450\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
445	2017-11-11 22:04:29.193989+03	10	Decoro флиз 250	2	[{"changed": {"fields": ["warehouse_str"]}}]	8	1
446	2017-11-11 22:06:49.326906+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"fields": ["price"], "object": "ACM Marker \\u2014 24 \\u2014 115\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "ACM TNT \\u2014 24 \\u2014 113\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "ACM U \\u2014 240 \\u2014 110\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e \\u0432\\u0438\\u043d\\u0438\\u043b 200 \\u2014 90 \\u2014 55\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e \\u0444\\u043b\\u0438\\u0437 200 \\u2014 300 \\u2014 54\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "Rips \\u0444\\u043b\\u0438\\u0437 300 \\u2014 210 \\u2014 87\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "Rips \\u0432\\u0438\\u043d\\u0438\\u043b 300 \\u2014 30 \\u2014 87\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "Emsland 300 \\u2014 330 \\u2014 76\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "Emsland 200 \\u2014 1012 \\u2014 47\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 510 \\u2014 75\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "Decoro \\u0432\\u0438\\u043d\\u0438\\u043b 200 \\u2014 90 \\u2014 58\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "DecoroPRO \\u0444\\u043b\\u0438\\u0437 250 \\u2014 168 \\u2014 96\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["price"], "object": "DecoroPRO \\u0443\\u043d\\u0438 350 \\u2014 24 \\u2014 134\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
447	2017-11-12 14:38:08.900072+03	170	170 розница  2017-11-12 13:36:52 — 10200₽	1	[{"added": {}}, {"added": {"object": "10017-06 [94] \\u2014 24\\u0440\\u0443\\u043b (10/6) \\u2014 9600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland 300 \\u2014 600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
448	2017-11-12 14:38:38.70843+03	171	171 розница  2017-11-12 14:38:13 — 1300₽	1	[{"added": {}}, {"added": {"object": "07020 [0143] \\u2014 13 \\u2014 1300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
449	2017-11-12 15:11:20.49489+03	172	172 розница  2017-11-12 15:10:54 — 200₽	1	[{"added": {}}, {"added": {"object": "Emsland 200 \\u2014 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
450	2017-11-13 12:29:47.929672+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"fields": ["count"], "object": "28422 [1407040] \\u2014 15\\u0440\\u0443\\u043b (8/13) \\u2014 48 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
451	2017-11-15 12:46:23.659567+03	16	СТИ 	1	[{"added": {}}]	16	1
452	2017-11-15 12:52:04.120134+03	395	8950-66	1	[{"added": {}}]	11	1
453	2017-11-15 12:52:25.945621+03	484	8950-66 [25A] — 0рул (8/19)	1	[{"added": {}}]	10	1
454	2017-11-15 12:55:12.669088+03	44	МИР (RU)	1	[{"added": {}}]	12	1
455	2017-11-15 12:55:56.943237+03	396	45096-02	1	[{"added": {}}]	11	1
456	2017-11-15 12:56:31.881569+03	485	45096-02 [0035] — 0рул (7/11)	1	[{"added": {}}]	10	1
457	2017-11-15 12:58:24.408756+03	397	45096-03	1	[{"added": {}}]	11	1
458	2017-11-15 12:58:36.336251+03	486	45096-03 [0034] — 0рул (7/11)	1	[{"added": {}}]	10	1
459	2017-11-15 12:58:55.385053+03	5	СТИ  2017-11-13 12:43:53	1	[{"added": {}}, {"added": {"object": "8950-66 [25A] \\u2014 30\\u0440\\u0443\\u043b (8/19) \\u2014 30 \\u2014 1270\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "45096-02 [0035] \\u2014 18\\u0440\\u0443\\u043b (7/11) \\u2014 18 \\u2014 865\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "45096-03 [0034] \\u2014 18\\u0440\\u0443\\u043b (7/11) \\u2014 18 \\u2014 865\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
460	2017-11-15 13:00:30.085433+03	206	28422 [1407040] — 43рул (8/20)	2	[{"changed": {"fields": ["cell"]}}]	10	1
461	2017-11-15 13:02:03.254066+03	140	3086-2 [004] — 6рул (7/12)	2	[{"changed": {"fields": ["cell"]}}]	10	1
462	2017-11-15 13:02:43.030649+03	362	7226-12 [006] — 6рул (8/14)	2	[{"changed": {"fields": ["cell"]}}]	10	1
463	2017-11-15 13:03:09.794291+03	375	7252-22 [001] — 16рул (8/15)	2	[{"changed": {"fields": ["cell"]}}]	10	1
464	2017-11-15 13:09:08.657736+03	173	173 розница  2017-11-13 13:06:29 — 300₽	1	[{"added": {}}, {"added": {"object": "Emsland 300 \\u2014 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
465	2017-11-15 13:09:14.945688+03	173	173 розница  2017-11-13 13:06:29 — 300₽	2	[]	19	1
466	2017-11-15 13:10:37.247257+03	174	174 розница  2017-11-13 13:09:15 — 200₽	1	[{"added": {}}, {"added": {"object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
467	2017-11-15 13:11:36.490106+03	175	175 розница  2017-11-15 13:10:43 — 4800₽	1	[{"added": {}}, {"added": {"object": "45096-03 [0034] \\u2014 14\\u0440\\u0443\\u043b (7/11) \\u2014 4400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland 200 \\u2014 400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
468	2017-11-15 13:13:41.713861+03	176	176 розница  2017-11-13 13:11:40 — 6000₽	1	[{"added": {}}, {"added": {"object": "3078-3 [006] \\u2014 1\\u0440\\u0443\\u043b (7/18) \\u2014 5600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland 200 \\u2014 400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
469	2017-11-15 13:14:23.589484+03	171	3078-3 [006] — 1рул (7/18)	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
470	2017-11-15 13:14:38.39986+03	171	3078-3 [006] — 1	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
471	2017-11-15 13:16:16.376131+03	152	152 розница  2017-11-06 15:23:05 — 6800₽	2	[{"changed": {"fields": ["count"], "object": "10010-06 [250] \\u2014 18\\u0440\\u0443\\u043b (10/8) \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
472	2017-11-15 13:16:25.990567+03	152	152 розница  2017-11-06 15:23:05 — 5200₽	2	[{"deleted": {"object": "10010-06 [250] \\u2014 18\\u0440\\u0443\\u043b (10/8) \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
473	2017-11-15 13:18:10.11067+03	175	175 розница  2017-11-13 13:10:43 — 4800₽	2	[{"changed": {"fields": ["date_create", "date_paid"]}}]	19	1
474	2017-11-15 13:19:27.112476+03	177	177 розница  2017-11-14 13:18:17 — 900₽	1	[{"added": {}}, {"added": {"object": "ACM U \\u2014 900\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
475	2017-11-15 13:20:08.528068+03	17	#19 Джабраил 	1	[{"added": {}}]	16	1
476	2017-11-15 13:21:04.840219+03	178	178 #19 Джабраил  2017-11-14 13:19:47 — 2500₽	1	[{"added": {}}, {"added": {"object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 2500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
477	2017-11-15 13:21:21.854152+03	178	178 #19 Джабраил  2017-11-14 13:19:47 — 2500₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
478	2017-11-15 13:22:16.101812+03	179	179 розница  2017-11-15 13:21:31 — 150₽	1	[{"added": {}}, {"added": {"object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150 \\u2014 150\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
479	2017-11-15 13:45:38.645027+03	180	180 розница  2017-11-15 13:42:46 — 22700₽	1	[{"added": {}}, {"added": {"object": "26854 [1310010] \\u2014 5\\u0440\\u0443\\u043b (8/9) \\u2014 22400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "ACM U \\u2014 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
480	2017-11-15 13:52:59.721932+03	181	181 розница  2017-11-15 13:47:24 — 137300₽	1	[{"added": {}}, {"added": {"object": "2348-3 [003] \\u2014 0\\u0440\\u0443\\u043b (5/4) \\u2014 4900\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "N2045-6 [140211] \\u2014 2\\u0440\\u0443\\u043b (7/7) \\u2014 20900\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "613520 [4] \\u2014 6\\u0440\\u0443\\u043b (8/4) \\u2014 12000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "613537 [3] \\u2014 1\\u0440\\u0443\\u043b (7/11) \\u2014 12000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "7252-22 [001] \\u2014 7\\u0440\\u0443\\u043b (8/15) \\u2014 11700\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "28422 [1407040] \\u2014 33\\u0440\\u0443\\u043b (8/20) \\u2014 29000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "7249-22 [002] \\u2014 0\\u0440\\u0443\\u043b (8/15) \\u2014 18000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "7248-22 [005] \\u2014 1\\u0440\\u0443\\u043b (8/14) \\u2014 6000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "3086-4 [001] \\u2014 0\\u0440\\u0443\\u043b (4/15) \\u2014 15600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "ACM U \\u2014 7200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
481	2017-11-15 13:55:08.355045+03	187	613537 [3] — 1рул (7/11)	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
482	2017-11-15 13:56:56.808677+03	353	7248-22 [005] — 1рул (8/14)	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
483	2017-11-15 13:57:08.780892+03	353	7248-22 [005] — 1	2	[{"changed": {"fields": ["stillage", "cell"]}}]	10	1
484	2017-11-15 14:22:48.721308+03	182	182 #10 Даният  2017-11-15 14:22:20 — 3400₽	1	[{"added": {}}, {"added": {"object": "ACM U \\u2014 3400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
485	2017-11-15 17:13:58.649198+03	197	50100 [1311130] — 2	2	[{"changed": {"fields": ["retail_price", "stillage", "cell"]}}]	10	1
486	2017-11-15 17:15:04.260986+03	182	182 #10 Даният  2017-11-15 14:22:20 — 3400₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
487	2017-11-15 17:16:32.694272+03	183	183 розница  2017-11-15 17:15:13 — 750₽	1	[{"added": {}}, {"added": {"object": "0818 [2075] \\u2014 11\\u0440\\u0443\\u043b (3/4) \\u2014 600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150 \\u2014 150\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
488	2017-11-18 10:47:52.67847+03	414	Аллея в саду 12л 294x260	1	[{"added": {}}]	13	1
489	2017-11-18 10:49:17.73715+03	415	Березовая аллея 16л 392x260	1	[{"added": {}}]	13	1
490	2017-11-18 10:50:13.831342+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"object": "\\u0410\\u043b\\u043b\\u0435\\u044f \\u0432 \\u0441\\u0430\\u0434\\u0443 12\\u043b 294x260 \\u2014 1 \\u2014 750\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "\\u0411\\u0435\\u0440\\u0435\\u0437\\u043e\\u0432\\u0430\\u044f \\u0430\\u043b\\u043b\\u0435\\u044f 16\\u043b 392x260 \\u2014 1 \\u2014 810\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["count"], "object": "\\u0421\\u0442\\u0430\\u0440\\u044b\\u0439 \\u0434\\u0432\\u043e\\u0440\\u0438\\u043a 16\\u043b 392x260 \\u2014 4 \\u2014 810\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
491	2017-11-18 11:10:52.328588+03	184	184 #10 Даният  2017-11-16 11:10:10 — 2800₽	1	[{"added": {}}, {"added": {"object": "DecoroPRO \\u0444\\u043b\\u0438\\u0437 250 \\u2014 2800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
492	2017-11-18 11:12:35.306307+03	18	#11 Багун 	1	[{"added": {}}]	16	1
493	2017-11-18 11:13:56.407278+03	185	185 #11 Багун  2017-11-16 11:12:13 — 7700₽	1	[{"added": {}}, {"added": {"object": "Emsland 300 \\u2014 2700\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland 200 \\u2014 2500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 2500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
494	2017-11-18 13:35:20.751372+03	186	186 розница  2017-11-18 13:34:33 — 8400₽	1	[{"added": {}}, {"added": {"object": "VXB-101-02-8 [153025] \\u2014 0 \\u2014 1300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "VXB-102-03-6 [153726] \\u2014 20\\u0440\\u0443\\u043b (4/12) \\u2014 6500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "ACM U \\u2014 600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
495	2017-11-18 17:18:14.70856+03	187	187 розница  2017-11-18 17:17:58 — 1200₽	1	[{"added": {}}, {"added": {"object": "DecoroPRO \\u0443\\u043d\\u0438 350 \\u2014 1200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
496	2017-11-18 17:19:30.407637+03	188	188 розница  2017-11-18 17:18:20 — 1100₽	1	[{"added": {}}, {"added": {"object": "\\u0423\\u043b\\u044b\\u0431\\u043a\\u0430 4\\u043b 194x136 \\u2014 800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150 \\u2014 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
497	2017-11-19 12:56:19.412445+03	416	Золушка 8л 268x196	1	[{"added": {}}]	13	1
498	2017-11-19 12:59:02.483966+03	417	Лунный кот 12л 294x260	1	[{"added": {}}]	13	1
499	2017-11-19 12:59:44.967738+03	418	Цветочная улочка 12л 294x260	1	[{"added": {}}]	13	1
500	2017-11-19 13:00:14.266885+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"object": "\\u0417\\u043e\\u043b\\u0443\\u0448\\u043a\\u0430 8\\u043b 268x196 \\u2014 1 \\u2014 670\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "\\u041b\\u0443\\u043d\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0442 12\\u043b 294x260 \\u2014 1 \\u2014 750\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "\\u0426\\u0432\\u0435\\u0442\\u043e\\u0447\\u043d\\u0430\\u044f \\u0443\\u043b\\u043e\\u0447\\u043a\\u0430 12\\u043b 294x260 \\u2014 1 \\u2014 750\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
501	2017-11-19 13:01:43.461459+03	150	150 #15 Казбек  2017-11-06 15:18:47 — 2700₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
502	2017-11-19 13:03:40.705964+03	189	189 розница  2017-11-19 13:02:51 — 3000₽	1	[{"added": {}}, {"added": {"object": "2348-2 [002] \\u2014 4\\u0440\\u0443\\u043b (5/11) \\u2014 3000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
503	2017-11-19 13:04:48.115741+03	190	190 #14 Дина  2017-11-19 13:04:04 — 5000₽	1	[{"added": {}}, {"added": {"object": "Emsland 200 \\u2014 2500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 2500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
504	2017-11-19 13:05:24.677102+03	191	191 розница  2017-11-19 13:04:51 — 2800₽	1	[{"added": {}}, {"added": {"object": "46032-03 [0006] \\u2014 26\\u0440\\u0443\\u043b (7/10) \\u2014 2800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
505	2017-11-19 13:37:47.289072+03	192	192 #9 Барият  2017-11-19 13:37:31 — 3400₽	1	[{"added": {}}, {"added": {"object": "ACM U \\u2014 3400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
506	2017-11-19 13:38:00.809385+03	192	192 #9 Барият  2017-11-19 13:37:31 — 3400₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
507	2017-11-19 17:20:19.576785+03	192	192 #9 Барият  2017-11-19 13:37:31 — 3400₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
508	2017-11-19 17:20:37.086839+03	190	190 #14 Дина  2017-11-19 13:04:04 — 5000₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
649	2017-12-23 17:35:01.049332+03	435	Прогулка вдвоем 4л 194x136	1	[{"added": {}}]	13	1
509	2017-11-20 10:19:26.387381+03	183	183 розница  2017-11-15 17:15:13 — 750₽	2	[{"changed": {"fields": ["count"], "object": "0818 [2075] \\u2014 12\\u0440\\u0443\\u043b (3/4) \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
510	2017-11-20 10:19:33.366566+03	183	183 розница  2017-11-15 17:15:13 — 150₽	2	[{"deleted": {"object": "0818 [2075] \\u2014 12\\u0440\\u0443\\u043b (3/4) \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
511	2017-11-20 10:20:24.833208+03	193	193 розница  2017-11-19 18:00:00 — 500₽	1	[{"added": {}}, {"added": {"object": "\\u0411\\u0420\\u0410\\u041a [] \\u2014 18 \\u2014 500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
512	2017-11-20 10:47:14.206274+03	419	Жемчужины Парижа 12л 294x260	1	[{"added": {}}]	13	1
513	2017-11-20 10:48:06.384069+03	420	Принцессы 12л 294x260	1	[{"added": {}}]	13	1
514	2017-11-20 10:48:47.164561+03	421	Фреска "Роза" 6л 294x134	1	[{"added": {}}]	13	1
515	2017-11-20 10:49:14.295411+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"object": "\\u0416\\u0435\\u043c\\u0447\\u0443\\u0436\\u0438\\u043d\\u044b \\u041f\\u0430\\u0440\\u0438\\u0436\\u0430 12\\u043b 294x260 \\u2014 1 \\u2014 750\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "\\u041f\\u0440\\u0438\\u043d\\u0446\\u0435\\u0441\\u0441\\u044b 12\\u043b 294x260 \\u2014 1 \\u2014 750\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "\\u0424\\u0440\\u0435\\u0441\\u043a\\u0430 \\"\\u0420\\u043e\\u0437\\u0430\\" 6\\u043b 294x134 \\u2014 1 \\u2014 610\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
516	2017-11-20 16:59:17.101021+03	156	156 #4 Сайка  2017-11-07 17:08:53 — 2700₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
517	2017-11-20 18:10:11.32595+03	194	194 розница  2017-11-20 18:08:55 — 7600₽	1	[{"added": {}}, {"added": {"object": "43119-4 [24.Jan.2014] \\u2014 11\\u0440\\u0443\\u043b (7/14) \\u2014 7200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland 200 \\u2014 400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
518	2017-11-22 11:11:31.712216+03	422	Салюты 16л 392x260	1	[{"added": {}}]	13	1
519	2017-11-22 11:12:21.645536+03	423	Подсолнухи 12л 294x260	1	[{"added": {}}]	13	1
520	2017-11-22 11:12:52.108877+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"object": "\\u0421\\u0430\\u043b\\u044e\\u0442\\u044b 16\\u043b 392x260 \\u2014 1 \\u2014 810\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "\\u041f\\u043e\\u0434\\u0441\\u043e\\u043b\\u043d\\u0443\\u0445\\u0438 12\\u043b 294x260 \\u2014 1 \\u2014 750\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
521	2017-11-22 13:10:26.682471+03	398	40517	1	[{"added": {}}]	11	1
522	2017-11-22 13:11:12.559526+03	487	40517 [A] — 0рул (8/19)	1	[{"added": {}}]	10	1
523	2017-11-22 13:13:28.376216+03	399	40502	1	[{"added": {}}]	11	1
524	2017-11-22 13:13:46.933054+03	488	40502 [D] — 0рул (8/19)	1	[{"added": {}}]	10	1
525	2017-11-22 13:14:32.172167+03	400	40522	1	[{"added": {}}]	11	1
526	2017-11-22 13:14:49.561603+03	489	40522 [D] — 0рул (8/19)	1	[{"added": {}}]	10	1
527	2017-11-22 13:14:52.450498+03	6	СТИ  2017-11-22 13:08:42	1	[{"added": {}}, {"added": {"object": "40517 [A] \\u2014 6\\u0440\\u0443\\u043b (8/19) \\u2014 6 \\u2014 1660\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "40502 [D] \\u2014 6\\u0440\\u0443\\u043b (8/19) \\u2014 6 \\u2014 1660\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "40522 [D] \\u2014 6\\u0440\\u0443\\u043b (8/19) \\u2014 6 \\u2014 1660\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
528	2017-11-23 13:43:55.433451+03	195	195 розница  2017-11-23 13:41:29 — 11300₽	1	[{"added": {}}, {"added": {"object": "788074 [4A] \\u2014 17\\u0440\\u0443\\u043b (4/6) \\u2014 2600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "788084 [4A] \\u2014 15\\u0440\\u0443\\u043b (4/12) \\u2014 2600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "7327-55 [001] \\u2014 19\\u0440\\u0443\\u043b (6/2) \\u2014 2600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "7328-55 [001] \\u2014 23\\u0440\\u0443\\u043b (6/1) \\u2014 2600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "ACM U \\u2014 900\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
529	2017-11-24 14:53:46.999132+03	196	196 розница  2017-11-24 14:51:35 — 3200₽	1	[{"added": {}}, {"added": {"object": "3016-3 [029] \\u2014 0 \\u2014 800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "46058-03 [0000] \\u2014 0 \\u2014 800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "46058-03 [0012] \\u2014 0 \\u2014 800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "46058-03 [0014] \\u2014 0 \\u2014 800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
530	2017-11-24 15:34:35.485653+03	197	197 #7 Райсат  2017-11-24 15:33:36 — 2500₽	1	[{"added": {}}, {"added": {"object": "Emsland 200 \\u2014 2500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
531	2017-11-25 12:08:34.512389+03	198	198 розница  2017-11-25 12:05:54 — 9100₽	1	[{"added": {}}, {"added": {"object": "BA 140037 [8-12-09] \\u2014 4\\u0440\\u0443\\u043b (9/5) \\u2014 4400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "BA 140007 [8-12-09] \\u2014 11\\u0440\\u0443\\u043b (9/9) \\u2014 4400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "ACM U \\u2014 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
561	2017-11-29 13:15:44.789433+03	210	210 розница  2017-11-29 13:15:01 — 2800₽	1	[{"added": {}}, {"added": {"object": "7357-21 [020] \\u2014 30\\u0440\\u0443\\u043b (8/10) \\u2014 2800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
650	2017-12-23 17:36:00.789322+03	436	Фруктовое ассорти 6л 194x204	1	[{"added": {}}]	13	1
532	2017-11-25 14:05:43.826962+03	199	199 розница  2017-11-25 14:04:11 — 6800₽	1	[{"added": {}}, {"added": {"object": "7356-22 [005] \\u2014 0 \\u2014 3600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "70048-42 [8A] \\u2014 24\\u0440\\u0443\\u043b (6/15) \\u2014 2800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland 200 \\u2014 400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
533	2017-11-25 15:19:57.911454+03	6	ОВК  2017-11-22 13:08:42	2	[{"changed": {"fields": ["shipper"]}}]	15	1
534	2017-11-25 15:36:03.758676+03	200	200 розница  2017-11-25 15:38:03 — 17000₽	1	[{"added": {}}, {"added": {"object": "28422 [1407040] \\u2014 31\\u0440\\u0443\\u043b (8/20) \\u2014 5600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "40517 [A] \\u2014 1\\u0440\\u0443\\u043b (8/19) \\u2014 11000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "ACM U \\u2014 400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
535	2017-11-25 17:31:56.143299+03	201	201 #10 Даният  2017-11-25 17:31:36 — 2500₽	1	[{"added": {}}, {"added": {"object": "Emsland 200 \\u2014 2500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
536	2017-11-26 14:49:16.603442+03	202	202 розница  2017-11-26 14:47:22 — 1000₽	1	[{"added": {}}, {"added": {"object": "7188-88 [059] \\u2014 0 \\u2014 1000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
537	2017-11-26 17:37:36.818793+03	19	#16 Узима/Патя 	1	[{"added": {}}]	16	1
538	2017-11-26 17:37:55.347017+03	203	203 #16 Узима/Патя  2017-11-26 17:37:16 — 2500₽	1	[{"added": {}}, {"added": {"object": "Emsland 200 \\u2014 2500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
539	2017-11-27 13:40:44.63529+03	401	3122-11	1	[{"added": {}}]	11	1
540	2017-11-27 13:42:25.266506+03	490	3122-11 [12A] — 0	1	[{"added": {}}]	10	1
541	2017-11-27 13:42:48.959945+03	7	СТИ  2017-11-27 13:39:03	1	[{"added": {}}, {"added": {"object": "3122-11 [12A] \\u2014 18 \\u2014 18 \\u2014 1270\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
542	2017-11-27 13:43:16.89298+03	6	ОВК  2017-11-22 13:08:42	2	[{"changed": {"fields": ["count"], "object": "40517 [A] \\u2014 1\\u0440\\u0443\\u043b (8/19) \\u2014 12 \\u2014 1660\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
543	2017-11-27 13:43:34.338972+03	487	40517 [A/1609] — 7рул (8/19)	2	[{"changed": {"fields": ["the_consignment"]}}]	10	1
544	2017-11-27 13:46:05.981379+03	481	40509 [B1/1611] — 16рул (8/16)	2	[{"changed": {"fields": ["the_consignment"]}}]	10	1
545	2017-11-27 13:47:00.322375+03	482	40519 [A/1609] — 8рул (8/12)	2	[{"changed": {"fields": ["the_consignment"]}}]	10	1
546	2017-11-27 13:48:47.681223+03	480	40507 [C/1703] — 16рул (8/16)	2	[{"changed": {"fields": ["the_consignment"]}}]	10	1
547	2017-11-27 13:49:44.243706+03	489	40522 [D/1703] — 6рул (8/19)	2	[{"changed": {"fields": ["the_consignment"]}}]	10	1
548	2017-11-27 13:50:52.226769+03	488	40502 [D/1705] — 6рул (8/19)	2	[{"changed": {"fields": ["the_consignment"]}}]	10	1
549	2017-11-27 13:53:56.432847+03	491	07022 [0169] — 0	1	[{"added": {}}]	10	1
550	2017-11-27 13:55:50.423208+03	492	07020 [0168] — 0	1	[{"added": {}}]	10	1
551	2017-11-27 13:56:32.957609+03	493	07020 [0169] — 0	1	[{"added": {}}]	10	1
552	2017-11-27 13:57:09.664483+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"object": "07022 [0169] \\u2014 12 \\u2014 12 \\u2014 870\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "07020 [0168] \\u2014 4 \\u2014 4 \\u2014 1060\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"added": {"object": "07020 [0169] \\u2014 4 \\u2014 4 \\u2014 1060\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
553	2017-11-27 14:00:29.927415+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"fields": ["count"], "object": "Emsland 300 \\u2014 390 \\u2014 76\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}, {"changed": {"fields": ["count"], "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 600 \\u2014 75\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
554	2017-11-27 14:23:30.928852+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"fields": ["count"], "object": "ACM U \\u2014 264 \\u2014 110\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
555	2017-11-28 13:50:00.639649+03	204	204 розница  2017-11-27 13:47:25 — 2000₽	1	[{"added": {}}, {"added": {"object": "7048-25 [004] \\u2014 4\\u0440\\u0443\\u043b (6/3) \\u2014 2000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
556	2017-11-28 13:51:31.963764+03	205	205 розница  2017-11-28 13:51:16 — 300₽	1	[{"added": {}}, {"added": {"object": "ACM U \\u2014 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
557	2017-11-28 13:52:18.570259+03	206	206 розница  2017-11-28 13:51:41 — 2600₽	1	[{"added": {}}, {"added": {"object": "9193-42 [5A] \\u2014 0 \\u2014 2400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland 200 \\u2014 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
558	2017-11-28 13:53:54.698797+03	207	207 розница  2017-11-28 13:52:50 — 10200₽	1	[{"added": {}}, {"added": {"object": "46058-10 [0016] \\u2014 22\\u0440\\u0443\\u043b (7/18) \\u2014 9600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland 200 \\u2014 600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
559	2017-11-28 13:54:56.296757+03	208	208 розница  2017-11-28 13:54:23 — 7300₽	1	[{"added": {}}, {"added": {"object": "7074-28 [003] \\u2014 0\\u0440\\u0443\\u043b (6/15) \\u2014 7000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland 300 \\u2014 300\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
560	2017-11-28 17:30:40.987797+03	209	209 розница  2017-11-28 17:30:08 — 200₽	1	[{"added": {}}, {"added": {"object": "Emsland 200 \\u2014 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
562	2017-11-29 13:17:22.721505+03	210	210 розница  2017-11-29 13:15:01 — 2800₽	2	[{"changed": {"fields": ["complement"], "object": "7357-21 [020] \\u2014 30\\u0440\\u0443\\u043b (8/10) \\u2014 2800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
563	2017-11-29 13:25:53.766452+03	210	210 розница  2017-11-29 13:15:01 — 2800₽	2	[{"changed": {"fields": ["count"], "object": "7357-21 [020] \\u2014 31\\u0440\\u0443\\u043b (8/10) \\u2014 1400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
564	2017-11-29 13:27:19.99246+03	211	211 розница  2017-11-29 13:20:17 — 2600₽	1	[{"added": {}}, {"added": {"object": "7356-22 [007] \\u2014 0 \\u2014 1000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "70048-42 [8A] \\u2014 23\\u0440\\u0443\\u043b (6/15) \\u2014 1400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland 200 \\u2014 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
565	2017-11-29 13:29:17.733555+03	201	201 #10 Даният  2017-11-25 17:31:36 — 2500₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
566	2017-11-29 15:01:24.051215+03	212	212 розница  2017-11-29 15:01:04 — 500₽	1	[{"added": {}}, {"added": {"object": "\\u0411\\u0420\\u0410\\u041a [] \\u2014 17 \\u2014 500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
567	2017-11-29 15:48:07.606444+03	213	213 розница  2017-11-29 15:47:22 — 7000₽	1	[{"added": {}}, {"added": {"object": "7053-27 [001] \\u2014 1\\u0440\\u0443\\u043b (4/11) \\u2014 7000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
568	2017-11-29 17:04:48.983527+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"fields": ["count"], "object": "N2546-5 [140325] \\u2014 7\\u0440\\u0443\\u043b (7/12) \\u2014 8 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
569	2017-11-30 12:10:29.976328+03	214	214 розница  2017-11-30 12:09:23 — 950₽	1	[{"added": {}}, {"added": {"object": "\\u042e\\u0436\\u043d\\u0430\\u044f \\u0442\\u0435\\u0440\\u0440\\u0430\\u0441\\u0430 6\\u043b 196x201 \\u2014 800\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150 \\u2014 150\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
570	2017-12-02 11:09:13.520068+03	179	4033-2 [001] — 8рул (7/11)	2	[{"changed": {"fields": ["cell"]}}]	10	1
571	2017-12-02 11:09:17.355961+03	140	3086-2 [004] — 6рул (7/11)	2	[{"changed": {"fields": ["cell"]}}]	10	1
572	2017-12-02 14:39:11.999596+03	402	Бордюр	1	[{"added": {}}]	11	1
573	2017-12-02 14:39:33.79801+03	494	Бордюр [] — 200	1	[{"added": {}}]	10	1
574	2017-12-02 14:51:52.76628+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"object": "\\u0411\\u043e\\u0440\\u0434\\u044e\\u0440 [] \\u2014 200 \\u2014 200 \\u2014 200\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
575	2017-12-02 15:10:06.77897+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"fields": ["price"], "object": "\\u0411\\u043e\\u0440\\u0434\\u044e\\u0440 [] \\u2014 200 \\u2014 200 \\u2014 150\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
576	2017-12-02 15:10:21.312102+03	17	17 розница  2017-09-10 14:37:16 — 200₽	2	[{"added": {"object": "\\u0411\\u043e\\u0440\\u0434\\u044e\\u0440 [] \\u2014 199 \\u2014 250\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
577	2017-12-02 15:18:03.379434+03	143	143 розница  2017-11-04 17:47:24 — 2750₽	2	[{"added": {"object": "\\u0411\\u043e\\u0440\\u0434\\u044e\\u0440 [] \\u2014 191 \\u2014 2000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
578	2017-12-02 15:22:34.953065+03	144	144 розница  2017-11-04 17:48:59 — 100₽	2	[{"added": {"object": "\\u0411\\u043e\\u0440\\u0434\\u044e\\u0440 [] \\u2014 188 \\u2014 750\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
579	2017-12-02 15:28:32.697216+03	193	193 розница  2017-11-19 18:00:00 — 500₽	2	[{"changed": {"fields": ["count"], "object": "\\u0411\\u0420\\u0410\\u041a [] \\u2014 18 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
580	2017-12-02 15:28:43.170277+03	193	193 розница  2017-11-19 18:00:00 — 0₽	3		19	1
581	2017-12-02 15:29:01.92256+03	179	179 розница  2017-11-15 13:21:31 — 150₽	2	[{"added": {"object": "\\u0411\\u0420\\u0410\\u041a [] \\u2014 17 \\u2014 500\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
582	2017-12-02 15:30:41.675189+03	215	215 розница  2017-11-15 15:29:36 — 850₽	1	[{"added": {}}, {"added": {"object": "\\u0411\\u043e\\u0440\\u0434\\u044e\\u0440 [] \\u2014 184 \\u2014 700\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150 \\u2014 150\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
583	2017-12-02 15:31:31.82405+03	215	215 розница  2017-11-15 15:29:36 — 850₽	2	[{"changed": {"fields": ["count"], "object": "\\u0411\\u043e\\u0440\\u0434\\u044e\\u0440 [] \\u2014 188 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"changed": {"fields": ["count"], "object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150 \\u2014 0\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
584	2017-12-02 15:31:43.146515+03	215	215 розница  2017-11-15 15:29:36 — 0₽	3		19	1
585	2017-12-02 15:32:04.500266+03	183	183 розница  2017-11-15 17:15:13 — 150₽	2	[{"added": {"object": "\\u0411\\u043e\\u0440\\u0434\\u044e\\u0440 [] \\u2014 184 \\u2014 700\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
586	2017-12-02 17:06:38.064882+03	3	#4 Асма 	2	[{"changed": {"fields": ["first_name"]}}]	16	1
587	2017-12-02 17:06:59.13065+03	216	216 #4 Асма  2017-12-02 17:06:28 — 2700₽	1	[{"added": {}}, {"added": {"object": "Emsland 300 \\u2014 2700\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
647	2017-12-23 17:31:56.593054+03	433	Космос 4л 194x136	1	[{"added": {}}]	13	1
651	2017-12-23 17:37:32.820881+03	437	Цветущая галерея 8л 272x194	1	[{"added": {}}]	13	1
588	2017-12-03 10:49:37.037636+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"fields": ["count"], "object": "\\u042e\\u0436\\u043d\\u0430\\u044f \\u0442\\u0435\\u0440\\u0440\\u0430\\u0441\\u0430 6\\u043b 196x201 \\u2014 2 \\u2014 195\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430"}}]	15	1
589	2017-12-03 11:24:08.189946+03	217	217 розница  2017-12-03 11:23:05 — 14400₽	1	[{"added": {}}, {"added": {"object": "N2546-5 [140325] \\u2014 0\\u0440\\u0443\\u043b (7/12) \\u2014 14400\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
590	2017-12-03 13:28:59.613439+03	218	218 розница  2017-12-03 13:28:11 — 12600₽	1	[{"added": {}}, {"added": {"object": "3122-11 [12A] \\u2014 10 \\u2014 12000\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}, {"added": {"object": "Emsland 300 \\u2014 600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
591	2017-12-03 17:45:39.691987+03	219	219 розница  2017-12-03 17:45:08 — 5600₽	1	[{"added": {}}, {"added": {"object": "70048-42 [8A] \\u2014 19\\u0440\\u0443\\u043b (6/15) \\u2014 5600\\u20bd", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438"}}]	19	1
592	2017-12-03 17:50:58.585853+03	3	194 розница  2017-11-20 18:08:55 — 7600₽ (17:47:57)	1	[{"added": {}}, {"added": {"object": "194 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-20 18:08:55 \\u2014 7600\\u20bd (17:47:57) \\u2014 3", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u0432\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442\\u0430"}}]	18	1
593	2017-12-04 16:04:30.84781+03	4	186 розница  2017-11-18 13:34:33 — 8400₽ (16:03:06)	1	[{"added": {}}, {"added": {"object": "186 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-18 13:34:33 \\u2014 8400\\u20bd (16:03:06) \\u2014 1", "name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u0432\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442\\u0430"}}]	18	1
594	2017-12-04 20:32:22.120243+03	216	216 #4 Асма  2017-12-02 17:06:28 — 2700₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
595	2017-12-04 20:49:07.902815+03	7	#02 Арслан 	2	[{"changed": {"fields": ["first_name"]}}]	16	1
596	2017-12-04 20:49:10.869345+03	3	#04 Асма 	2	[{"changed": {"fields": ["first_name"]}}]	16	1
597	2017-12-04 20:49:14.379904+03	14	#06 Марат 	2	[{"changed": {"fields": ["first_name"]}}]	16	1
598	2017-12-04 20:49:16.466729+03	4	#07 Райсат 	2	[{"changed": {"fields": ["first_name"]}}]	16	1
599	2017-12-04 20:49:17.888766+03	12	#09 Барият 	2	[{"changed": {"fields": ["first_name"]}}]	16	1
600	2017-12-05 16:13:49.073944+03	220	220 розница  2017-12-05 16:12:36 — 1300₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "07036 [0324] \\u2014 13 \\u2014 1300\\u20bd"}}]	19	1
601	2017-12-05 16:15:25.490889+03	221	221 розница  2017-12-05 16:13:53 — 7600₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7183-28 [003] \\u2014 32\\u0440\\u0443\\u043b (6/13) \\u2014 3000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7182-28 [003] \\u2014 4\\u0440\\u0443\\u043b (6/10) \\u2014 4000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 600\\u20bd"}}]	19	1
602	2017-12-07 17:08:23.30762+03	91	9193-59 [4C] — 17рул (5/10)	2	[{"changed": {"fields": ["cell"]}}]	10	1
603	2017-12-07 17:09:26.652879+03	68	EX 8/851/02-N106 [135372] — 10рул (5/4)	2	[{"changed": {"fields": ["cell"]}}]	10	1
604	2017-12-07 17:09:39.921917+03	76	EX 8/851/14-N106 [135266] — 22рул (5/13)	2	[{"changed": {"fields": ["cell"]}}]	10	1
605	2017-12-07 17:27:25.138768+03	495	3086-4 [004] — 9	1	[{"added": {}}]	10	1
606	2017-12-07 17:32:20.011701+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "3086-4 [004] \\u2014 9 \\u2014 9 \\u2014 1400\\u20bd"}}]	15	1
607	2017-12-07 17:32:56.899261+03	181	181 розница  2017-11-15 13:47:24 — 137300₽	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "3086-4 [004] \\u2014 0 \\u2014 15300\\u20bd"}}]	19	1
608	2017-12-09 13:23:52.099658+03	222	222 розница  2017-12-09 13:22:55 — 3000₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "8950-66 [25A] \\u2014 28\\u0440\\u0443\\u043b (8/19) \\u2014 3000\\u20bd"}}]	19	1
609	2017-12-09 13:48:36.168107+03	223	223 #19 Джабраил  2017-12-09 13:48:12 — 3400₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "ACM U \\u2014 3400\\u20bd"}}]	19	1
610	2017-12-10 16:18:25.245647+03	223	223 #19 Джабраил  2017-12-09 13:48:12 — 3400₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
611	2017-12-11 11:10:45.991893+03	222	222 розница  2017-12-09 13:22:55 — 3000₽	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "fields": ["count"], "object": "8950-66 [25A] \\u2014 27\\u0440\\u0443\\u043b (8/19) \\u2014 4500\\u20bd"}}]	19	1
612	2017-12-11 11:12:20.222743+03	224	224 розница  2017-12-11 11:11:24 — 8000₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "3086-2 [004] \\u2014 0\\u0440\\u0443\\u043b (7/11) \\u2014 7800\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "DecoroPRO \\u0444\\u043b\\u0438\\u0437 250 \\u2014 200\\u20bd"}}]	19	1
613	2017-12-11 12:41:13.685035+03	225	225 розница  2017-12-11 12:20:37 — 5400₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u041b\\u0443\\u043d\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0442 12\\u043b 294x260 \\u2014 1700\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "0714-62 [001] \\u2014 4\\u0440\\u0443\\u043b (4/7) \\u2014 3000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 200\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0411\\u043e\\u0440\\u0434\\u044e\\u0440 [] \\u2014 182 \\u2014 500\\u20bd"}}]	19	1
614	2017-12-11 14:27:01.349969+03	197	197 #07 Райсат  2017-11-24 15:33:36 — 2500₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
615	2017-12-12 15:32:56.607396+03	226	226 розница  2017-12-12 15:32:32 — 2600₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "07036 [0324] \\u2014 11 \\u2014 2600\\u20bd"}}]	19	1
648	2017-12-23 17:33:08.657766+03	434	На закате 4л 194x136	1	[{"added": {}}]	13	1
616	2017-12-13 10:47:26.731733+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "\\u0420\\u0430\\u0439\\u0441\\u043a\\u0438\\u0439 \\u0443\\u0433\\u043e\\u043b\\u043e\\u043a 12\\u043b 294x260 \\u2014 2 \\u2014 750\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "\\u041b\\u0443\\u043d\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0442 12\\u043b 294x260 \\u2014 2 \\u2014 750\\u20bd"}}]	15	1
617	2017-12-13 14:22:58.539537+03	227	227 розница  2017-12-13 14:22:01 — 9000₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7226-12 [006] \\u2014 0\\u0440\\u0443\\u043b (8/14) \\u2014 9000\\u20bd"}}]	19	1
618	2017-12-14 16:26:55.813021+03	228	228 розница  2017-12-14 16:25:31 — 21500₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7356-22 [012] \\u2014 1\\u0440\\u0443\\u043b (8/12) \\u2014 6500\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7357-22 [006] \\u2014 21\\u0440\\u0443\\u043b (7/17) \\u2014 13000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 2000\\u20bd"}}]	19	1
619	2017-12-16 16:43:05.6269+03	229	229 #04 Асма  2017-12-16 16:42:29 — 2100₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Decoro \\u0432\\u0438\\u043d\\u0438\\u043b 200 \\u2014 2100\\u20bd"}}]	19	1
620	2017-12-16 16:44:16.682436+03	230	230 розница  2017-12-16 16:43:16 — 8000₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "07017 [0306] \\u2014 6 \\u2014 7200\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 200\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 600\\u20bd"}}]	19	1
621	2017-12-17 12:05:06.043057+03	231	231 розница  2017-12-17 12:04:37 — 750₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0411\\u043e\\u0440\\u0434\\u044e\\u0440 [] \\u2014 179 \\u2014 750\\u20bd"}}]	19	1
622	2017-12-17 14:49:44.211093+03	232	232 розница  2017-12-17 14:49:11 — 200₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 200\\u20bd"}}]	19	1
623	2017-12-18 11:31:53.74387+03	233	233 розница  2017-12-18 11:31:00 — 12500₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7227-21 [028] \\u2014 7\\u0440\\u0443\\u043b (8/14) \\u2014 11900\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 300 \\u2014 600\\u20bd"}}]	19	1
624	2017-12-19 11:28:09.813363+03	234	234 розница  2017-12-19 11:27:34 — 250₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0411\\u043e\\u0440\\u0434\\u044e\\u0440 [] \\u2014 178 \\u2014 250\\u20bd"}}]	19	1
625	2017-12-19 11:28:59.021283+03	235	235 розница  2017-12-19 11:28:25 — 1100₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "02065 [0006] \\u2014 10\\u0440\\u0443\\u043b (5/10) \\u2014 1100\\u20bd"}}]	19	1
626	2017-12-20 10:12:22.798105+03	228	228 розница  2017-12-14 16:25:31 — 21500₽	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "fields": ["count"], "object": "7356-22 [012] \\u2014 0\\u0440\\u0443\\u043b (8/12) \\u2014 7800\\u20bd"}}]	19	1
627	2017-12-20 10:12:23.055742+03	228	228 розница  2017-12-14 16:25:31 — 22800₽	2	[]	19	1
628	2017-12-20 17:08:10.04635+03	236	236 розница  2017-12-19 17:07:37 — 3400₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Rips \\u0444\\u043b\\u0438\\u0437 300 \\u2014 3400\\u20bd"}}]	19	1
629	2017-12-21 15:52:37.161099+03	237	237 розница  2017-12-21 15:51:36 — 5600₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "3098-3 [002] \\u2014 23\\u0440\\u0443\\u043b (7/20) \\u2014 5200\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 400\\u20bd"}}]	19	1
630	2017-12-23 16:38:57.693439+03	496	7182-28 [002] — 0	1	[{"added": {}}]	10	1
631	2017-12-23 16:41:00.885334+03	5	СТИ  2017-11-13 12:43:53	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "45096-03 [0034] \\u2014 14\\u0440\\u0443\\u043b (7/11) \\u2014 19 \\u2014 865\\u20bd"}}]	15	1
632	2017-12-23 16:42:37.216702+03	365	7226-21 [036] — 1	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
633	2017-12-23 16:42:52.487273+03	367	7226-21 [035] — 1	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
634	2017-12-23 16:43:00.284447+03	366	7226-21 [034] — 1	2	[{"changed": {"fields": ["the_consignment"]}}]	10	1
635	2017-12-23 16:44:25.945067+03	403	7221-22	1	[{"added": {}}]	11	1
636	2017-12-23 16:44:38.163045+03	497	7221-22 [029] — 0	1	[{"added": {}}]	10	1
637	2017-12-23 17:02:39.793551+03	424	Терраса 12л 291x272	1	[{"added": {}}]	13	1
638	2017-12-23 17:03:36.232478+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "7182-28 [002] \\u2014 1 \\u2014 1 \\u2014 0\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "7221-22 [029] \\u2014 2 \\u2014 2 \\u2014 0\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0422\\u0435\\u0440\\u0440\\u0430\\u0441\\u0430 12\\u043b 291x272 \\u2014 1 \\u2014 570\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "Rips \\u0444\\u043b\\u0438\\u0437 300 \\u2014 270 \\u2014 87\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "Emsland 300 \\u2014 450 \\u2014 76\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "Emsland 200 \\u2014 1104 \\u2014 47\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 660 \\u2014 75\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "7327-24 [001] \\u2014 23\\u0440\\u0443\\u043b (6/1) \\u2014 28 \\u2014 0\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "7182-28 [004] \\u2014 3\\u0440\\u0443\\u043b (6/10) \\u2014 8 \\u2014 0\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "7182-28 [003] \\u2014 4\\u0440\\u0443\\u043b (6/10) \\u2014 28 \\u2014 0\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "7226-21 [036] \\u2014 1 \\u2014 2 \\u2014 0\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "7226-21 [035] \\u2014 1 \\u2014 2 \\u2014 0\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "7072-11 [046] \\u2014 8\\u0440\\u0443\\u043b (8/12) \\u2014 9 \\u2014 0\\u20bd"}}]	15	1
639	2017-12-23 17:13:57.246344+03	425	Радужное озеро 9л 291x204	1	[{"added": {}}]	13	1
640	2017-12-23 17:16:07.883877+03	426	Альпийская сказка 9л 291x204	1	[{"added": {}}]	13	1
641	2017-12-23 17:17:08.714945+03	427	Паровозик 6л 204x194	1	[{"added": {}}]	13	1
642	2017-12-23 17:22:19.862437+03	428	Золотая пора 6л 194x204	1	[{"added": {}}]	13	1
643	2017-12-23 17:23:36.686251+03	429	Розы 6л 194x204	1	[{"added": {}}]	13	1
644	2017-12-23 17:24:33.23642+03	430	Забавная кругосветка 4л 194x136	1	[{"added": {}}]	13	1
645	2017-12-23 17:25:56.159202+03	431	Карта странствий 4л 194x136	1	[{"added": {}}]	13	1
646	2017-12-23 17:27:12.853938+03	432	Верные друзья 4л 194x136	1	[{"added": {}}]	13	1
652	2017-12-23 17:39:25.53467+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0420\\u0430\\u0434\\u0443\\u0436\\u043d\\u043e\\u0435 \\u043e\\u0437\\u0435\\u0440\\u043e 9\\u043b 291x204 \\u2014 1 \\u2014 450\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0410\\u043b\\u044c\\u043f\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u0441\\u043a\\u0430\\u0437\\u043a\\u0430 9\\u043b 291x204 \\u2014 1 \\u2014 450\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u041f\\u0430\\u0440\\u043e\\u0432\\u043e\\u0437\\u0438\\u043a 6\\u043b 204x194 \\u2014 1 \\u2014 330\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0417\\u043e\\u043b\\u043e\\u0442\\u0430\\u044f \\u043f\\u043e\\u0440\\u0430 6\\u043b 194x204 \\u2014 1 \\u2014 0\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0420\\u043e\\u0437\\u044b 6\\u043b 194x204 \\u2014 1 \\u2014 0\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0417\\u0430\\u0431\\u0430\\u0432\\u043d\\u0430\\u044f \\u043a\\u0440\\u0443\\u0433\\u043e\\u0441\\u0432\\u0435\\u0442\\u043a\\u0430 4\\u043b 194x136 \\u2014 1 \\u2014 260\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u041a\\u0430\\u0440\\u0442\\u0430 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0441\\u0442\\u0432\\u0438\\u0439 4\\u043b 194x136 \\u2014 1 \\u2014 260\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0412\\u0435\\u0440\\u043d\\u044b\\u0435 \\u0434\\u0440\\u0443\\u0437\\u044c\\u044f 4\\u043b 194x136 \\u2014 1 \\u2014 175\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u041a\\u043e\\u0441\\u043c\\u043e\\u0441 4\\u043b 194x136 \\u2014 1 \\u2014 175\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u041d\\u0430 \\u0437\\u0430\\u043a\\u0430\\u0442\\u0435 4\\u043b 194x136 \\u2014 1 \\u2014 175\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u041f\\u0440\\u043e\\u0433\\u0443\\u043b\\u043a\\u0430 \\u0432\\u0434\\u0432\\u043e\\u0435\\u043c 4\\u043b 194x136 \\u2014 1 \\u2014 175\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0424\\u0440\\u0443\\u043a\\u0442\\u043e\\u0432\\u043e\\u0435 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438 6\\u043b 194x204 \\u2014 1 \\u2014 0\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0426\\u0432\\u0435\\u0442\\u0443\\u0449\\u0430\\u044f \\u0433\\u0430\\u043b\\u0435\\u0440\\u0435\\u044f 8\\u043b 272x194 \\u2014 1 \\u2014 280\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "\\u0423\\u043b\\u044b\\u0431\\u043a\\u0430 4\\u043b 194x136 \\u2014 2 \\u2014 175\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "\\u0414\\u043e\\u0440\\u043e\\u0436\\u043d\\u0430\\u044f \\u0430\\u0437\\u0431\\u0443\\u043a\\u0430 6\\u043b 204x194 \\u2014 2 \\u2014 630\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "\\u0420\\u0430\\u0439\\u0441\\u043a\\u0438\\u0439 \\u0443\\u0433\\u043e\\u043b\\u043e\\u043a 9\\u043b 291x204 \\u2014 2 \\u2014 300\\u20bd"}}]	15	1
653	2017-12-23 17:51:27.19309+03	238	238 розница  2017-12-23 17:51:08 — 2500₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 2500\\u20bd"}}]	19	1
654	2017-12-24 14:24:43.825254+03	404	7181-28	1	[{"added": {}}]	11	1
655	2017-12-24 14:24:51.052942+03	496	7181-28 [002] — 1	2	[{"changed": {"fields": ["vendor_code"]}}]	10	1
656	2017-12-24 14:26:17.673395+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "7181-28 [002] \\u2014 1 \\u2014 2 \\u2014 0\\u20bd"}}]	15	1
657	2017-12-24 14:30:17.760744+03	438	Тигр 12л 294x260	1	[{"added": {}}]	13	1
658	2017-12-24 14:31:09.305389+03	439	Зеркальная орхидея 6л 294x134	1	[{"added": {}}]	13	1
659	2017-12-24 14:33:37.469574+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0422\\u0438\\u0433\\u0440 12\\u043b 294x260 \\u2014 1 \\u2014 750\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0417\\u0435\\u0440\\u043a\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u043e\\u0440\\u0445\\u0438\\u0434\\u0435\\u044f 6\\u043b 294x134 \\u2014 1 \\u2014 610\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "7181-28 [002] \\u2014 2 \\u2014 1 \\u2014 0\\u20bd"}}]	15	1
660	2017-12-24 14:34:56.913063+03	230	230 розница  2017-12-16 16:43:16 — 8000₽	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "fields": ["count"], "object": "07017 [0306] \\u2014 10 \\u2014 2400\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "fields": ["count", "price"], "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 1200\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "fields": ["count"], "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 0\\u20bd"}}]	19	1
661	2017-12-24 14:35:04.221295+03	230	230 розница  2017-12-16 16:43:16 — 3600₽	2	[{"deleted": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 0\\u20bd"}}]	19	1
662	2017-12-24 14:38:24.365295+03	239	239 #04 Асма  2017-12-24 14:36:52 — 550₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0422\\u0440\\u043e\\u043f\\u0438\\u043a\\u0438 9\\u043b 294x201 \\u2014 550\\u20bd"}}]	19	1
663	2017-12-24 14:39:01.246041+03	240	240 розница  2017-12-24 14:38:28 — 1700₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0424\\u0440\\u0435\\u0441\\u043a\\u0430 \\"\\u0422\\u0435\\u0440\\u0440\\u0430\\u0441\\u0430\\" 12\\u043b 294x260 \\u2014 1700\\u20bd"}}]	19	1
664	2017-12-25 11:43:06.901966+03	241	241 розница  2017-12-25 11:38:18 — 86600₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "26804 [13-02-280] \\u2014 3\\u0440\\u0443\\u043b (8/13) \\u2014 25200\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "26854 [1310010] \\u2014 0\\u0440\\u0443\\u043b (8/9) \\u2014 14000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "28422 [1407040] \\u2014 25\\u0440\\u0443\\u043b (8/20) \\u2014 16800\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7110-28 [001] \\u2014 0\\u0440\\u0443\\u043b (6/8) \\u2014 5600\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "10009-06 [250] \\u2014 11\\u0440\\u0443\\u043b (10/8) \\u2014 6000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "10010-06 [250] \\u2014 17\\u0440\\u0443\\u043b (10/8) \\u2014 1500\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7153-22 [012] \\u2014 8\\u0440\\u0443\\u043b (6/6) \\u2014 7500\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "613544 [3] \\u2014 40\\u0440\\u0443\\u043b (8/18) \\u2014 6000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 4000\\u20bd"}}]	19	1
665	2017-12-25 12:14:16.782048+03	242	242 розница  2017-12-25 12:12:59 — 5600₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7182-28 [003] \\u2014 11\\u0440\\u0443\\u043b (6/10) \\u2014 5000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 600\\u20bd"}}]	19	1
666	2017-12-26 13:21:15.448295+03	243	243 розница  2017-12-26 13:19:59 — 3500₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "ACM U \\u2014 900\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "8527-17 [23A] \\u2014 0 \\u2014 1300\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "8527-17 [23C] \\u2014 0 \\u2014 1300\\u20bd"}}]	19	1
667	2017-12-26 17:17:29.060225+03	498	0714-38 [] — 0	1	[{"added": {}}]	10	1
668	2017-12-26 17:18:01.099624+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "0714-38 [] \\u2014 1 \\u2014 1 \\u2014 0\\u20bd"}}, {"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "0714-38 [001] \\u2014 14\\u0440\\u0443\\u043b (4/8) \\u2014 13 \\u2014 0\\u20bd"}}]	15	1
669	2017-12-27 10:58:14.995128+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "\\u0422\\u0440\\u043e\\u043f\\u0438\\u043a\\u0438 9\\u043b 294x201 \\u2014 2 \\u2014 240\\u20bd"}}]	15	1
671	2017-12-27 13:02:20.294538+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "8527-17 [17c] \\u2014 1 \\u2014 1 \\u2014 0\\u20bd"}}]	15	1
672	2017-12-27 13:03:33.048975+03	243	243 розница  2017-12-26 13:19:59 — 3500₽	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "8527-17 [17c] \\u2014 0 \\u2014 1300\\u20bd"}}]	19	1
673	2017-12-27 16:55:31.984978+03	288	43138-3 [17.Feb.2014] — 2	2	[{"changed": {"fields": ["retail_price"]}}]	10	1
674	2017-12-27 16:56:09.946289+03	245	245 розница  2017-12-27 16:55:37 — 2800₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "43138-3 [17.Feb.2014] \\u2014 0 \\u2014 2600\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 200\\u20bd"}}]	19	1
675	2017-12-28 15:59:06.489172+03	238	238 #04 Асма  2017-12-23 17:51:08 — 2500₽	2	[{"changed": {"fields": ["buyer", "date_paid"]}}]	19	1
676	2017-12-28 16:01:46.57415+03	246	246 розница  2017-12-28 16:01:06 — 1600₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "EX 8/785/09-N106 [150327] \\u2014 13\\u0440\\u0443\\u043b (5/1) \\u2014 1600\\u20bd"}}]	19	1
677	2017-12-28 16:02:23.392326+03	247	247 #09 Барият  2017-12-28 16:01:56 — 2700₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 300 \\u2014 2700\\u20bd"}}]	19	1
678	2017-12-28 16:02:33.362992+03	247	247 #09 Барият  2017-12-28 16:01:56 — 2700₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
679	2018-01-03 16:14:33.571309+03	5	170 розница  2017-11-12 13:36:52 — 10200₽ (16:11:33)	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u0432\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442\\u0430", "object": "170 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-12 13:36:52 \\u2014 10200\\u20bd (16:11:33) \\u2014 2"}}]	18	1
680	2018-01-03 16:16:43.672944+03	248	248 розница  2018-01-03 16:15:08 — 11100₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "3122-11 [12A] \\u2014 3 \\u2014 10500\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 600\\u20bd"}}]	19	1
681	2018-01-04 13:34:00.5555+03	6	218 розница  2017-12-03 13:28:11 — 12600₽ (13:31:38)	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u0432\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442\\u0430", "object": "218 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-12-03 13:28:11 \\u2014 12600\\u20bd (13:31:38) \\u2014 5"}}]	18	1
682	2018-01-04 13:34:58.819864+03	249	249 розница  2018-01-04 13:34:11 — 11200₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7328-28 [001] \\u2014 13\\u0440\\u0443\\u043b (6/2) \\u2014 11200\\u20bd"}}]	19	1
683	2018-01-04 13:36:10.2307+03	250	250 розница  2018-01-04 13:35:13 — 6000₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "46032-03 [0006] \\u2014 22\\u0440\\u0443\\u043b (7/10) \\u2014 5600\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 400\\u20bd"}}]	19	1
684	2018-01-04 15:06:37.276127+03	7	200 розница  2017-11-25 15:38:03 — 17000₽ (15:04:17)	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u0432\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442\\u0430", "object": "200 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-11-25 15:38:03 \\u2014 17000\\u20bd (15:04:17) \\u2014 1"}}]	18	1
685	2018-01-06 13:04:22.732656+03	251	251 розница  2018-01-06 13:00:57 — 950₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0420\\u044f\\u0431\\u0438\\u043d\\u043a\\u0430 6\\u043b 196x201 \\u2014 800\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150 \\u2014 150\\u20bd"}}]	19	1
686	2018-01-07 12:22:57.731939+03	252	252 розница  2018-01-07 12:20:08 — 8350₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "05195 [0504-9] \\u2014 22\\u0440\\u0443\\u043b (3/9) \\u2014 1000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "3067-7 [002] \\u2014 0 \\u2014 3600\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "45a-064-05 [0010] \\u2014 23\\u0440\\u0443\\u043b (4/11) \\u2014 3000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 600\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150 \\u2014 150\\u20bd"}}]	19	1
687	2018-01-07 13:42:28.274644+03	253	253 #19 Джабраил  2018-01-07 13:41:49 — 2500₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 2500\\u20bd"}}]	19	1
688	2018-01-07 15:23:22.851215+03	254	254 розница  2018-01-07 15:22:11 — 4400₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "45a-064-05 [0010] \\u2014 19\\u0440\\u0443\\u043b (4/11) \\u2014 4000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 400\\u20bd"}}]	19	1
689	2018-01-07 16:12:42.709503+03	255	255 розница  2018-01-07 16:11:37 — 300₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "ACM U \\u2014 300\\u20bd"}}]	19	1
690	2018-01-08 11:42:29.527242+03	256	256 розница  2018-01-08 11:41:53 — 6000₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "8950-66 [25A] \\u2014 23\\u0440\\u0443\\u043b (8/19) \\u2014 6000\\u20bd"}}]	19	1
691	2018-01-09 11:39:07.971242+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "7057-22 [015] \\u2014 5\\u0440\\u0443\\u043b (6/11) \\u2014 12 \\u2014 0\\u20bd"}}]	15	1
692	2018-01-09 11:43:59.326078+03	440	Блеск 8л 272x194	1	[{"added": {}}]	13	1
693	2018-01-09 11:44:37.846117+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0411\\u043b\\u0435\\u0441\\u043a 8\\u043b 272x194 \\u2014 1 \\u2014 280\\u20bd"}}]	15	1
694	2018-01-09 11:45:40.559147+03	7	СТИ  2017-11-27 13:39:03	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "3122-11 [12A] \\u2014 8 \\u2014 42 \\u2014 1270\\u20bd"}}]	15	1
695	2018-01-10 14:26:35.220182+03	257	257 розница  2018-01-10 14:18:59 — 3200₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7074-43 [001] \\u2014 0\\u0440\\u0443\\u043b (6/10) \\u2014 2000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7075-43 [001] \\u2014 8\\u0440\\u0443\\u043b (6/14) \\u2014 1000\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Decoro \\u0444\\u043b\\u0438\\u0437 250 \\u2014 200\\u20bd"}}]	19	1
696	2018-01-10 14:26:41.033363+03	258	258 розница  2018-01-10 14:19:00 — 9000₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "7183-28 [003] \\u2014 23\\u0440\\u0443\\u043b (6/13) \\u2014 9000\\u20bd"}}]	19	1
697	2018-01-10 15:29:31.053998+03	8	241 розница  2017-12-25 11:38:18 — 86600₽ (15:27:18)	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u0432\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442\\u0430", "object": "241 \\u0440\\u043e\\u0437\\u043d\\u0438\\u0446\\u0430  2017-12-25 11:38:18 \\u2014 86600\\u20bd (15:27:18) \\u2014 1"}}]	18	1
698	2018-01-11 10:35:54.763587+03	259	259 розница  2018-01-11 10:34:56 — 1700₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0411\\u0420\\u0410\\u041a [] \\u2014 14 \\u2014 1500\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Decoro \\u0432\\u0438\\u043d\\u0438\\u043b 200 \\u2014 57 \\u2014 200\\u20bd"}}]	19	1
699	2018-01-11 13:26:41.014678+03	441	Феррари 3л 300x270	1	[{"added": {}}]	13	1
700	2018-01-11 13:27:02.362957+03	20	Тула (панно) 	1	[{"added": {}}]	16	1
701	2018-01-11 13:27:07.196238+03	20	Тула (панно) 	2	[{"changed": {"fields": ["contractor_type"]}}]	16	1
702	2018-01-11 13:30:10.390278+03	8	Тула (панно)  2018-01-11 13:26:51	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0424\\u0435\\u0440\\u0440\\u0430\\u0440\\u0438 3\\u043b 300x270 \\u2014 1 \\u2014 3850\\u20bd"}}]	15	1
703	2018-01-11 13:30:51.337381+03	241	241 розница  2017-12-25 11:38:18 — 86600₽	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0424\\u0435\\u0440\\u0440\\u0430\\u0440\\u0438 3\\u043b 300x270 \\u2014 7000\\u20bd"}}]	19	1
704	2018-01-11 13:31:20.878771+03	241	241 розница  2017-12-25 11:38:18 — 93600₽	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "fields": ["price"], "object": "\\u0424\\u0435\\u0440\\u0440\\u0430\\u0440\\u0438 3\\u043b 300x270 \\u2014 6800\\u20bd"}}]	19	1
705	2018-01-11 15:11:20.899074+03	260	260 розница  2018-01-11 15:10:48 — 950₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0420\\u043e\\u0437\\u043e\\u0432\\u044b\\u0435 \\u0440\\u043e\\u0437\\u044b 6\\u043b 196x201 \\u2014 800\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150 \\u2014 40 \\u2014 150\\u20bd"}}]	19	1
706	2018-01-13 14:26:31.790898+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "\\u0420\\u043e\\u0437\\u043e\\u0432\\u044b\\u0435 \\u0440\\u043e\\u0437\\u044b 6\\u043b 196x201 \\u2014 2 \\u2014 195\\u20bd"}}]	15	1
707	2018-01-13 14:38:22.368003+03	261	261 #04 Асма  2018-01-13 14:37:57 — 2500₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 200 \\u2014 268 \\u2014 2500\\u20bd"}}]	19	1
708	2018-01-13 14:38:41.163949+03	261	261 #04 Асма  2018-01-13 14:37:57 — 2500₽	2	[{"changed": {"fields": ["date_paid"]}}]	19	1
709	2018-01-13 16:48:48.478672+03	262	262 розница  2018-01-13 16:46:13 — 5000₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0412\\u0435\\u0441\\u0451\\u043b\\u044b\\u0439 \\u0441\\u043b\\u043e\\u043d 8\\u043b 268x196 \\u2014 1300\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0412\\u0435\\u0441\\u0451\\u043b\\u0430\\u044f \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f 12\\u043b 294x260 \\u2014 1500\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0421\\u043a\\u0430\\u0437\\u043e\\u0447\\u043d\\u044b\\u0439 \\u043c\\u0438\\u0440 8\\u043b 268x196 \\u2014 1300\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0435 \\u0441\\u043a\\u0430\\u0437\\u043a\\u0438 8\\u043b 272x194 \\u2014 900\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0421\\u0442\\u0440\\u043e\\u0439\\u0414\\u0435\\u043a\\u043e\\u041f \\u0432\\u0438\\u043d\\u0438\\u043b 150 \\u2014 39 \\u2014 0\\u20bd"}}]	19	1
710	2018-01-13 18:13:52.490071+03	263	263 розница  2018-01-13 18:13:02 — 5100₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "EX 8/308/68-N106 [143778] \\u2014 4\\u0440\\u0443\\u043b (5/12) \\u2014 3200\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "EX 8/308/70-N106 [152067/02] \\u2014 9\\u0440\\u0443\\u043b (5/15) \\u2014 1600\\u20bd"}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "Emsland 300 \\u2014 165 \\u2014 300\\u20bd"}}]	19	1
711	2018-01-14 14:34:06.361388+03	1	Начальные остатки  2017-08-31 12:00:00	2	[{"changed": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "fields": ["count"], "object": "N2547-2 [140320] \\u2014 2\\u0440\\u0443\\u043b (7/8) \\u2014 5 \\u2014 0\\u20bd"}}]	15	1
712	2018-01-14 16:40:10.881444+03	442	Цветочная улочка 3л 300x270	1	[{"added": {}}]	13	1
713	2018-01-14 16:40:18.857531+03	8	Тула (панно)  2018-01-11 13:26:51	2	[{"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u0438\\u0445\\u043e\\u0434\\u0430", "object": "\\u0426\\u0432\\u0435\\u0442\\u043e\\u0447\\u043d\\u0430\\u044f \\u0443\\u043b\\u043e\\u0447\\u043a\\u0430 3\\u043b 300x270 \\u2014 1 \\u2014 3850\\u20bd"}}]	15	1
714	2018-01-14 16:40:55.912034+03	264	264 розница  2018-01-14 16:40:35 — 7000₽	1	[{"added": {}}, {"added": {"name": "\\u041f\\u043e\\u0437\\u0438\\u0446\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0438", "object": "\\u0426\\u0432\\u0435\\u0442\\u043e\\u0447\\u043d\\u0430\\u044f \\u0443\\u043b\\u043e\\u0447\\u043a\\u0430 3\\u043b 300x270 \\u2014 7000\\u20bd"}}]	19	1
715	2018-01-14 16:41:44.608195+03	8	Тула (панно)  2017-12-01 13:26:51	2	[{"changed": {"fields": ["date"]}}]	15	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	glue	gluetype
8	glue	glue
9	glue	brand
10	main	theconsignment
11	main	vendorcode
12	main	brand
13	photowp	photowp
14	commodity_turnover	sellingcontent
15	commodity_turnover	receipt
16	commodity_turnover	contractor
17	commodity_turnover	purchasereturncontent
18	commodity_turnover	purchasereturn
19	commodity_turnover	selling
20	commodity_turnover	receiptcontent
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	glue	0001_initial	2017-10-16 16:55:50.710158+03
2	main	0001_initial	2017-10-16 16:55:57.532043+03
3	photowp	0001_initial	2017-10-16 16:56:01.604836+03
4	contenttypes	0001_initial	2017-10-16 16:56:33.186663+03
5	auth	0001_initial	2017-10-16 16:56:33.307339+03
6	admin	0001_initial	2017-10-16 16:56:33.344449+03
7	admin	0002_logentry_remove_auto_add	2017-10-16 16:56:33.379462+03
8	contenttypes	0002_remove_content_type_name	2017-10-16 16:56:33.417451+03
9	auth	0002_alter_permission_name_max_length	2017-10-16 16:56:33.427777+03
10	auth	0003_alter_user_email_max_length	2017-10-16 16:56:33.445681+03
11	auth	0004_alter_user_username_opts	2017-10-16 16:56:33.464145+03
12	auth	0005_alter_user_last_login_null	2017-10-16 16:56:33.482125+03
13	auth	0006_require_contenttypes_0002	2017-10-16 16:56:33.485616+03
14	auth	0007_alter_validators_add_error_messages	2017-10-16 16:56:33.502546+03
15	auth	0008_alter_user_username_max_length	2017-10-16 16:56:33.525205+03
16	sessions	0001_initial	2017-10-16 16:56:33.55159+03
17	commodity_turnover	0001_initial	2017-10-16 20:01:14.344802+03
18	commodity_turnover	0002_auto_20171023_0045	2017-10-23 00:52:40.401864+03
19	glue	0002_auto_20171023_0045	2017-10-23 00:52:40.492892+03
20	main	0002_auto_20171023_0045	2017-10-23 00:52:40.602416+03
21	photowp	0002_auto_20171023_0045	2017-10-23 00:52:40.657576+03
22	commodity_turnover	0003_auto_20171027_2208	2017-10-27 22:41:12.007756+03
23	glue	0003_auto_20171109_2344	2017-11-10 00:26:12.087163+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
wzyp3ynmz9llmhhrv3evo2uvaase1qdd	YTVlNGNiMGU3YjEwNThmNDFhMjRhYzE2MTQwOTRiNTdhMDE2MDFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4Njg5Nzg3MzJlOGRkMmI2MGEyMDI3N2NkZTgwODE4OWQ3MjJiMTgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-10-30 18:39:04.631856+03
f2sliy9lqc8ya127je2ix4eo6bfoc4if	ZGI4MjViN2U3MTFkNDAyMGRjMmM3ZWMyMTNiM2Q5YmNhM2QwYWNjZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIyODY4OTc4NzMyZThkZDJiNjBhMjAyNzdjZGU4MDgxODlkNzIyYjE4In0=	2017-10-30 22:31:41.321797+03
vgq1oliwxre2ljmnojhjo8bi9gudgf2r	ZGI4MjViN2U3MTFkNDAyMGRjMmM3ZWMyMTNiM2Q5YmNhM2QwYWNjZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIyODY4OTc4NzMyZThkZDJiNjBhMjAyNzdjZGU4MDgxODlkNzIyYjE4In0=	2017-11-01 11:46:28.304169+03
qb363946y0tluvlt1uw0ovoq2xh42dqr	ZGI4MjViN2U3MTFkNDAyMGRjMmM3ZWMyMTNiM2Q5YmNhM2QwYWNjZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIyODY4OTc4NzMyZThkZDJiNjBhMjAyNzdjZGU4MDgxODlkNzIyYjE4In0=	2017-11-02 14:38:26.319375+03
tysec54q25vwizkksolnj5ph1wjibhci	ZGI4MjViN2U3MTFkNDAyMGRjMmM3ZWMyMTNiM2Q5YmNhM2QwYWNjZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIyODY4OTc4NzMyZThkZDJiNjBhMjAyNzdjZGU4MDgxODlkNzIyYjE4In0=	2017-11-02 20:57:42.397139+03
rkiy4ulkyio3i5y09h94l91xrj043q6t	Yjc5ZGE2OGRhMjlmZTdlZjkyNzNkNjgxMTIzMmFjZTk0ZmMzMDU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-10 18:32:41.031566+03
jzqkkfp7qgm7ausu1d5ft29uhv76ucpb	Yjc5ZGE2OGRhMjlmZTdlZjkyNzNkNjgxMTIzMmFjZTk0ZmMzMDU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-10 22:10:06.570778+03
jvitbu950rvovjshif6dy01hg7eci2b0	YTVlNGNiMGU3YjEwNThmNDFhMjRhYzE2MTQwOTRiNTdhMDE2MDFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4Njg5Nzg3MzJlOGRkMmI2MGEyMDI3N2NkZTgwODE4OWQ3MjJiMTgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-12 20:01:48.69898+03
ygglgp9ljrb3t4lkqjel6053abnc6y3o	YTVlNGNiMGU3YjEwNThmNDFhMjRhYzE2MTQwOTRiNTdhMDE2MDFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4Njg5Nzg3MzJlOGRkMmI2MGEyMDI3N2NkZTgwODE4OWQ3MjJiMTgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-12 22:49:16.512056+03
uh83n6kn65qm4jvofsuwr4h9foq7jpt1	YTVlNGNiMGU3YjEwNThmNDFhMjRhYzE2MTQwOTRiNTdhMDE2MDFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4Njg5Nzg3MzJlOGRkMmI2MGEyMDI3N2NkZTgwODE4OWQ3MjJiMTgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-14 23:03:21.07575+03
uuue2ohusgtvjvi4tpz2gv4kb5noyals	YTVlNGNiMGU3YjEwNThmNDFhMjRhYzE2MTQwOTRiNTdhMDE2MDFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4Njg5Nzg3MzJlOGRkMmI2MGEyMDI3N2NkZTgwODE4OWQ3MjJiMTgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-16 17:43:30.118566+03
c450hpqps0gfsc8ntv3rrl34y1vumk6j	YTVlNGNiMGU3YjEwNThmNDFhMjRhYzE2MTQwOTRiNTdhMDE2MDFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4Njg5Nzg3MzJlOGRkMmI2MGEyMDI3N2NkZTgwODE4OWQ3MjJiMTgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-16 19:11:28.553527+03
ajs6vbkczg2ns57u85v2d01t6i2bq5hq	YTVlNGNiMGU3YjEwNThmNDFhMjRhYzE2MTQwOTRiNTdhMDE2MDFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI4Njg5Nzg3MzJlOGRkMmI2MGEyMDI3N2NkZTgwODE4OWQ3MjJiMTgiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-19 22:34:41.203092+03
qtla5jvasurruajbsl7xmtf44igqz0hz	Njg1YzA3MjZjNWY2ZjNiYTVmNWNmZDM1NzI0M2ZhZDQ1OGIzOTdhNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyODY4OTc4NzMyZThkZDJiNjBhMjAyNzdjZGU4MDgxODlkNzIyYjE4In0=	2017-11-21 20:38:59.852536+03
ilmq9hoofiqhovo59fw97mj53ieqc48f	NWY4YmFhM2IwYzY1MGU0ZmIxNmMwYTZlYmRiZDMxYTFmYzk3NGRhMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-11-24 00:26:39.354533+03
uegry3g5bygiqgzqtxkd92y5khhgw8c6	ZGI4MjViN2U3MTFkNDAyMGRjMmM3ZWMyMTNiM2Q5YmNhM2QwYWNjZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIyODY4OTc4NzMyZThkZDJiNjBhMjAyNzdjZGU4MDgxODlkNzIyYjE4In0=	2017-11-24 18:33:59.741712+03
r2k04jmx5cxx5un6zrwo1nfyfl3ce3gh	Yjc5ZGE2OGRhMjlmZTdlZjkyNzNkNjgxMTIzMmFjZTk0ZmMzMDU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-25 21:53:35.759988+03
c8jn0780p27aszjdsto143n76tmoh6jx	Yjc5ZGE2OGRhMjlmZTdlZjkyNzNkNjgxMTIzMmFjZTk0ZmMzMDU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-11-25 22:46:22.647156+03
13c69lshg7wlx82wzb75vhb4grilij82	Yjc5ZGE2OGRhMjlmZTdlZjkyNzNkNjgxMTIzMmFjZTk0ZmMzMDU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-02 10:43:44.36048+03
83wddty0q20br31iqepl7y4fdf6f50sx	Yjc5ZGE2OGRhMjlmZTdlZjkyNzNkNjgxMTIzMmFjZTk0ZmMzMDU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-05 22:41:17.726908+03
mz754257p9w7pv07of415mrdry4pf5d4	Yjc5ZGE2OGRhMjlmZTdlZjkyNzNkNjgxMTIzMmFjZTk0ZmMzMDU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-11 17:06:17.655351+03
6g7he51jn9twv6jma7hc8rjmvdsewukf	Yjc5ZGE2OGRhMjlmZTdlZjkyNzNkNjgxMTIzMmFjZTk0ZmMzMDU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-16 11:08:11.474419+03
0o9ag5xzl16e4351ycvs4vhsvwmd8u7j	Yjc5ZGE2OGRhMjlmZTdlZjkyNzNkNjgxMTIzMmFjZTk0ZmMzMDU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-18 20:31:58.454863+03
rg00j3wmo00bj3igzwr2r433icmeoyk2	Yjc5ZGE2OGRhMjlmZTdlZjkyNzNkNjgxMTIzMmFjZTk0ZmMzMDU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-12-18 20:48:56.913965+03
v4rakoj9zqbxtlrczv0m8ytccv85q9hj	NWY4YmFhM2IwYzY1MGU0ZmIxNmMwYTZlYmRiZDMxYTFmYzk3NGRhMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2017-12-30 16:41:33.049914+03
bcnc0qigcm7v235pvobkk81ijwm6p2r2	NWY4YmFhM2IwYzY1MGU0ZmIxNmMwYTZlYmRiZDMxYTFmYzk3NGRhMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-01-04 18:21:32.406479+03
7m16k281tavxrug9vi0u5hu0xr13wnve	NWY4YmFhM2IwYzY1MGU0ZmIxNmMwYTZlYmRiZDMxYTFmYzk3NGRhMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjg2ODk3ODczMmU4ZGQyYjYwYTIwMjc3Y2RlODA4MTg5ZDcyMmIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-01-17 16:10:00.402865+03
\.


--
-- Data for Name: glue_brand; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY glue_brand (id, name) FROM stdin;
1	ACM
2	СтройДеко
3	Rips
4	Emsland
5	Decoro
6	PRODecoro
7	СтройДекоП
\.


--
-- Data for Name: glue_glue; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY glue_glue (id, weight, retail_price, count, pack, area, brand_id, wholesale_price_item, wholesale_price_pack, warehouse_str) FROM stdin;
15	350	350	19	24	50	6	\N	3700	DecoroPRO уни 350
3	300	300	32	24	30	1	\N	3400	ACM U
10	250	200	359	30	35	5	\N	2500	Decoro флиз 250
11	200	200	57	30	25	5	\N	2100	Decoro винил 200
9	200	200	268	46	20	4	\N	2500	Emsland 200
13	150	150	39	0	25	7	\N	\N	СтройДекоП винил 150
8	300	300	165	30	35	4	\N	2700	Emsland 300
1	300	300	22	24	30	1	\N	3500	ACM Marker
2	300	300	19	24	30	1	\N	3500	ACM TNT
4	200	200	90	30	20	2	\N	1800	СтройДеко винил 200
5	200	200	239	30	25	2	\N	1800	СтройДеко флиз 200
7	300	300	29	30	45	3	\N	3400	Rips винил 300
12	250	250	88	24	40	6	\N	2800	DecoroPRO флиз 250
6	300	300	189	30	40	3	\N	3400	Rips флиз 300
\.


--
-- Data for Name: glue_glue_glue_type; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY glue_glue_glue_type (id, glue_id, gluetype_id) FROM stdin;
1	1	1
2	1	2
3	2	1
4	3	3
5	4	4
6	5	1
7	6	1
8	7	4
9	8	1
10	9	1
11	9	2
12	9	3
13	10	1
14	10	2
15	11	2
16	11	4
17	12	1
18	13	4
20	15	3
\.


--
-- Data for Name: glue_gluetype; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY glue_gluetype (id, name) FROM stdin;
1	флизелин
2	индикатор
3	универсал
4	винил
5	грунтовка
\.


--
-- Data for Name: main_brand; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY main_brand (id, name, short_name, country_of_origin, company_of_origin) FROM stdin;
1	Erismann		RU	ООО «Эрисман»
2	АВАНГАРД		RU	АО «Авангард»
3	ART		RU	ООО «АРТ»
4	marburg		DE	
5	SIRPI		IT	Sirpi S.p.A.
6	walltrend		IT	PARATO s.r.l.
7	Murella		IT	Zambaiti Parati S.P.A.
8	\N		IT	PARATO s.r.l.
9	C&D		CH	Zambaiti Group
10	D&C		CH	Zambaiti Group
11	DECORI&DECORI		IT	INDUSTRIE EMILIANA PARATI S.p.A.
12	Oriental Collection		CH	Lecao Wallpaper Co LTD
13	Portofino		IT	Sirpi S.p.A.
14	Versailles		UA	Обойная фабрика «ЭДЕМ»
15	Prestige color		RU	ООО «КОФ «Палитра»
16	Victoria Stenova		RU	ООО «Эрисман»
17	Victoria Stenova		BE	Grandeco Wallfashion Group NV
18	Erismann		DE	
19	Esedra		IT	Industrie Emiliana Parati S.p.A.
20	\N		IT	Industrie Emiliana Parati S.p.A.
21	studio106		KR	Massimo Andrea Rossi
22	Rasch		DE	
23	Sintra		UA	
24	Luxury World		RU	ООО «А.С. и Палитра»
25	Палитра		RU	ООО «КОФ «Палитра»
26	Viva Moda		RU	ООО «КОФ «Палитра»
27	Victoria Stenova		DE	A.S. Creation
28	A.S. Creation		DE	A.S. Creation
29	Status		UA	Обойная фабрика «ЭДЕМ»
30	Grantil		BE	Grandeco
31	IDECO		BE	
32	Andrea Rossi		KR	Massimo Andrea Rossi
33	Zambaiti Parati		IT	Zambaiti Parati S.p.A.
34	Venecia Wallcoverings		CH	Shanghai Venecia Decorative Co, Ltd
35	Delight		CH	
36	Artshow		CH	
37	\N		RU	ООО "Ренессанс"
38	Elysium		RU	ООО "Элизиум"
39	Royal Castle		TW	Royal Castle Co, Ltd
40	Halley		TR	
41	DECOFRANCE		FR	
42	Артекс		RU	ООО "Артекс"
43	Domani Casa		RU	ООО "Фабрика обоев "Прима Италияна"
44	МИР		RU	АО "Авангард"
\.


--
-- Data for Name: main_theconsignment; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY main_theconsignment (id, the_consignment, retail_price, count, stillage, cell, showcase, vendor_code_id, wholesale_price_item, wholesale_price_pack) FROM stdin;
2	4A	1400	17	4	1	t	2	\N	\N
3	001	1400	11	6	11	t	3	\N	\N
5	009	1400	8	4	2	t	5	\N	\N
6	007	1400	13	4	2	t	6	\N	\N
7	001	1000	27	4	3	t	7	\N	\N
8	001	1400	26	4	3	t	8	\N	\N
10	001	1400	22	4	4	t	10	\N	\N
12	5A	1000	12	4	5	t	12	\N	\N
13	4A	1000	7	4	5	f	12	\N	\N
14	4A	1000	10	4	5	t	13	\N	\N
15	4A	1400	24	4	6	t	14	\N	\N
17	164	1400	6	6	7	t	16	\N	\N
18	001	1400	32	4	7	t	17	\N	\N
20	001	1400	6	6	15	t	19	\N	\N
22	001	1400	34	4	8	t	21	\N	\N
24	001	1000	10	6	16	t	23	\N	\N
25	006	1400	37	4	9	t	24	\N	\N
26	005	1400	7	4	9	t	25	\N	\N
27	001	800	1	\N	\N	t	26	\N	\N
29	366	1400	7	4	10	t	28	\N	\N
31	001	1400	5	4	10	t	30	\N	\N
37	676	1400	13	4	12	t	36	\N	\N
39	005	1400	24	4	13	t	38	\N	\N
42	001	1400	6	4	14	t	41	\N	\N
45	4B	1400	15	4	14	t	44	\N	\N
46	4A	1400	13	4	15	t	45	\N	\N
49	10123A1	1400	17	4	16	t	48	\N	\N
51	001	1400	7	4	16	t	50	\N	\N
52	153044	1600	18	5	1	t	51	\N	\N
54	134819	1300	14	5	1	t	53	\N	\N
55	37 V	1400	27	5	2	t	54	\N	\N
56	12	1400	9	5	2	t	55	\N	\N
59	A	1300	8	6	12	t	58	\N	\N
60	A	1300	11	6	12	t	59	\N	\N
61	139004	1300	7	5	4	t	60	\N	\N
64	141245	1600	4	5	3	t	63	\N	\N
65	135158	1300	23	5	5	t	64	\N	\N
66	135367	1300	13	5	5	t	65	\N	\N
67	138167	1300	20	5	6	t	66	\N	\N
69	A	1300	13	6	12	t	68	\N	\N
70	003	800	44	5	7	t	69	\N	\N
72	002	800	16	5	8	t	71	\N	\N
73	003	800	25	5	8	f	71	\N	\N
74	132529	1300	7	5	8	t	72	\N	\N
75	135373	1300	23	5	9	t	73	\N	\N
77	12	1400	9	5	10	t	75	\N	\N
89	145689	1600	19	5	14	t	86	\N	\N
90	4A	1400	15	5	15	t	87	\N	\N
93	4A	1400	13	4	10	t	89	\N	\N
95	A/808	1400	4	10	3	t	91	\N	\N
100	17A	1600	11	4	15	t	46	\N	\N
101	10128A3	800	1	\N	\N	t	96	\N	\N
108	146574	1600	6	5	16	t	102	\N	\N
114	1A	1400	28	6	3	t	108	\N	\N
116	1A	1400	24	6	4	t	110	\N	\N
119	064	1400	18	6	5	t	113	\N	\N
125	011	1400	18	6	8	f	5	\N	\N
126	020	1400	18	6	9	t	118	\N	\N
130	003	1000	4	6	10	t	121	\N	\N
139	004	1400	30	7	1	f	128	\N	\N
141	11.Feb.2014	2000	23	7	2	t	130	\N	\N
142	11.Feb.2014	2000	22	7	2	t	131	\N	\N
143	002	1400	16	7	3	t	132	\N	\N
144	007	1400	36	7	3	t	133	\N	\N
146	140321	2000	23	7	6	t	135	\N	\N
147	140320	2000	24	7	6	t	136	\N	\N
148	A/808	1400	15	10	3	t	137	\N	\N
149	140320	2000	38	7	7	t	138	\N	\N
9	001	1400	0	6	8	t	9	\N	\N
121	002	1000	20	6	6	t	115	\N	\N
71	4A	1400	12	5	7	t	70	\N	\N
123	002	1000	6	6	7	t	117	\N	\N
97	143944	1200	2	\N	\N	t	93	\N	\N
57	153047	1200	2	\N	\N	t	56	\N	\N
124	010	1400	3	4	2	t	5	\N	\N
98	143947	1200	3	\N	\N	t	94	\N	\N
96	153918	1200	3	\N	\N	t	92	\N	\N
99	014	1200	0	\N	\N	t	95	\N	\N
36	153726	1400	21	4	12	t	35	\N	\N
131	001	1000	0	6	10	t	122	\N	\N
41	4A	1400	14	4	13	t	40	\N	\N
79	0087	1300	8	5	13	t	77	\N	\N
16	4A	1400	17	4	6	t	15	\N	\N
28	003	1400	0	4	10	t	27	\N	\N
4	001	1400	11	4	2	t	4	\N	\N
115	004	1000	4	6	3	t	109	\N	\N
137	001	1000	1	6	15	t	126	\N	\N
84	003	800	41	5	11	t	82	\N	\N
11	001	1400	28	4	4	t	11	\N	\N
110	001	1400	24	6	1	t	104	\N	\N
129	003	1000	11	6	10	t	120	\N	\N
120	012	1600	8	6	6	t	114	\N	\N
127	50525B1	1400	4	6	9	f	119	\N	\N
91	4C	1400	17	5	10	f	87	\N	\N
105	143778	1600	4	5	12	t	100	\N	\N
78	0143	1400	13	\N	\N	t	76	\N	\N
63	003	800	0	5	4	t	62	\N	\N
132	011	1000	15	6	13	t	123	\N	\N
103	006	1400	17	6	14	t	98	\N	\N
122	002	1000	7	6	7	t	116	\N	\N
62	003	800	0	5	4	t	61	\N	\N
109	3140A3	800	21	5	16	t	103	\N	\N
94	001	1000	0	\N	\N	t	90	\N	\N
138	003	1000	0	6	15	t	127	\N	\N
117	003	1400	10	6	4	t	111	\N	\N
21	007	1100	0	6	11	t	20	\N	\N
23	001	1400	13	4	8	t	22	\N	\N
133	002	800	0	\N	\N	t	124	\N	\N
150	140211	2000	2	7	7	t	139	\N	\N
48	001	1400	0	4	15	t	47	\N	\N
83	002	800	4	5	11	t	81	\N	\N
112	001	1400	19	6	2	t	106	\N	\N
111	001	1400	23	6	1	t	105	\N	\N
136	011	1100	0	\N	\N	t	98	\N	\N
106	149555	1600	3	5	15	f	100	\N	\N
33	4A	1400	9	4	11	t	32	\N	\N
44	4A	1400	4	4	14	t	43	\N	\N
34	001	1000	1	4	11	t	33	\N	\N
19	001	1000	4	4	7	t	18	\N	\N
68	135372	1300	10	5	4	t	67	\N	\N
76	135266	1300	22	5	13	t	74	\N	\N
140	004	1400	0	7	11	t	129	\N	\N
128	004	1000	2	6	10	f	120	\N	\N
53	150327	1600	13	5	1	t	52	\N	\N
113	001	1400	13	6	2	t	107	\N	\N
92	015	1400	6	6	11	t	88	\N	\N
135	001	1000	8	6	14	t	125	\N	\N
107	152067/02	1600	9	5	15	t	101	\N	\N
151	140320	2000	0	7	8	t	140	\N	\N
152	140320	2000	5	7	8	t	141	\N	\N
153	002	1000	21	7	8	t	142	\N	\N
154	002	1000	12	7	8	t	143	\N	\N
155	140325	2000	19	7	10	t	144	\N	\N
157	140211	2000	11	7	12	t	146	\N	\N
161	11.Feb.2014	2000	8	7	12	t	150	\N	\N
164	002	1400	36	7	15	t	153	\N	\N
165	001	1400	21	7	15	t	154	\N	\N
167	003	1400	41	7	16	t	156	\N	\N
169	007	1400	9	7	18	f	128	\N	\N
172	006	1400	36	7	19	t	128	\N	\N
173	B/1305	2000	23	8	3	t	159	\N	\N
174	004	1400	20	7	20	t	160	\N	\N
176	0009	1400	6	7	3	t	162	\N	\N
177	002	1400	6	7	16	t	163	\N	\N
178	0016	1400	5	7	7	t	164	\N	\N
180	002	1400	5	7	8	t	166	\N	\N
182	001	1400	22	8	4	t	168	\N	\N
185	5	1600	22	8	8	t	171	\N	\N
189	1312050	3000	20	8	1	t	175	\N	\N
190	1312050	3000	16	8	1	t	176	\N	\N
191	C/1401	3000	4	8	2	f	177	\N	\N
192	A1/1311	3000	4	8	2	f	177	\N	\N
193	A/1311	3000	8	8	2	t	177	\N	\N
194	B	3000	12	8	2	t	178	\N	\N
195	1304120	3000	19	8	5	t	179	\N	\N
196	1303060	3000	12	8	5	t	180	\N	\N
200	1309040	3000	5	8	6	t	184	\N	\N
204	1404020	3000	17	8	9	t	187	\N	\N
207	1303070	3000	13	8	13	t	190	\N	\N
209	A1/1311	3000	15	8	17	t	192	\N	\N
210	A1/1306	3000	8	8	17	t	193	\N	\N
211	1311200	3000	8	8	17	t	194	\N	\N
214	5A	1400	4	4	7	t	197	\N	\N
221	4A	1400	4	4	1	t	201	\N	\N
222		1500	1	\N	\N	t	202	\N	\N
225	007	1400	16	4	13	t	39	\N	\N
229	3	1200	1	\N	\N	t	204	\N	\N
230	9	1200	1	\N	\N	t	204	\N	\N
231		1200	1	\N	\N	t	204	\N	\N
232	C/606	1200	11	1	2	t	205	\N	\N
234	C/606	1200	7	1	2	t	207	\N	\N
235	C/606	1200	12	9	5	t	208	\N	\N
236	A/1302	2000	9	1	1	t	209	\N	\N
237	C/104	1200	10	1	1	t	210	\N	\N
238	D	1200	42	9	6	t	211	\N	\N
239	A	2000	29	9	10	t	212	\N	\N
240	A/908	1200	16	9	3	t	213	\N	\N
241	A/908	1200	20	9	8	t	214	\N	\N
242	A	2000	20	9	12	t	215	\N	\N
243	A	2000	24	9	2	t	216	\N	\N
244	A	2000	29	9	11	t	217	\N	\N
245	A	2000	26	9	5	t	218	\N	\N
246	G	2000	22	9	1	t	219	\N	\N
247	R	1200	8	9	10	t	220	\N	\N
248	A	1200	12	9	7	t	221	\N	\N
249	A	1200	9	9	4	t	222	\N	\N
250	2014	1200	9	9	2	t	223	\N	\N
251	2015	1200	6	9	2	f	223	\N	\N
252	B	1200	9	1	2	t	224	\N	\N
253	81031	2000	4	9	12	t	225	\N	\N
254	B	2000	6	1	2	t	226	\N	\N
255	O	1200	25	9	7	t	227	\N	\N
257	B	1200	10	1	2	t	229	\N	\N
260	A	1200	17	9	1	t	232	\N	\N
263	A	2000	1	\N	\N	t	235	\N	\N
264	2007	1200	1	\N	\N	t	236	\N	\N
265	A/908	1200	13	1	1	t	237	\N	\N
266	A/908	1200	13	9	12	t	238	\N	\N
267	8-12-09	1200	7	9	8	t	239	\N	\N
269	A/908	1200	13	9	3	t	241	\N	\N
270	8-12-09	1200	11	2	1	t	242	\N	\N
271	8-12-09	1200	32	9	9	t	243	\N	\N
273	8-12-09	1200	19	1	3	t	245	\N	\N
274	10-02-19	1200	11	2	1	t	246	\N	\N
275	8-12-09	1200	9	2	1	t	247	\N	\N
276	A/908	1200	23	9	4	t	248	\N	\N
277	8-12-09	1200	7	9	3	t	249	\N	\N
279	8-12-09	1200	13	2	1	t	251	\N	\N
280	144028	1600	8	5	3	t	63	\N	\N
282	162	800	1	\N	\N	t	42	\N	\N
286	17.Feb.2014	1300	1	\N	\N	t	256	\N	\N
290	144179	600	1	\N	\N	t	259	\N	\N
291	139425	800	1	\N	\N	t	260	\N	\N
203	A	3000	4	8	6	t	186	\N	\N
223	92730	500	0	\N	\N	t	203	\N	\N
226	134826	800	1	\N	\N	t	73	\N	\N
228	140310	1300	1	\N	\N	t	139	\N	\N
218	11A	1200	2	\N	\N	t	199	\N	\N
288	17.Feb.2014	1500	0	\N	\N	t	258	\N	\N
259	2011	1200	2	\N	\N	t	231	\N	\N
287	24.Jan.2014	1500	2	\N	\N	t	257	\N	\N
283	24.Jan.2014	1500	2	\N	\N	t	253	\N	\N
295	4A	1000	2	\N	\N	t	263	\N	\N
220	4A	1100	2	\N	\N	t	200	\N	\N
168	0016	1400	22	7	18	t	157	\N	\N
216	8A	1200	2	\N	\N	t	199	\N	\N
208	13-02-280	3000	4	8	13	t	191	\N	\N
262	A	2000	2	\N	\N	t	234	\N	\N
296	1	800	3	\N	\N	t	264	\N	\N
171	006	1000	1	\N	\N	t	158	\N	\N
258	AG/606	1200	12	9	8	t	230	\N	\N
284	140324	1700	3	\N	\N	t	254	\N	\N
292	151913	1200	3	\N	\N	t	261	\N	\N
198	1310100	3000	3	8	6	t	182	\N	\N
261	C/606	1200	3	\N	\N	t	233	\N	\N
212	006	1000	0	\N	\N	t	195	\N	\N
281	001	1000	0	\N	\N	t	252	\N	\N
217	9A	1000	0	\N	\N	t	199	\N	\N
219	13A	1000	0	\N	\N	t	199	\N	\N
293	138168	1000	0	\N	\N	t	262	\N	\N
156	0006	1400	22	7	10	t	145	\N	\N
213	001	1200	0	\N	\N	t	196	\N	\N
162	140320	2000	24	7	14	t	151	\N	\N
166	0003	1400	0	7	15	t	155	\N	\N
227	134825	800	0	\N	\N	t	74	\N	\N
184	001	1400	10	8	8	t	170	\N	\N
299	0000	800	0	\N	\N	t	155	\N	\N
202	A1/1306	3000	1	8	6	f	185	\N	\N
285	11.Feb.2014	1300	0	\N	\N	t	255	\N	\N
170	003	1400	0	7	18	f	128	\N	\N
197	1311130	2000	2	\N	\N	t	181	\N	\N
289	4	1400	2	10	\N	t	173	\N	\N
201	A2/1306	3000	3	8	6	t	185	\N	\N
183	4	1600	6	8	4	t	169	\N	\N
175	002	1400	23	7	20	t	161	\N	\N
297	0012	800	0	\N	\N	t	155	\N	\N
298	0014	800	0	\N	\N	t	155	\N	\N
268	8-12-09	1200	4	9	5	t	240	\N	\N
278	8-12-09	1200	11	9	9	t	250	\N	\N
215	5A	1200	0	\N	\N	t	198	\N	\N
163	24.Jan.2014	2000	14	7	14	t	152	\N	\N
179	001	1400	8	7	11	t	165	\N	\N
158	140325	2000	0	7	12	t	147	\N	\N
301	0012	800	1	\N	\N	t	164	\N	\N
310	176	1600	18	6	16	t	272	\N	\N
314	179	1400	5	4	12	f	36	\N	\N
316	1403310	1500	1	\N	\N	t	275	\N	\N
317	1403040	1500	1	\N	\N	t	187	\N	\N
321	1309030	1500	1	\N	\N	t	277	\N	\N
324	1309040	1500	1	\N	\N	t	278	\N	\N
325	1309040	1500	1	\N	\N	t	277	\N	\N
326	1308020	1500	1	\N	\N	t	279	\N	\N
327	A/1311	1500	1	\N	\N	t	280	\N	\N
330	10	500	19	10	2	t	283	\N	\N
335	E	2400	1	\N	\N	t	288	\N	\N
337	E	2400	1	\N	\N	t	290	\N	\N
338	P	2400	1	\N	\N	t	291	\N	\N
339	N	2400	6	10	1	t	292	\N	\N
340	11-04-29	1200	6	10	1	t	293	\N	\N
341	C	1200	4	10	1	t	294	\N	\N
343	10554A2	1400	6	6	9	f	119	\N	\N
344	10011B2	1400	12	6	14	t	119	\N	\N
345	002	1600	7	8	14	t	295	\N	\N
348	047	1600	5	8	12	t	297	\N	\N
349	037	1200	1	\N	\N	t	297	\N	\N
350	048	1200	1	\N	\N	t	297	\N	\N
351	001	1600	15	8	11	t	298	\N	\N
354	001	1600	15	8	15	t	301	\N	\N
356	001	1600	4	8	7	f	302	\N	\N
357	002	1600	14	7	13	t	303	\N	\N
358	003	1600	21	7	13	t	304	\N	\N
359	002	1600	6	7	13	f	304	\N	\N
360	007	1600	18	8	7	t	305	\N	\N
361	010	1200	1	\N	\N	t	305	\N	\N
377	002	1400	26	7	9	t	317	\N	\N
378	002	1400	14	7	9	t	318	\N	\N
379	005	1400	19	7	5	t	319	\N	\N
384	046	1000	1	\N	\N	t	113	\N	\N
387	021	1300	1	\N	\N	t	308	\N	\N
388	001	1300	1	\N	\N	t	322	\N	\N
395	33	600	12	2	3	t	327	\N	\N
396	23	600	24	2	3	t	328	\N	\N
398	0503-4	600	12	3	9	t	330	\N	\N
400	002	700	18	3	6	t	332	\N	\N
401	006	700	9	3	6	f	332	\N	\N
402	003	700	36	3	9	t	333	\N	\N
403	009	600	24	1	3	t	334	\N	\N
404	040	600	12	3	5	t	335	\N	\N
405	002	600	9	3	12	f	335	\N	\N
406	010	600	96	3	8	t	336	\N	\N
407	007	600	37	3	7	t	337	\N	\N
408	008	600	60	3	11	t	338	\N	\N
409	005	600	36	3	10	t	339	\N	\N
410	015	600	13	3	11	f	339	\N	\N
412	004	600	24	3	4	t	340	\N	\N
413	009	600	12	3	4	f	340	\N	\N
414	005	600	12	3	10	t	341	\N	\N
416	002	450	9	2	2	t	343	\N	\N
417	002	450	10	2	2	t	344	\N	\N
418	2002	600	12	1	5	t	345	\N	\N
419	2003	600	12	1	5	t	346	\N	\N
421	2152	600	12	3	5	t	348	\N	\N
422	006	600	48	3	4	t	349	\N	\N
423	40	700	12	2	2	t	350	\N	\N
424	24	600	48	3	12	t	351	\N	\N
425	17	600	24	2	5	t	352	\N	\N
426	15	600	24	3	3	t	353	\N	\N
427	14	600	60	3	3	f	353	\N	\N
428	10	600	120	2	5	t	354	\N	\N
429	09	600	12	2	5	f	354	\N	\N
430	13	600	36	3	7	t	355	\N	\N
431	17	600	12	3	7	f	355	\N	\N
433	006	700	18	3	1	t	357	\N	\N
434	007	700	9	3	1	f	357	\N	\N
435	001	700	9	1	3	f	357	\N	\N
436	10540A3	700	9	2	2	t	358	\N	\N
437	5245A1	700	9	2	2	t	359	\N	\N
438	5246A2	700	9	2	2	t	360	\N	\N
439	007	600	12	3	10	t	361	\N	\N
440	002	600	12	3	6	t	362	\N	\N
441	267	600	24	3	10	t	363	\N	\N
442	270	600	48	2	5	f	363	\N	\N
443	117	600	24	3	12	t	364	\N	\N
444	99	600	12	2	5	f	364	\N	\N
445	2159	700	24	3	6	t	365	\N	\N
446	273	600	36	3	1	t	366	\N	\N
447	275	600	60	3	2	f	366	\N	\N
448	274	600	12	3	2	f	366	\N	\N
449	126	600	84	2	4	t	367	\N	\N
450	F	700	12	1	5	t	368	\N	\N
451	2013	600	48	1	4	t	369	\N	\N
394	001	1000	0	8	14	t	326	\N	\N
380	012	1200	1	\N	\N	t	312	\N	\N
342	I	2400	1	\N	\N	f	289	\N	\N
411		600	2	\N	\N	f	339	\N	\N
392	001	1300	2	\N	\N	t	325	\N	\N
382	006	1200	2	\N	\N	t	320	\N	\N
391	006	1300	2	\N	\N	t	305	\N	\N
383	002	1000	0	\N	\N	t	321	\N	\N
363	018	1600	0	8	14	t	307	\N	\N
322	1311210	2000	2	\N	\N	t	277	\N	\N
307	24A	1200	2	\N	\N	t	271	\N	\N
329	A2/1306	3000	2	8	6	t	282	\N	\N
334	F	2400	2	\N	\N	t	287	\N	\N
336	O	2400	2	\N	\N	t	289	\N	\N
300	0000	1200	3	\N	\N	t	265	\N	\N
393	010	1300	0	\N	\N	t	307	\N	\N
385	059	1000	0	\N	\N	t	113	\N	\N
386	020	1500	3	\N	\N	t	308	\N	\N
306	128855	1500	3	\N	\N	t	270	\N	\N
381	014	1000	0	\N	\N	t	320	\N	\N
318	1311200	2500	3	\N	\N	t	187	\N	\N
305	8	1000	3	\N	\N	t	269	\N	\N
313	13-02-270	3000	3	\N	\N	t	273	\N	\N
308	18A	1000	0	\N	\N	t	199	\N	\N
432	40	600	51	3	5	t	356	\N	\N
368	006	1600	14	8	11	t	310	\N	\N
415	004	600	10	1	5	t	342	\N	\N
389	001	1300	0	\N	\N	t	323	\N	\N
320	1308300	3000	0	8	6	f	181	\N	\N
420	2009	600	8	1	5	t	347	\N	\N
452	02	600	11	1	3	t	370	\N	\N
328	G/1404	1500	0	\N	\N	t	281	\N	\N
364	028	1800	7	8	14	t	308	\N	\N
355	002	1600	10	8	7	t	302	\N	\N
302	002	600	0	\N	\N	t	266	\N	\N
373	005	1200	0	\N	\N	t	314	\N	\N
347	029	1200	0	\N	\N	t	296	\N	\N
346	034	1600	0	8	12	t	296	\N	\N
315	A3/1306	3000	3	\N	\N	t	274	\N	\N
376	001	1400	28	7	5	t	316	\N	\N
319	1310010	1500	0	\N	\N	t	276	\N	\N
370	013	1600	9	8	11	t	312	\N	\N
332	0324	1300	11	\N	\N	t	285	\N	\N
397	0504-9	600	22	3	9	t	329	\N	\N
375	001	1400	7	8	15	t	315	\N	\N
399	2075	600	12	3	4	t	331	\N	\N
374	007	1000	0	\N	\N	t	314	\N	\N
362	006	1600	0	8	14	t	306	\N	\N
371	006	1400	21	7	17	t	313	\N	\N
372	012	1400	0	8	12	t	314	\N	\N
304	002	1200	0	\N	\N	t	268	\N	\N
366	034	1200	1	\N	\N	t	309	\N	\N
365	036	1400	2	\N	\N	t	309	\N	\N
453	03	600	24	1	3	t	371	\N	\N
454	2170	600	28	1	5	t	372	\N	\N
455	065	700	6	1	4	f	373	\N	\N
456	064	700	8	1	4	t	373	\N	\N
458	33	600	11	2	6	t	375	\N	\N
460	6	300	82	1	5	t	377	\N	\N
1	4A	1400	18	4	1	t	1	\N	\N
311	1307040	3000	4	8	6	f	188	\N	\N
47	18A	1600	8	4	15	f	46	\N	\N
104	132531	1300	23	5	12	t	99	\N	\N
118	001	1400	25	6	5	t	112	\N	\N
233	D/606	1200	10	9	11	t	206	\N	\N
390	003	1000	2	\N	\N	t	324	\N	\N
294	6A	1000	0	\N	\N	t	199	\N	\N
331	34	1300	1	5	16	t	284	\N	\N
333	B	3000	4	8	2	t	286	\N	\N
475	1309030	1500	1	\N	\N	t	389	\N	\N
476	1408110	2500	3	10	\N	t	390	\N	\N
487	A/1609	2400	8	8	19	t	398	\N	\N
32	0010	1000	19	4	11	t	31	\N	\N
272	8-12-09	1200	2	1	2	t	244	\N	\N
312	13-03-020	2000	0	\N	\N	t	188	\N	\N
323	13-03-040	1500	0	\N	\N	t	188	\N	\N
484	25A	1600	23	8	19	t	395	\N	\N
490	12A	1600	32	\N	\N	t	401	\N	\N
50	10106A1	1400	5	4	16	t	49	\N	\N
494		250	178	\N	\N	t	402	\N	\N
145	140320	2000	52	7	4	t	134	\N	\N
466	250	900	18	10	12	t	383	\N	\N
457	137	700	20	1	5	t	374	\N	\N
483	251	900	9	\N	\N	f	383	\N	\N
40	004	1000	0	\N	\N	t	39	\N	\N
459	47	600	26	2	6	t	376	\N	\N
181	B/1305	2000	4	8	3	t	167	\N	\N
303	021	800	0	\N	\N	t	267	\N	\N
477	1308300	3000	1	8	6	f	182	\N	\N
134	003	1000	23	6	13	t	124	\N	\N
81	0002	1300	8	5	13	t	79	\N	\N
88	0150	1200	3	5	16	t	85	1000	\N
87	0154	1200	0	5	13	f	85	\N	\N
159	140321	2000	3	7	12	t	148	\N	\N
461		500	14	\N	\N	f	378	\N	\N
160	140325	1300	0	7	12	t	149	\N	\N
35	4A	1000	0	\N	\N	t	34	\N	\N
86	0006	1100	10	5	10	t	84	\N	\N
465	250	900	27	10	12	t	382	\N	\N
485	0035	1200	18	7	11	t	396	\N	\N
481	B1/1611	2400	16	8	16	t	393	\N	\N
186	24.Jan.2014	2000	5	7	6	t	172	\N	\N
30	363	1400	1	4	10	t	29	\N	\N
43	509	1400	7	4	14	t	42	\N	\N
464	13	1600	26	10	10	t	381	\N	\N
80	0120	1300	7	5	10	t	78	\N	\N
82	0002	1500	4	5	10	t	80	\N	\N
352	002	1600	0	8	15	t	299	\N	\N
482	A/1609	2400	8	8	12	t	394	\N	\N
480	C/1703	2400	16	8	16	t	392	\N	\N
462	250	800	20	10	4	t	379	\N	\N
58	138164	1300	22	5	3	t	57	\N	\N
486	0034	1200	15	7	11	t	397	\N	\N
489	D/1703	2400	6	8	19	t	400	\N	\N
488	D/1705	2400	6	8	19	t	399	\N	\N
85	0296	1200	10	5	13	t	83	\N	\N
471	0161	1300	8	5	10	f	78	\N	\N
473	139980	1200	1	\N	\N	t	387	\N	\N
187	3	1200	1	7	11	t	173	\N	\N
353	005	1200	1	\N	\N	t	300	\N	\N
474	153025	1400	0	\N	\N	t	388	\N	\N
491	0169	1200	12	\N	\N	f	85	1000	\N
367	035	1400	2	\N	\N	t	309	\N	\N
470	046	1400	9	8	12	f	297	\N	\N
38	4A	1400	15	4	12	t	37	\N	\N
309	029	800	0	\N	\N	t	267	\N	\N
497	029	1100	2	\N	\N	t	403	\N	\N
492	0168	1400	4	\N	\N	f	76	\N	\N
493	0169	1400	4	\N	\N	f	76	\N	\N
369	020	1600	31	8	10	t	311	\N	\N
496	002	1000	1	\N	\N	f	404	\N	\N
472	0306	1200	10	\N	\N	f	83	\N	\N
205	1310010	3000	0	8	9	t	188	\N	\N
206	1407040	3000	25	8	20	t	189	\N	\N
467	250	1600	11	10	8	t	384	\N	\N
468	250	1600	17	10	8	t	385	\N	\N
188	3	1600	40	8	18	t	174	\N	\N
478	23A	1300	0	\N	\N	t	391	\N	\N
479	23C	1300	0	\N	\N	t	391	\N	\N
469	8A	1400	19	6	15	t	386	\N	\N
498		800	1	\N	\N	t	22	\N	\N
495	004	1700	0	\N	\N	f	47	\N	\N
499	17c	1300	0	\N	\N	f	391	\N	\N
463	94	1600	26	10	6	t	380	\N	\N
\.


--
-- Data for Name: main_vendorcode; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY main_vendorcode (id, vendor_code, width, length, discontinued, pack, rapport, rapport_type, marking, basis_material, covering_material, moisture_resistance, resistance_to_light, gluing, removal, brand_id) FROM stdin;
1	8684-42	1.06000000000000005	10	f	\N	26,5	2		2	2	М-3	5		1	28
2	8543-46	1.06000000000000005	10.0500000000000007	f	\N	0	\N		2	2	М-3	5		1	28
3	7157-21	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
4	0714-28	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
5	0715-13	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-2	5	ОК	1	15
6	0716-13	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
7	7110-17	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
8	7110-23	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
9	7110-28	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
10	7110-13	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
11	0713-28	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	15
12	8543-22	1.06000000000000005	10.0500000000000007	f	\N	0	\N		2	2	М-2	5		1	28
13	8743-68	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-2	5		1	28
14	8944-41	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5		1	28
15	788074	1.06000000000000005	10.0500000000000007	f	\N		1		2	2	М-2	5	ОК	1	27
16	988052	1.06000000000000005	10.0500000000000007	f	\N	0	2		2	2	М-2	4	ОК	1	\N
17	0713-38	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	15
18	0714-62	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
19	0714-55	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
20	0716-77	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
21	0713-86	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	15
22	0714-38	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
23	0714-25	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
24	0716-24	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
25	7157-55	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
26	0714-22	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
27	0714-21	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
28	988053	1.06000000000000005	10.0500000000000007	f	\N	0	2		2	2	М-2	4	ОК	1	\N
29	988047	1.06000000000000005	10.0500000000000007	f	\N	0	2		2	2	М-2	4	ОК	1	\N
30	0713-22	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	15
31	45a-064-05	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	3
32	788071	1.06000000000000005	10.0500000000000007	f	\N		1		2	2	М-2	5	ОК	1	27
33	7053-27	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
34	8543-77	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-3	5		1	28
35	VXB-102-03-6	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-3	5	ОК	1	30
36	988042	1.06000000000000005	10.0500000000000007	f	\N	0	2		2	2	М-2	4	ОК	1	\N
37	788084	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	27
38	0716-55	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
39	0716-14	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
40	788088	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	27
41	7157-22	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
42	988057	1.06000000000000005	10.0500000000000007	f	\N	0	2		2	2	М-2	4	ОК	1	\N
43	788081	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	27
44	788078	1.06000000000000005	10.0500000000000007	f	\N		1		2	2	М-2	5	ОК	1	27
45	8944-10	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5		1	28
46	8914-19	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5		1	28
47	3086-4	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	1
48	981-43	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-1	5	ОК	1	29
49	981-42	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-1	5	ОК	1	29
50	7158-22	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
51	BXA-030-09-9	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-2	5	ОК	1	30
52	EX 8/785/09-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
53	EX 8/795/14-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
54	701706	1.06000000000000005	10.0500000000000007	f	\N	0	2		2	2	М-2	5	ОК	1	23
55	80160	1.06000000000000005	10.0500000000000007	f	\N	32	2	СТР	2	2	М-2	5	ОК	1	4
56	BXA-030-15-0	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-2	5	ОК	1	30
57	EX 8/859/08-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
58	978139	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	30
59	978141	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	30
60	EX 8/879/07-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
61	2348-3	1.06000000000000005	10.0500000000000007	f	\N	0,64	2		2	2	М-2	5	ОК	1	1
62	2342-2	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	1
63	EX 8/785/17-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
64	EX 8/795/13-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
65	EX 8/795/02-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
66	EX 8/859/20-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
67	EX 8/851/02-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
68	978149	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	30
69	4140-15	1.06000000000000005	10	f	\N	32	2		2	2	М-2	5	ОК	1	18
70	8874-12	1.06000000000000005	10.0500000000000007	f	\N	53	2		2	2	М-2	5		1	28
71	4139-15	1.06000000000000005	10	f	\N	32	2		2	2	М-2	5	ОК	1	18
72	EX 8/786/11-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
73	EX 8/851/13-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
74	EX 8/851/14-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
75	80161	1.06000000000000005	10.0500000000000007	f	\N	54	2	СТР	2	2	М-2	5	ОК	1	4
76	07020	1.06000000000000005	25.0500000000000007	f	\N	0	1	СТР	2	2	М-2	5	ОК	1	2
77	07025	1.06000000000000005	25.0500000000000007	f	\N	64	3	СТР	2	2	М-2	5	ОК	1	3
78	07050	1.06000000000000005	25.0500000000000007	f	\N	0	1	СТР	2	2	М-2	5	ОК	1	2
79	03085	1.06000000000000005	25.0500000000000007	f	\N	0	1	СТР	2	\N	\N	5	ОК	1	2
80	04110	1.06000000000000005	25.0500000000000007	f	\N	0	1	СТР	2	\N	\N	5	ОК	1	2
81	2348-2	1.06000000000000005	10.0500000000000007	f	\N	0,64	2		2	2	М-2	5	ОК	1	1
82	4141-15	1.06000000000000005	10	f	\N	0	1		2	2	М-2	5	ОК	1	18
83	07017	1.06000000000000005	25.0500000000000007	f	\N	0	1	СТР	2	2	М-2	5	ОК	1	2
84	02065	1.06000000000000005	25.0500000000000007	f	\N	0	1	СТР	2	\N	\N	5	ОК	1	3
85	07022	1.06000000000000005	25.0500000000000007	f	\N	0	1	СТР	2	2	М-2	5	ОК	1	2
86	382092	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	17
87	9193-59	1.06000000000000005	10.0500000000000007	f	\N	53	2		2	2	М-2	5		1	28
88	7057-22	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
89	8874-43	1.06000000000000005	10.0500000000000007	f	\N	53	2		2	2	М-2	5		1	28
90	7158-21	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
91	80018	1.06000000000000005	10.0500000000000007	f	\N	53	2		\N	2	М-3	6	ОК	1	11
92	BXA-030-10-5	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-2	5	ОК	1	30
93	BXA-015-06-3	1.06000000000000005	10.0500000000000007	f	\N	21,33	2		2	2	М-2	5	ОК	1	30
94	BXA-015-21-2	1.06000000000000005	10.0500000000000007	f	\N	21,33	2		2	2	М-2	5	ОК	1	30
95	3063-2	1.06000000000000005	10.0500000000000007	f	\N		\N		2	2	М-2	5	ОК	1	1
96	981-45	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-1	5	ОК	1	29
98	0715-24	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-2	5	ОК	1	15
99	EX 8/786/09-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
100	EX 8/308/68-N106	1.06000000000000005	10	f	\N	32	2		2	2	М-2	5	ОК	1	30
101	EX 8/308/70-N106	1.06000000000000005	10	f	\N	32	2		2	2	М-2	5	ОК	1	30
102	EX 8/308/72-N106	1.06000000000000005	10	f	\N	32	2		2	2	М-2	5	ОК	1	30
103	628-91	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	\N	М-2	5	ОК	1	14
104	7327-24	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
105	7328-55	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
106	7327-55	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
107	7328-28	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
108	70028-28	1.06000000000000005	10.0500000000000007	f	\N	0	4		2	2	М-2	5	ОК	1	24
109	7048-25	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
110	70027-28	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	24
111	0731-88	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-2	5	ОК	1	15
112	7328-24	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
113	7188-88	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
114	7153-22	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
115	7170-55	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
116	7181-25	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
117	7075-77	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
118	7346-28	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	26
119	925-33	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-3	5	ОК	1	29
120	7182-28	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
121	7075-55	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
122	7074-43	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
123	7183-23	1.06000000000000005	10.0500000000000007	f	\N	16	2		2	2	М-2	5	ОК	1	25
124	7183-28	1.06000000000000005	10.0500000000000007	f	\N	16	2		2	2	М-2	5	ОК	1	25
125	7075-43	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
126	7183-25	1.06000000000000005	10.0500000000000007	f	\N	16	2		2	2	М-2	5	ОК	1	25
127	7074-28	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
128	3078-2	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	1
129	3086-2	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	1
130	43126-2	1.06000000000000005	10	f	\N	60	2		\N	\N	М-2	5	ОК	2	21
131	43126-3	1.06000000000000005	10	f	\N	60	2		\N	\N	М-2	5	ОК	2	21
132	5649-37	1.06000000000000005	10	f	\N	13	2		2	2	М-3	5	ОК	1	18
133	3059-3	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	1
134	N2547-5	1.06000000000000005	10	f	\N	52	\N		2	2	М-2	5	ОК	1	32
135	N2545-5	1.06000000000000005	10	f	\N	0	1		2	2	М-2	5	ОК	1	32
136	N2547-1	1.06000000000000005	10	f	\N	52	\N		2	2	М-2	5	ОК	1	32
137	80020	1.06000000000000005	10.0500000000000007	f	\N	53	2		\N	2	М-3	6	ОК	1	11
138	N2547-7	1.06000000000000005	10	f	\N	52	\N		2	2	М-2	5	ОК	1	32
139	N2045-6	1.06000000000000005	10	f	\N	14,5	2		2	2	М-2	5	ОК	1	32
140	N2547-2	1.06000000000000005	10	f	\N	52	\N		2	2	М-2	5	ОК	1	32
141	N2547-3	1.06000000000000005	10	f	\N	52	\N		2	2	М-2	5	ОК	1	32
142	5645-13	1.06000000000000005	10	f	\N	0	1		2	2	М-3	5	ОК	1	18
143	5645-03	1.06000000000000005	10	f	\N	0	1		2	2	М-3	5	ОК	1	18
144	N2546-6	1.06000000000000005	10	f	\N	5	\N		2	2	М-2	5	ОК	1	32
145	46032-03	1.06000000000000005	10.0500000000000007	f	\N	64/32	3		2	2	М-2	5	ОК	1	3
146	N2529-3	1.06000000000000005	10	f	\N	32	\N		2	2	М-2	5	ОК	1	32
147	N2546-5	1.06000000000000005	10	f	\N	5	\N		2	2	М-2	5	ОК	1	32
148	N2545-3	1.06000000000000005	10	f	\N	0	1		2	2	М-2	5	ОК	1	32
149	N2546-1	1.06000000000000005	10	f	\N	5	\N		2	2	М-2	5	ОК	1	32
150	43127-2	1.06000000000000005	10	f	\N	52	2		\N	\N	М-2	5	ОК	2	21
151	N2547-6	1.06000000000000005	10	f	\N	52	\N		2	2	М-2	5	ОК	1	32
152	43119-4	1.06000000000000005	10	f	\N	60	2		\N	\N	М-2	5	ОК	2	21
153	4033-8	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	1
154	3086-6	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	1
155	46058-03	1.06000000000000005	10.0500000000000007	f	\N	64/32	3		2	2	М-3	5	ОК	1	3
156	3075-2	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	1
157	46058-10	1.06000000000000005	10.0500000000000007	f	\N	64/32	3		2	2	М-3	5	ОК	1	3
158	3078-3	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	1
159	42019	1.06000000000000005	10	f	\N	32	3		2	2	М-3	6	ОК	1	19
160	3086-8	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	1
161	3098-3	1.06000000000000005	10.0500000000000007	f	\N	32	3		2	2	М-2	5	ОК	1	1
162	46059-03	1.06000000000000005	10.0500000000000007	f	\N	64/32	3		2	2	М-3	5	ОК	1	3
163	5643-16	1.06000000000000005	10	f	\N	64	2		2	2	М-3	5	ОК	1	18
164	46059-01	1.06000000000000005	10.0500000000000007	f	\N	64/32	3		2	2	М-3	5	ОК	1	3
165	4033-2	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	1
166	5648-37	1.06000000000000005	10	f	\N	0	1		2	2	М-3	5	ОК	1	18
167	42084	1.06000000000000005	10	f	\N	32	3		2	2	М-3	6	ОК	1	19
168	288117	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	16
169	613520	1.06000000000000005	10	f	\N	8	2		2	2	М-2	5	ОК	1	22
170	288107	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	16
171	613506	1.06000000000000005	10	f	\N	8	2		2	2	М-2	5	ОК	1	22
172	43120-4	1.06000000000000005	10	f	\N	60	2		\N	\N	М-2	5	ОК	2	21
173	613537	1.06000000000000005	10	f	\N	8	2		2	2	М-2	5	ОК	1	22
174	613544	1.06000000000000005	10	f	\N	8	2		2	2	М-2	5	ОК	1	22
175	18016	1	10.0500000000000007	f	\N	64	2		2	2	М-2	5		1	5
176	18005	1	10.0500000000000007	f	\N	64	2		2	2	М-2	5		1	5
177	42264	1.06000000000000005	10	f	\N	64	2		2	2	М-3	6	ОК	1	20
178	M 7333	1.06000000000000005	10	f	\N	52	2		2	2	М-3	5	ОК	1	7
180	26850	1.04000000000000004	10.0500000000000007	f	\N	90	2		2	2	М-2	5		1	5
181	50100	1	10.0500000000000007	f	\N	53	2		2	2	М-2	5		1	5
182	50101	1	10.0500000000000007	f	\N	53	2		2	2	М-2	5		1	5
184	50120	1	10.0500000000000007	f	\N	70	2		2	2	М-2	5		1	5
185	70966	1.06000000000000005	10	f	\N	64	2		2	2	М-3	6	ОК	1	20
186	M 7339	1.06000000000000005	10	f	\N	52	2		2	2	М-3	5	ОК	1	7
187	50122	1	10.0500000000000007	f	\N	70	2		2	2	М-2	5		1	5
188	26854	1.04000000000000004	10.0500000000000007	f	\N	90	2		2	2	М-2	5		1	5
189	28422	1.04000000000000004	10.0500000000000007	f	\N	70	2		2	2	М-2	5		1	5
190	26853	1.04000000000000004	10.0500000000000007	f	\N	90	2		2	2	М-2	5		1	5
192	42241	1.06000000000000005	10	f	\N	64	2		2	2	М-3	6	ОК	1	20
193	70977	1.06000000000000005	10	f	\N	0	1		2	2	М-3	6	ОК	1	20
194	50121	1	10.0500000000000007	f	\N	70	2		2	2	М-2	5		1	5
195	7182-23	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
196	7318-28	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
197	9193-11	1.06000000000000005	10.0500000000000007	f	\N	53	2		2	2	М-2	5		1	28
198	9193-42	1.06000000000000005	10.0500000000000007	f	\N	53	2		2	2	М-2	5		1	28
199	8914-26	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5		1	28
200	8944-34	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5		1	28
201	8684-59	1.06000000000000005	10	f	\N	26,5	2		2	2	М-3	5		1	28
202	50105	1	10	f	\N	53	2		2	2	М-2	5		1	5
203	PV 6/248/11-N106	1.06000000000000005	10	f	\N	0	1		2	2	М-2	5	ОК	2	31
204	613513	1.06000000000000005	10	f	\N	8	2		2	2	М-2	5	ОК	1	22
205	53147	0.699999999999999956	10.0500000000000007	f	\N	53	2		\N	2	М-3	6	БК	2	11
206	53167	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	6	БК	2	11
207	53173	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	6	БК	2	11
208	53168	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	6	БК	2	11
209	56430	0.699999999999999956	10.0500000000000007	f	\N	32	3		\N	2	М-3	6	БК	2	11
210	50708	0.699999999999999956	10.0500000000000007	f	\N	39	3		\N	2	М-3	6	БК	2	11
211	4021	0.699999999999999956	10	f	\N	0	1		\N	2	М-3	5		2	7
212	4324	0.699999999999999956	10.5	f	\N	64	3		1	2	М-3	5	БК	2	8
213	51066	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	6	БК	2	11
214	51070	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	6	БК	2	11
215	4322	0.699999999999999956	10.0500000000000007	f	\N	64	3		1	2	М-3	5	БК	2	8
216	M 7032	0.699999999999999956	10	f	\N	53	2		2	2	М-3	5	ОК	1	7
217	4344	0.699999999999999956	10.0500000000000007	f	\N	0	1		1	2	М-3	5	БК	2	8
218	4320	0.699999999999999956	10.0500000000000007	f	\N	64	3		1	2	М-3	5	БК	2	8
219	M 3942	0.699999999999999956	10	f	\N	0	1		\N	2	М-3	5		2	7
220	7006	0.699999999999999956	10	f	\N		\N		\N	2	М-3	5		2	10
221	2912	0.699999999999999956	10.0500000000000007	f	\N	70	2		\N	2	М-2	5	БК	2	6
222	2911	0.699999999999999956	10.0500000000000007	f	\N	70	2		\N	2	М-2	5	БК	2	6
223	A983376	0.699999999999999956	10	f	\N		\N		\N	2	\N	5		2	12
224	6811	0.699999999999999956	10	f	\N	53	2		\N	2	М-3	5		2	9
225	11118	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	\N	М-2	5		2	5
226	M 7033	0.699999999999999956	10	f	\N		\N		2	2	М-3	5	ОК	1	7
227	7027	0.699999999999999956	10	f	\N	60	3		\N	2	М-3	5		2	10
229	6801	0.699999999999999956	10	f	\N	53	2		\N	2	М-3	5		2	9
230	50925	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	6	БК	2	11
231	A983382	0.699999999999999956	10	f	\N		\N		\N	2	\N	5		2	12
232	6863	0.699999999999999956	10	f	\N	53	3		\N	2	М-3	5		2	9
233	53153	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	6	БК	2	11
234	4342	0.699999999999999956	10.0500000000000007	f	\N	0	1		1	2	М-3	5	БК	2	8
235	4340	0.699999999999999956	10.0500000000000007	f	\N	0	1		1	2	М-3	5	БК	2	8
236	A983383	0.699999999999999956	10	f	\N		\N		\N	2	\N	5		2	12
237	51061	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	6	БК	2	11
238	51029	0.699999999999999956	10.0500000000000007	f	\N	32	3		\N	2	М-3	6	БК	2	11
239	BA 140005	0.699999999999999956	10.0500000000000007	f	\N	53	2		\N	2	М-3	5		2	13
240	BA 140037	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	5		2	13
241	51031	0.699999999999999956	10.0500000000000007	f	\N	32	3		\N	2	М-3	6	БК	2	11
242	BA 140033	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	5		2	13
191	26804	1.04000000000000004	10.0500000000000007	f	\N	45	2		2	2	М-2	5		1	5
243	BA 140006	0.699999999999999956	10.0500000000000007	f	\N	53	2		\N	2	М-3	5		2	13
244	BA 140057	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	5		2	13
245	BA 140023	0.699999999999999956	10.0500000000000007	f	\N	26.5	3		\N	2	М-3	5		2	13
246	BA 140036	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	5		2	13
247	BA 140003	0.699999999999999956	10.0500000000000007	f	\N	53	2		\N	2	М-3	5		2	13
248	51065	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	6	БК	2	11
249	BA 140022	0.699999999999999956	10.0500000000000007	f	\N	26.5	3		\N	2	М-3	5		2	13
250	BA 140007	0.699999999999999956	10.0500000000000007	f	\N	53	2		\N	2	М-3	5		2	13
251	BA 140053	0.699999999999999956	10.0500000000000007	f	\N	0	1		\N	2	М-3	5		2	13
252	288112	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	16
253	43120-3	1.06000000000000005	10	f	\N	60	2		\N	\N	М-2	5	ОК	2	21
254	N2529-6	1.06000000000000005	10	f	\N	32	\N		2	2	М-2	5	ОК	1	32
255	43127-3	1.06000000000000005	10	f	\N	52	2		\N	\N	М-2	5	ОК	2	21
256	43138-2	1.06000000000000005	10	f	\N	52	2		\N	\N	М-2	5	ОК	2	21
257	43119-3	1.06000000000000005	10	f	\N	60	2		\N	\N	М-2	5	ОК	2	21
258	43138-3	1.06000000000000005	10	f	\N	52	2		\N	\N	М-2	5		2	21
259	BXA-015-17-9	1.06000000000000005	10.0500000000000007	f	\N	21,33	2		2	2	М-2	5	ОК	1	30
260	EX 8/879/06-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
261	BXA-030-14-1	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-2	5	ОК	1	30
262	EX 8/859/17-N106	1.06000000000000005	10	f	\N	64	2		2	2	М-2	5	ОК	1	30
263	8743-75	1.06000000000000005	10.0500000000000007	f	\N	32	2		2	2	М-2	5		1	28
264	679427	1.06000000000000005	10	f	\N	0	1		2	2	М-2	5	ОК	1	22
265	46058-05	1.06000000000000005	10.0500000000000007	f	\N	64/32	3		2	2	М-3	5	ОК	1	3
266	3067-6	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	1
267	3016-3	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	1
268	3067-7	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	1
269	827109	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	23
270	EX 8/429/11-N106	1.06000000000000005	10	f	\N	0	1		2	2	М-2	5	ОК	1	31
271	2015-39	1.06000000000000005	10.0500000000000007	f	\N	64/32	3		2	\N	М-2	5		1	28
272	7072-22	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
274	70969	1.06000000000000005	10	f	\N	64	2		2	2	М-3	6	ОК	1	20
275	50102	1	10.0500000000000007	f	\N	53	2		2	2	М-2	5		1	5
276	26855	1.04000000000000004	10.0500000000000007	f	\N	90	2		2	2	М-2	5		1	5
277	50123	1	10.0500000000000007	f	\N	70	2		2	2	М-2	5		1	5
278	50124	1	10.0500000000000007	f	\N	70	2		2	2	М-2	5		1	5
279	50136	1	10.0500000000000007	f	\N	0	1		2	2	М-2	5		1	5
280	42255	1.06000000000000005	10	f	\N	0	1		2	2	М-3	6	ОК	1	20
281	42267	1.06000000000000005	10	f	\N	64	2		2	2	М-3	6	ОК	1	20
282	70984	1.06000000000000005	10	f	\N	0	1		2	2	М-3	6	ОК	1	20
283	71527	0.640000000000000013	10.0500000000000007	f	\N	91	\N		\N	\N	М-2	5	БК	1	4
284	98386	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	БК	1	4
285	07036	1.06000000000000005	25.0500000000000007	f	\N	0	1	СТР	2	2	М-2	5	ОК	1	2
286	M 7332	1.06000000000000005	10	f	\N	53	2		2	2	М-3	5	ОК	1	7
287	Z 2457	0.699999999999999956	10	f	\N	0	1		\N	\N	М-3	5		2	33
288	Z 2431	0.699999999999999956	10	f	\N	0	1		\N	\N	М-3	5		2	33
289	M 3963	0.699999999999999956	10	f	\N	64	2		\N	\N	М-3	5		2	33
290	Z 2460	0.699999999999999956	10	f	\N	0	1		\N	\N	М-3	5		2	33
291	M 3953	0.699999999999999956	10	f	\N	64	2		\N	\N	М-3	5		2	33
292	M 3957	0.699999999999999956	10	f	\N	64	2		\N	\N	М-3	5		2	33
293	14020	0.699999999999999956	10.0500000000000007	f	\N	70	2		\N	\N	М-2	5		2	5
294	9515	0.699999999999999956	10	f	\N	0	1		\N	2	М-3	5		2	9
295	7153-23	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
296	7072-28	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
297	7072-11	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
298	7249-21	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
299	7249-22	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
300	7248-22	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
301	7227-25	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
302	7226-25	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
303	7227-14	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
304	7226-14	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
305	7227-12	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
306	7226-12	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
307	7357-24	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
308	7227-21	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
309	7226-21	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
310	7248-23	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
311	7357-21	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
312	7356-21	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
313	7357-22	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
314	7356-22	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
315	7252-22	1.06000000000000005	10.0500000000000007	f	\N	64/32	3		2	2	М-2	5	ОК	1	25
316	7252-82	1.06000000000000005	10.0500000000000007	f	\N	64/32	3		2	2	М-2	5	ОК	1	25
317	7227-22	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
318	7226-22	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
319	7226-55	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
320	7072-38	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
321	0732-88	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	15
322	7319-28	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
323	7110-22	1.06000000000000005	10.0500000000000007	f	\N	0	1		2	2	М-2	5	ОК	1	25
324	7252-42	1.06000000000000005	10.0500000000000007	f	\N	64/32	3		2	2	М-2	5	ОК	1	25
325	7249-28	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
326	7034-21	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
327	0204	0.530000000000000027	10.0500000000000007	f	\N	0	\N		1	2	М-3	5	БК	2	34
328	0206	0.530000000000000027	10.0500000000000007	f	\N	0	\N		1	2	М-3	5	БК	2	34
329	05195	0.530000000000000027	10.0500000000000007	f	\N	0	\N		1	2	М-3	5	БК	2	35
330	05196	0.530000000000000027	10.0500000000000007	f	\N	0	\N		1	2	М-3	5	БК	2	35
331	0818	0.530000000000000027	10	f	\N	0	\N		1	2	М-2	5	БК	2	36
332	10227	0.530000000000000027	10.0500000000000007	f	\N	0	\N		1	2	М-3	5	БК	1	37
333	10230	0.530000000000000027	10.0500000000000007	f	\N	0	\N		1	2	М-3	5	БК	1	37
334	10600	0.530000000000000027	10.0500000000000007	f	\N	0	\N		1	2	М-3	5	БК	1	37
335	10601	0.530000000000000027	10.0500000000000007	f	\N	53/26	3		1	2	М-3	5	БК	1	38
336	10604	0.530000000000000027	10.0500000000000007	f	\N	0	\N		1	2	М-3	5	БК	1	37
337	10801	0.530000000000000027	10.0500000000000007	f	\N	0	\N		1	2	М-3	5	БК	1	38
338	10804	0.530000000000000027	10.0500000000000007	f	\N	0	3		1	2	М-3	5	БК	1	38
339	10901	0.530000000000000027	10.0500000000000007	f	\N	0	3		1	2	М-3	5	БК	1	38
340	10902	0.530000000000000027	10.0500000000000007	f	\N		3		1	2	М-3	5	БК	1	38
341	10904	0.530000000000000027	10.0500000000000007	f	\N		3		1	2	М-3	5	БК	1	38
342	12206	0.530000000000000027	10.0500000000000007	f	\N	53/0	3		1	2	М-3	5	БК	1	38
343	1344-2	0.530000000000000027	10.0500000000000007	f	\N	32	2		1	2	М-2	5	БК	3	1
344	1344-6	0.530000000000000027	10.0500000000000007	f	\N	32	2		1	2	М-2	5	БК	3	1
345	165725	0.530000000000000027	10	f	\N		\N		1	2	М-2	5	БК	2	36
346	165735	0.530000000000000027	10	f	\N		\N		1	2	М-2	5	БК	2	36
347	165736	0.530000000000000027	10	f	\N		\N		1	2	М-2	5	БК	2	36
348	16933	0.530000000000000027	10	f	\N		\N		1	2	М-2	5	БК	2	36
349	20007	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	1	37
350	30088	0.530000000000000027	10	f	\N		\N		1	2	М-3	5	БК	2	39
351	4805	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	34
352	5402	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	34
353	5405	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	34
354	5504	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	34
355	5505	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	34
356	5517	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	35
357	60600	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	1	37
358	709-33	0.530000000000000027	10.0500000000000007	f	\N	0	1		1	2	М-2	5	БК	2	29
359	767-34	0.530000000000000027	10.0500000000000007	f	\N	64/32	3		1	2	М-2	5	БК	2	29
360	767-38	0.530000000000000027	10.0500000000000007	f	\N	64/32	3		1	2	М-2	5	БК	2	29
361	80003	0.530000000000000027	10.0500000000000007	f	\N		3		1	2	М-3	5	БК	1	38
362	80004	0.530000000000000027	10.0500000000000007	f	\N		3		1	2	М-3	5	БК	1	38
363	80504	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	35
364	80511	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	35
365	92828	0.530000000000000027	10	f	\N		\N		1	2	М-3	5	БК	2	36
366	DA6504	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	35
367	DA6517	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	35
368	1425	0.530000000000000027	10	f	\N	0	1		1	2	М-3	5	БК	2	33
369	166611	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	\N	5	БК	2	12
370	70904	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	34
371	70905	0.530000000000000027	10.0500000000000007	f	\N		\N		1	2	М-3	5	БК	2	34
372	21022	0.530000000000000027	10	f	\N		\N		1	2	М-3	5	БК	2	12
373	9935-5	0.530000000000000027	10.0500000000000007	f	\N	64/32	3		1	2	М-2	5	БК	2	18
374	28030	0.530000000000000027	10	f	\N		\N		1	2	М-3	5	БК	2	39
375	28118	0.520000000000000018	10	f	\N		\N		1	2	М-1	4	БК	3	40
376	29009	0.520000000000000018	10	f	\N		\N		1	2	М-1	4	БК	3	40
377	3581 R	0.530000000000000027	10.0500000000000007	f	\N		\N		1	1	\N	\N		\N	41
378	БРАК	0	0	f	\N		\N		\N	\N	\N	\N		\N	\N
379	20014-02	1.06000000000000005	10.0500000000000007	f	9	64	2		2	2	М-1	5	ОК	1	42
380	10017-06	1.06000000000000005	10.0500000000000007	f	6	64	2		2	2	М-2	5	ОК	1	42
381	10017-03	1.06000000000000005	10.0500000000000007	f	6	64	2		\N	2	М-2	5	БК	1	42
382	20006-02	1.06000000000000005	10.0500000000000007	f	9	32	2		2	2	М-1	5	ОК	1	42
383	20006-04	1.06000000000000005	10.0500000000000007	f	9	32	2		2	2	М-1	5	ОК	1	42
385	10010-06	1.06000000000000005	10.0500000000000007	f	6	32	2		2	2	М-2	5	ОК	1	42
384	10009-06	1.06000000000000005	10.0500000000000007	f	6	64	2		2	2	М-2	5	ОК	1	42
386	70048-42	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	24
387	EX 8/785/20-N106	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	30
388	VXB-101-02-8	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-3	5	ОК	1	30
389	50125	1	10.0500000000000007	f	\N	70	2		2	2	М-2	5		1	5
390	28420	1.04000000000000004	10.0500000000000007	f	\N	70	2		2	2	М-2	5		1	5
391	8527-17	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5		1	28
392	40507	1.06000000000000005	10.0500000000000007	f	\N	32	3		2	2	М-3	6	ОК	1	43
393	40509	1.06000000000000005	10.0500000000000007	f	\N	32	3		2	2	М-3	6	ОК	1	43
394	40519	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-3	6	ОК	1	43
273	26800	1.04000000000000004	10.0500000000000007	f	\N	45	2		2	2	М-2	5		1	5
179	26803	1.04000000000000004	10.0500000000000007	f	\N	45	2		2	2	М-2	5		1	5
395	8950-66	1.06000000000000005	10.0500000000000007	f	6	53	2		2	2	М-3	5	ОК	1	28
396	45096-02	1.06000000000000005	10.0500000000000007	f	6	64	2		2	2	М-2	5	ОК	1	44
397	45096-03	1.06000000000000005	10.0500000000000007	f	6	64	2		2	2	М-2	5	ОК	1	44
398	40517	1.06000000000000005	10.0500000000000007	f	4	64	2		2	2	М-3	6	ОК	1	43
399	40502	1.06000000000000005	10.0500000000000007	f	4	32	3		2	2	М-3	6	ОК	1	43
400	40522	1.06000000000000005	10.0500000000000007	f	4	64	2		2	2	М-3	6	ОК	1	43
401	3122-11	1.06000000000000005	10.0500000000000007	f	6	53	2		2	2	М-3	5	ОК	1	28
402	Бордюр	0	5	f	\N		\N		\N	\N	\N	\N		\N	\N
403	7221-22	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
404	7181-28	1.06000000000000005	10.0500000000000007	f	\N	64	2		2	2	М-2	5	ОК	1	25
\.


--
-- Data for Name: main_vendorcode_combination; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY main_vendorcode_combination (id, from_vendorcode_id, to_vendorcode_id) FROM stdin;
1	1	2
2	2	1
3	2	201
4	201	2
5	3	90
6	90	3
7	4	11
8	11	4
9	5	6
10	6	5
11	15	37
12	37	15
13	16	36
14	36	16
15	17	22
16	22	17
17	24	98
18	98	24
19	26	30
20	30	26
21	29	42
22	42	29
23	32	43
24	43	32
25	40	44
26	44	40
27	41	50
28	50	41
29	53	74
30	74	53
31	58	68
32	68	58
33	64	73
34	73	64
35	65	67
36	67	65
37	69	82
38	69	71
39	82	69
40	71	69
41	71	82
42	82	71
43	104	112
44	112	104
45	105	106
46	106	105
47	108	110
48	110	108
49	114	272
50	272	114
51	116	126
52	126	116
53	120	124
54	124	120
55	122	125
56	125	122
57	123	195
58	195	123
59	129	165
60	165	129
61	130	150
62	150	130
63	131	255
64	255	131
65	132	166
66	166	132
67	134	147
68	147	134
69	136	149
70	149	136
71	138	144
72	144	138
73	141	148
74	148	141
75	152	172
76	172	152
77	153	160
78	160	153
79	155	162
80	162	155
81	159	167
82	167	159
83	168	170
84	170	168
85	175	176
86	176	175
87	178	286
88	286	178
89	185	282
90	282	185
91	192	280
92	280	192
93	193	274
94	274	193
95	212	217
96	217	212
97	214	241
98	241	214
99	215	234
100	234	215
101	216	226
102	226	216
103	218	235
104	235	218
105	237	238
106	238	237
107	240	250
108	250	240
109	242	247
110	247	242
111	243	246
112	246	243
113	245	251
114	251	245
115	253	257
116	257	253
117	299	300
118	300	299
119	301	302
120	302	301
121	303	304
122	304	303
123	305	306
124	306	305
125	308	309
126	309	308
127	317	318
128	318	317
129	384	385
130	385	384
131	388	35
132	35	388
133	394	393
134	393	394
135	273	180
136	180	273
137	179	190
138	190	179
139	191	188
140	188	191
141	398	392
142	392	398
143	400	399
144	399	400
145	403	315
146	315	403
\.


--
-- Data for Name: photowp_photowp; Type: TABLE DATA; Schema: public; Owner: evada_user
--

COPY photowp_photowp (id, category, name, vendor_code, sheet, width, height, count, retail_price, wholesale_price_item, wholesale_price_pack) FROM stdin;
441	5	Феррари	Ф061	3	300	270	0	7000	\N	\N
5	1	Ангелы	35	2	134	98	1	600	350	\N
19	1	Бемби	134	4	196	134	1	700	400	\N
20	1	Весёлая компания	147	4	134	196	1	700	400	\N
21	1	Весёлые феи	33	4	134	196	1	700	400	\N
22	1	Весенний букет	180	4	134	196	1	700	400	\N
23	1	Водный каскад	20	4	134	196	1	700	400	\N
24	1	Водопад	118	4	134	196	1	700	400	\N
25	1	Восточный пейзаж		4	134	196	1	700	400	\N
26	1	Голубая орхидея	210	4	196	134	1	700	400	\N
27	1	Горный поток	14	4	134	196	1	700	400	\N
28	1	Горный ручей	166	4	134	196	1	700	400	\N
29	1	Дальние дали	143	4	134	196	1	700	400	\N
30	1	Живой источник	119	4	134	196	1	700	400	\N
108	1	Праздничный букет	253	6	196	201	1	800	450	\N
69	1	Амазонка	96	6	196	201	1	800	450	\N
70	1	Букет	183	6	196	201	1	800	450	\N
71	1	Весеннее настроение	135	6	196	201	1	800	450	\N
72	1	Весна в горах	220	6	196	201	1	800	450	\N
73	1	Волшебство природы	19	6	201	196	1	800	450	\N
74	1	Восторг	45	6	196	201	1	800	450	\N
75	1	Голубая лагуна	98	6	196	201	1	800	450	\N
76	1	Голубые озёра	155	6	196	201	1	800	450	\N
77	1	Горное озеро	99	6	196	201	1	800	450	\N
78	1	Горный Алтай	100	6	196	201	1	800	450	\N
79	1	Горный источник	101	6	196	201	1	800	450	\N
80	1	Гроздья рябины	242	6	201	196	1	800	450	\N
81	1	День рождения Чебурашки	29	6	196	201	1	800	450	\N
82	1	Джип	55	6	196	201	1	800	450	\N
83	1	Джунгли	26	6	196	201	1	800	450	\N
84	1	Дивный сад	142	6	196	201	1	800	450	\N
85	1	Дыхание весны	127	6	196	201	2	800	450	\N
86	1	Забавные животные	28	6	196	201	1	800	450	\N
87	1	Идиллия	68	6	196	201	1	800	450	\N
88	1	Кавказ	102	6	196	201	1	800	450	\N
89	1	Камин "Классик"	42	6	201	196	1	800	450	\N
90	1	Камин "Охотника"	80	6	196	201	2	800	450	\N
91	1	Камин "Очарование"	43	6	196	201	1	800	450	\N
92	1	Ландыши	4	6	196	201	1	800	450	\N
93	1	Лебединая верность	104	6	196	201	1	800	450	\N
94	1	Лесная речка	150	6	196	201	1	800	450	\N
1	1	Веранда	264	12	294	260	1	1100	600	\N
3	1	Небоскрёбы	263	12	294	260	1	1100	600	\N
4	1	Солнечная улочка	256	12	294	260	1	1100	600	\N
418	2	Цветочная улочка	А-091	12	294	260	1	1700	1150	\N
423	2	Подсолнухи	А-112	12	294	260	1	1700	1150	\N
438	2	Тигр	А-094	12	294	260	1	1700	1150	\N
237	2	Утренний город	А-037	16	392	260	1	1800	1250	\N
433	3	Космос		4	194	136	1	900	500	\N
317	3	Стрит-рейсинг		4	194	136	1	900	500	\N
318	3	Тест-драйв		4	194	136	1	900	500	\N
350	3	Водопад "Экзотика"		8	194	272	1	1100	650	\N
351	3	Голубая лагуна		8	272	194	1	1100	650	\N
352	3	Затерянный мир		8	272	194	1	1100	650	\N
354	3	Камин "Элегант"		8	194	272	1	1100	650	\N
355	3	Колибри		8	272	194	1	1100	650	\N
356	3	Летние грёзы		8	272	194	1	1100	650	\N
357	3	Летняя прохлада		8	272	194	1	1100	650	\N
358	3	Лодочка		8	272	194	1	1100	650	\N
359	3	Лондон		8	272	194	1	1100	650	\N
360	3	Мексика		8	194	272	1	1100	650	\N
361	3	Мостик в осень		8	272	194	1	1100	650	\N
362	3	Мультяшки		8	272	194	1	1100	650	\N
363	3	Одуванчики		8	388	136	1	1100	650	\N
428	4	Золотая пора		6	194	204	1	1100	600	\N
434	3	На закате		4	194	136	1	900	500	\N
429	4	Розы		6	194	204	1	1100	600	\N
194	2	Весёлая компания	А-134	12	294	260	0	1700	1150	\N
424	4	Терраса		12	291	272	1	1400	850	\N
107	1	Порше	173	6	196	201	1	800	450	\N
109	1	Радужные водопады	73	6	196	201	1	800	450	\N
137	1	Багамы	62	8	200	260	1	900	500	\N
138	1	Весеннее утро	272	8	196	260	1	900	500	\N
139	1	Винни-Пух	30	8	200	260	1	900	500	\N
140	1	Лесная сказка	95	8	200	260	1	900	500	\N
141	1	Мегаполис	251	8	196	260	1	900	500	\N
142	1	Микки	203	8	196	260	1	900	500	\N
143	1	Морская панорама	231	8	392	134	1	900	500	\N
144	1	Незабудки	234	8	196	260	1	900	500	\N
145	1	Розовые тюльпаны	233	8	196	260	1	900	500	\N
146	1	Человек-паук	31	8	200	260	1	900	500	\N
147	1	Яблоневый цвет	239	8	196	260	1	900	500	\N
148	1	Альпийский луг	79	9	294	201	1	1000	550	\N
149	1	Беловежская пуща	84	9	294	201	1	1000	550	\N
150	1	Белые тюльпаны	232	9	294	201	1	1000	550	\N
151	1	Берёзовая дорожка	222	9	294	201	1	1000	550	\N
442	5	Цветочная улочка	Ф026	3	300	270	0	7000	\N	\N
152	1	Букет "Нежность"	274	9	294	201	1	1000	550	\N
153	1	Весенняя пора	273	9	294	201	1	1000	550	\N
154	1	Весна	85	9	294	201	1	1000	550	\N
155	1	Вишнёвый цвет	241	9	294	201	1	1000	550	\N
156	1	Горная долина	214	9	294	201	1	1000	550	\N
157	1	Горные водопады	198	9	294	201	1	1000	550	\N
158	1	Горный пейзаж	226	9	294	201	1	1000	550	\N
160	1	Зеркальное озеро	86	9	294	201	1	1000	550	\N
161	1	Золотая осень	200	9	294	201	1	1000	550	\N
439	2	Зеркальная орхидея	А-002	6	294	134	1	1400	1000	\N
414	2	Аллея в саду	А-118	12	294	260	1	1700	1150	\N
419	2	Жемчужины Парижа	А-120	12	294	260	1	1700	1150	\N
187	2	Белые розы	А-083	12	294	260	1	1700	1150	\N
188	2	Белые тюльпаны	А-001	12	294	260	1	1700	1150	\N
190	2	Бруклинский мост	А-066	12	294	260	1	1700	1150	\N
191	2	Букет	А-111	12	294	260	1	1700	1150	\N
192	2	Венеция	А-008	12	294	260	1	1700	1150	\N
193	2	Вереск	А-043	12	294	260	1	1700	1150	\N
195	2	Весеннее настроение	А-004	12	294	260	1	1700	1150	\N
196	2	Весенняя акварель	А-096	12	294	260	1	1700	1150	\N
197	2	Весна	А-017	12	294	260	1	1700	1150	\N
199	2	Голубая орхидея	А-061	12	294	260	1	1700	1150	\N
200	2	Детский городок	А-128	12	294	260	1	1700	1150	\N
201	2	Дыхание весны	А-064	12	294	260	1	1700	1150	\N
202	2	Зеркальный город	А-011	12	294	260	1	1700	1150	\N
203	2	Каскад	А-080	12	294	260	1	1700	1150	\N
204	2	Красные маки	А-010	12	294	260	1	1700	1150	\N
205	2	Море	А-013	12	294	260	1	1700	1150	\N
207	2	Нежная роза	А-014	12	294	260	1	1700	1150	\N
208	2	Нежный букет	А-076	12	294	260	1	1700	1150	\N
209	2	Париж	А-106	12	294	260	1	1700	1150	\N
210	2	Подснежники	А-060	12	294	260	1	1700	1150	\N
206	2	Набережная	А-034	12	294	260	1	1700	1150	\N
267	3	Библиотека		3	97	204	1	800	450	\N
268	3	Водопад		3	97	204	1	800	450	\N
249	2	Весёлый слон	А-022	8	268	196	0	1500	1100	\N
269	3	Крит		3	97	204	1	800	450	\N
240	2	Вишенка	А-074	4	134	196	1	1300	950	\N
242	2	Коралловый риф	А-020	6	294	134	1	1400	1000	\N
247	2	Болиды	А-101	8	196	260	1	1500	1100	\N
248	2	Весёлые пони	А-052	8	268	196	1	1500	1100	\N
250	2	Жемчужина	А-057	8	268	196	1	1500	1100	\N
261	2	Вдохновение	А-108	9	294	201	1	1550	1100	\N
420	2	Принцессы	А-136	12	294	260	1	1700	1150	\N
217	2	Фреска "Терраса"	А-097	12	294	260	0	1700	1150	\N
211	2	Поэзия	А-105	12	294	260	1	1700	1150	\N
213	2	Розовая симфония	А-033	12	294	260	1	1700	1150	\N
214	2	Ромашки	А-045	12	294	260	1	1700	1150	\N
215	2	Тачки	А-030	12	294	260	1	1700	1150	\N
216	2	Фреска "Греция"	А-119	12	294	260	1	1700	1150	\N
218	2	Цветение	А-015	12	294	260	1	1700	1150	\N
219	2	Чикаго	А-065	12	294	260	1	1700	1150	\N
415	2	Березовая аллея	А-088	16	392	260	1	1800	1250	\N
220	2	Бамбуковая аллея	А-070	16	392	260	1	1800	1250	\N
221	2	Ботанический сад	А-115	16	392	260	1	1800	1250	\N
222	2	Веранда	А-123	16	392	260	1	1800	1250	\N
223	2	Водопад	А-081	16	392	260	1	1800	1250	\N
224	2	Горное озеро	А-063	16	392	260	1	1800	1250	\N
225	2	Дорожка в саду	А-116	16	392	260	1	1800	1250	\N
226	2	Закат	А-087	16	392	260	1	1800	1250	\N
227	2	Лондон	А-071	16	392	260	1	1800	1250	\N
228	2	Морской берег	А-042	16	392	260	1	1800	1250	\N
229	2	Мосты	А-046	16	392	260	1	1800	1250	\N
234	2	Рим	А-067	16	392	260	1	1800	1250	\N
270	3	Парк у моря		3	97	204	1	800	450	\N
271	3	После дождя		3	97	204	1	800	450	\N
272	3	Радуга-дуга		3	97	204	1	800	450	\N
273	3	Рассвет у моря		3	97	204	1	800	450	\N
274	3	Сосны		3	97	204	0	800	450	\N
435	3	Прогулка вдвоем		4	194	136	1	900	500	\N
275	3	Алтайское лето		4	136	194	1	900	500	\N
276	3	Байкал		4	194	136	1	900	500	\N
277	3	Блики рассвета		4	97	272	1	900	500	\N
278	3	Блонди		4	136	194	1	900	500	\N
279	3	В гармонии		4	194	136	1	900	500	\N
280	3	В добрый путь		4	194	136	1	900	500	\N
281	3	Витраж-1		4	97	272	1	900	500	\N
282	3	Витраж-2		4	97	272	1	900	500	\N
283	3	Витраж-3		4	97	272	1	900	500	\N
284	3	Водная сюита		4	97	272	1	900	500	\N
440	3	Блеск		8	272	194	1	1100	650	\N
262	3	Бирюзовый пейзаж		12	291	272	1	1300	800	\N
263	3	Летняя веранда		12	291	272	1	1300	800	\N
264	3	Начало лета		12	291	272	1	1300	800	\N
265	3	Просторы		12	291	272	1	1300	800	\N
266	3	Тёплые воспоминания		12	291	272	1	1300	800	\N
430	4	Забавная кругосветка		4	194	136	1	1000	550	\N
425	4	Радужное озеро		9	291	204	1	1300	750	\N
6	1	Бархатная роза	126	2	98	134	1	600	350	\N
189	2	Берёзовая роща	А-055	12	294	260	1	1700	1150	\N
416	2	Золушка	А-019	8	268	196	1	1500	1100	\N
436	3	Фруктовое ассорти		6	194	204	1	1000	550	\N
385	4	После дождя		3	97	204	1	900	450	\N
395	4	Легенды Байкала		6	291	136	1	1100	600	\N
345	3	Бережок		8	272	194	1	1100	650	\N
7	1	Верные друзья	132	2	134	98	1	600	350	\N
8	1	Весёлый алфавит	37	2	98	134	1	600	350	\N
9	1	Картина "Розы"	49	2	134	98	1	600	350	\N
10	1	Картина "Ромашки"	50	2	134	98	1	600	350	\N
12	1	Летний натюрморт	36	2	134	98	1	600	350	\N
13	1	Любовь и верность	52	2	134	98	1	600	350	\N
14	1	Малинка	195	2	134	98	1	600	350	\N
15	1	Розовый букет	219	2	134	98	1	600	350	\N
16	1	Таинство любви	162	2	134	98	1	600	350	\N
2	1	Дубай	270	12	294	260	1	1100	600	\N
421	2	Фреска "Роза"	А-137	6	294	134	1	1400	1000	\N
246	2	Северное сияние	А-007	6	294	134	1	1400	1000	\N
319	3	Улыбка		4	194	136	1	900	500	\N
320	3	Утренняя роза		4	194	136	1	900	500	\N
321	3	Философский камень		4	136	194	1	900	500	\N
381	3	Райский уголок		9	291	204	1	1200	700	\N
322	3	Ароматы кофе		6	204	194	1	1000	550	\N
396	4	Ночной город		6	291	136	1	1100	600	\N
323	3	Белая нежность		6	204	194	1	1000	550	\N
324	3	Гармония		6	204	194	1	1000	550	\N
325	3	Гепард		6	291	136	1	1000	550	\N
346	3	Бухта Пхукета		8	388	134	1	1100	650	\N
347	3	В тиши		8	272	194	1	1100	650	\N
348	3	Весенний сад		8	272	194	1	1100	650	\N
349	3	Весна		8	272	194	1	1100	650	\N
353	3	Калитка		8	194	272	1	1100	650	\N
372	3	Бархатный сезон		9	291	204	1	1200	700	\N
373	3	Величие гор		9	291	204	1	1200	700	\N
374	3	Весенний лес		9	291	204	1	1200	700	\N
375	3	Взморье		9	291	204	1	1200	700	\N
376	3	Изумрудный рассвет		9	291	204	1	1200	700	\N
377	3	Италия		9	291	204	1	1200	700	\N
378	3	Лесная карусель		9	291	204	1	1200	700	\N
379	3	Маки		9	291	204	1	1200	700	\N
380	3	Радужное озеро		9	291	204	1	1200	700	\N
382	3	Сиреневый рассвет		9	291	204	1	1200	700	\N
383	3	Старый дворик		9	291	204	1	1200	700	\N
386	4	Тигр		3	97	204	1	900	450	\N
431	4	Карта странствий		4	194	136	1	1000	550	\N
387	4	Горная речка		4	194	136	1	1000	550	\N
388	4	Девичьи плесы		4	136	194	1	1000	550	\N
389	4	Дельфины		4	194	136	1	1000	550	\N
390	4	Дети ветра		4	194	136	1	1000	550	\N
391	4	Дивный вид		4	194	136	1	1000	550	\N
392	4	Дом на острове		4	194	136	1	1000	550	\N
393	4	Кармен		4	194	136	1	1000	550	\N
394	4	Утренняя роза		4	194	136	1	1000	550	\N
397	4	Бухта		8	388	136	1	1200	700	\N
398	4	Весна		8	272	194	1	1200	700	\N
399	4	Голубая лагуна		8	272	194	1	1200	700	\N
400	4	Затерянный мир		8	272	194	1	1200	700	\N
401	4	Летние грёзы		8	272	194	1	1200	700	\N
402	4	Летняя прохлада		8	272	194	1	1200	700	\N
403	4	Набережная в Париже		8	272	194	1	1200	700	\N
404	4	Огни города		8	388	136	1	1200	700	\N
405	4	Тропический водопад		8	194	272	1	1200	700	\N
426	4	Альпийская сказка		9	291	204	1	1300	750	\N
407	4	Бархатный сезон		9	291	204	1	1300	750	\N
408	4	Изумрудный рассвет		9	291	204	1	1300	750	\N
409	4	Парк весною		9	291	204	1	1300	750	\N
410	4	Променад		9	291	204	1	1300	750	\N
412	4	Южный берег		9	291	204	1	1300	750	\N
411	4	Райский уголок		9	291	204	1	1300	750	\N
384	4	Тихая гавань		12	408	194	1	1400	850	\N
112	1	Розовые розы	235	6	196	201	1	800	450	\N
163	1	Китайский парк	261	9	294	201	1	1000	550	\N
164	1	Лесное озеро	212	9	294	201	1	1000	550	\N
11	1	Картина "Сакура"	51	2	134	98	1	600	350	\N
31	1	Изящность	189	4	134	196	1	700	400	\N
32	1	Ирбис	25	4	134	196	1	700	400	\N
33	1	Каменный цветок	211	4	196	134	1	700	400	\N
34	1	Карта мира	38	4	196	134	1	700	400	\N
35	1	Лилии	165	4	134	196	1	700	400	\N
36	1	Лондон	247	4	134	196	1	700	400	\N
37	1	Лунная соната	160	4	134	196	1	700	400	\N
38	1	Львиное царство	120	4	134	196	1	700	400	\N
39	1	Магия	172	4	134	196	1	700	400	\N
110	1	Райский сад	107	6	196	201	1	800	450	\N
111	1	Райский уголок	18	6	196	201	1	800	450	\N
113	1	Романтика	133	6	196	201	1	800	450	\N
114	1	Романтические грёзы	144	6	196	201	1	800	450	\N
115	1	Ромашки	236	6	196	201	1	800	450	\N
116	1	Ромашковая поляна	146	6	196	201	1	800	450	\N
117	1	Русская природа	9	6	196	201	1	800	450	\N
119	1	Сад орхидей	109	6	201	196	1	800	450	\N
120	1	Симба	108	6	196	201	1	800	450	\N
121	1	Скорость	56	6	196	201	1	800	450	\N
122	1	Солнечный день	158	6	196	201	1	800	450	\N
123	1	Солнышко на ножке	168	6	196	201	1	800	450	\N
124	1	Таинство природы	145	6	196	201	1	800	450	\N
125	1	Техносити	151	6	196	201	1	800	450	\N
126	1	Тигриный рай	111	6	196	201	1	800	450	\N
127	1	Три медведя	69	6	196	201	1	800	450	\N
128	1	У моря	64	6	196	201	1	800	450	\N
129	1	Фламинго	65	6	196	201	1	800	450	\N
130	1	Хрустальные водопады	137	6	196	201	1	800	450	\N
131	1	Цветущая сакура	190	6	196	201	1	800	450	\N
132	1	Цветущая сирень	124	6	196	201	1	800	450	\N
133	1	Цветущий водопад	258	6	196	201	1	800	450	\N
134	1	Чистые пруды	156	6	196	201	1	800	450	\N
135	1	Шерхан	113	6	196	201	1	800	450	\N
118	1	Рябинка	7	6	196	201	0	800	450	\N
136	1	Южная терраса	61	6	196	201	1	800	450	\N
165	1	Мосты	245	9	294	201	1	1000	550	\N
166	1	Набережная	248	9	294	201	1	1000	550	\N
167	1	Нежно-розовый букет	265	9	294	201	1	1000	550	\N
168	1	Ниагара	171	9	294	201	1	1000	550	\N
169	1	Озеро в горах	75	9	294	201	1	1000	550	\N
170	1	Океанская бухта	228	9	294	201	1	1000	550	\N
171	1	Очей очарованье	89	9	294	201	1	1000	550	\N
172	1	Пальмы	90	9	294	201	1	1000	550	\N
174	1	Родные просторы	91	9	294	201	1	1000	550	\N
176	1	Саяны	92	9	294	201	1	1000	550	\N
177	1	Синегорье	93	9	300	201	1	1000	550	\N
178	1	Таёжное озеро	11	9	294	201	1	1000	550	\N
179	1	Тихая заводь	76	9	294	201	1	1000	550	\N
180	1	Тропикана	63	9	300	201	1	1000	550	\N
182	1	Тропический водопад	224	9	294	201	1	1000	550	\N
181	1	Тропики	215	9	294	201	1	1000	550	\N
257	2	Сказочный мир	А-021	8	268	196	0	1500	1100	\N
365	3	Русские сказки		8	272	194	0	1100	650	\N
285	3	Горная речка		4	194	136	1	900	500	\N
230	2	Мотивы Греции	А-085	16	392	260	1	1800	1250	\N
183	1	Французский парк	94	9	300	201	1	1000	550	\N
241	2	Натюрморт	А-077	4	196	134	1	1300	950	\N
243	2	Кремовая роза	А-082	6	196	201	1	1400	1000	\N
244	2	Магнолия	А-012	6	294	134	1	1400	1000	\N
245	2	Орхидея	А-058	6	134	261	1	1400	1000	\N
251	2	Изящность	А-027	8	196	260	1	1500	1100	\N
252	2	Кармен	А-016	8	196	260	1	1500	1100	\N
253	2	Маленькие волшебницы	А-031	8	196	260	1	1500	1100	\N
254	2	Нежность	А-005	8	196	260	1	1500	1100	\N
255	2	Розовые розы	А-075	8	268	196	1	1500	1100	\N
256	2	Сказочная страна	А-053	8	196	260	1	1500	1100	\N
413	2	Сказочный замок	A-129	12	294	260	1	1700	1150	\N
198	2	Волшебная страна	А-131	12	294	260	1	1700	1150	\N
212	2	Райский уголок	А-130	12	294	260	1	1700	1150	\N
231	2	Неоновый город	А-035	16	392	260	1	1800	1250	\N
232	2	Ночной город	А-036	16	392	260	1	1800	1250	\N
233	2	Панорама	А-048	16	392	260	1	1800	1250	\N
236	2	Токио	А-072	16	392	260	1	1800	1250	\N
238	2	Цветочная поляна	А-084	16	392	260	1	1800	1250	\N
239	2	Японский парк	А-069	16	392	260	1	1800	1250	\N
235	2	Старый дворик	А-122	16	392	260	2	1800	1250	\N
286	3	Дальний Восток		4	194	136	1	900	500	\N
287	3	Девичьи плесы		4	136	194	1	900	500	\N
288	3	Дельфины		4	194	136	1	900	500	\N
289	3	Деревенское утро		4	136	194	1	900	500	\N
290	3	Дети ветра		4	194	136	1	900	500	\N
291	3	Дивный вид		4	194	136	1	900	500	\N
292	3	Доброе утро		4	194	136	1	900	500	\N
293	3	Дом на острове		4	194	136	1	900	500	\N
295	3	Инфанта		4	194	136	1	900	500	\N
326	3	Горное озеро		6	204	194	1	1000	550	\N
327	3	Дамский каприз		6	194	204	1	1000	550	\N
329	3	Древо жизни		6	194	204	1	1000	550	\N
330	3	Дюймовочка		6	194	204	1	1000	550	\N
331	3	Звёздный город		6	291	136	1	1000	550	\N
332	3	Золотая пора		6	194	204	1	1000	550	\N
333	3	Интрига		6	204	194	1	1000	550	\N
334	3	Камин		6	204	194	1	1000	550	\N
335	3	Коралловый риф		6	204	194	1	1000	550	\N
336	3	Легенды Байкала		6	291	136	1	1000	550	\N
337	3	Летняя пора		6	204	194	1	1000	550	\N
338	3	Мелодия воды		6	194	204	1	1000	550	\N
339	3	Под парусами		6	291	136	1	1000	550	\N
340	3	Речка в скалах		6	204	194	1	1000	550	\N
341	3	Сити		6	291	136	1	1000	550	\N
342	3	У тихой речки		6	204	194	1	1000	550	\N
343	3	Фэнтези		6	194	204	1	1000	550	\N
344	3	Царское село		6	291	136	1	1000	550	\N
328	3	Дорожная азбука		6	204	194	1	1000	550	\N
364	3	Поляна цветов		8	388	136	1	1100	650	\N
366	3	Солнце взошло		8	272	194	1	1100	650	\N
367	3	Тихий уголок		8	272	194	1	1100	650	\N
368	3	Тропический водопад		8	194	272	1	1100	650	\N
369	3	Уютный парк		8	272	194	1	1100	650	\N
432	3	Верные друзья		4	194	136	1	900	500	\N
370	3	Цветочный вальс		8	272	194	1	1100	650	\N
371	3	Эллегия		8	272	194	1	1100	650	\N
437	3	Цветущая галерея		8	272	194	1	1100	650	\N
406	4	Цветущая галерея		8	272	194	1	1200	700	\N
427	4	Паровозик		6	204	194	1	1100	600	\N
17	1	Фруктовый коктейль	186	2	134	98	1	600	350	\N
18	1	Яблочное лето	184	2	134	98	1	600	350	\N
40	1	Машенька и медведи	174	4	134	196	1	700	400	\N
41	1	Морская стихия		4	134	196	1	700	400	\N
42	1	Морское сияние	121	4	134	196	1	700	400	\N
43	1	Морской прибой	22	4	196	134	1	700	400	\N
44	1	Мультяшки	178	4	134	196	1	700	400	\N
45	1	Нежность	2	4	134	196	1	700	400	\N
46	1	Ниндзя	179	4	134	196	1	700	400	\N
47	1	Нью-Йорк	40	4	196	134	1	700	400	\N
48	1	Одуванчики	3	4	134	196	1	700	400	\N
49	1	Париж	41	4	134	196	1	700	400	\N
50	1	Пегас		4	134	196	1	700	400	\N
51	1	Ретромобиль	131	4	196	134	1	700	400	\N
52	1	Русалочка	140	4	196	134	1	700	400	\N
53	1	Русская краса	123	4	134	196	1	700	400	\N
54	1	Русские берёзы	77	4	134	196	1	700	400	\N
55	1	Сказочная страна	53	4	134	196	1	700	400	\N
56	1	Сказочные джунгли	136	4	196	134	1	700	400	\N
57	1	Сказочные принцессы	34	4	134	196	1	700	400	\N
58	1	Тачки	32	4	134	196	1	700	400	\N
59	1	Триумф		4	134	200	1	700	400	\N
60	1	Тропический рай	17	4	134	196	1	700	400	\N
61	1	Умка	185	4	196	134	1	700	400	\N
62	1	Утренняя свежесть	1	4	134	196	1	700	400	\N
63	1	Утренняя соната	209	4	134	196	1	700	400	\N
64	1	Фантазия	46	4	196	134	1	700	400	\N
65	1	Феи	217	4	196	134	1	700	400	\N
66	1	Футбол	57	4	134	196	1	700	400	\N
67	1	Цветение	206	4	196	134	1	700	400	\N
68	1	Эйфелева башня	164	4	134	196	1	700	400	\N
95	1	Лесные феи	177	6	196	201	1	800	450	\N
96	1	Лето в горах	154	6	196	201	1	800	450	\N
97	1	Мир прекрасного	139	6	196	201	1	800	450	\N
98	1	Морские глубины	141	6	196	201	1	800	450	\N
99	1	Морские просторы	130	6	196	201	1	800	450	\N
100	1	Морской бриз	24	6	196	201	1	800	450	\N
101	1	Морской закат	204	6	196	201	1	800	450	\N
102	1	Мустанг	71	6	196	201	1	800	450	\N
103	1	Нежный букет	238	6	196	201	1	800	450	\N
104	1	Орхидея	237	6	294	134	1	800	450	\N
105	1	Павлины	106	6	196	201	1	800	450	\N
106	1	Пальмовый берег	105	6	196	201	1	800	450	\N
162	1	Каскад водопадов	196	9	294	201	1	1000	550	\N
184	1	Хрустальная речка	225	9	294	201	1	1000	550	\N
185	1	Южный берег	187	9	294	201	1	1000	550	\N
186	1	Яблони в цвету	5	9	294	201	1	1000	550	\N
159	1	Звенящие водопады	170	9	294	201	1	1000	550	\N
175	1	Сад Шахрезады	72	9	294	201	1	1000	550	\N
173	1	Поющие водопады	13	9	300	201	1	1000	550	\N
258	2	Феррари	А-051	8	268	196	1	1500	1100	\N
259	2	Хрустальные водопады	А-079	8	196	260	1	1500	1100	\N
260	2	Чайная роза	А-098	8	268	196	1	1500	1100	\N
417	2	Лунный кот	А-090	12	294	260	1	1700	1150	\N
422	2	Салюты	А-054	16	392	260	1	1800	1250	\N
294	3	Забавная кругосветка		4	194	136	1	900	500	\N
296	3	Ирисы		4	97	272	1	900	500	\N
297	3	Кармен		4	194	136	1	900	500	\N
298	3	Карта странствий		4	194	136	1	900	500	\N
299	3	Квартет		4	194	136	1	900	500	\N
300	3	Корона Катуни		4	136	194	1	900	500	\N
301	3	Лесное царство		4	194	136	1	900	500	\N
302	3	Мишки на севере		4	194	136	1	900	500	\N
303	3	Мост Александра III		4	194	136	1	900	500	\N
304	3	Моторевю		4	194	136	1	900	500	\N
305	3	Нарциссы		4	97	272	1	900	500	\N
306	3	Нежность		4	194	136	1	900	500	\N
307	3	Орхидеи		4	194	136	1	900	500	\N
308	3	Осенняя аллея		4	136	194	1	900	500	\N
309	3	Очарование		4	194	136	1	900	500	\N
310	3	Парижский этюд		4	97	272	1	900	500	\N
311	3	Парусник		4	136	194	1	900	500	\N
312	3	Предгорье		4	136	194	1	900	500	\N
313	3	Розовое торжество		4	97	272	1	900	500	\N
314	3	Ромашки		4	194	136	1	900	500	\N
315	3	Русалочка		4	194	136	1	900	500	\N
316	3	Солнечный дворик		4	194	136	1	900	500	\N
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: commodity_turnover_contractor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('commodity_turnover_contractor_id_seq', 20, true);


--
-- Name: commodity_turnover_purchasereturn_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('commodity_turnover_purchasereturn_id_seq', 8, true);


--
-- Name: commodity_turnover_purchasereturncontent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('commodity_turnover_purchasereturncontent_id_seq', 8, true);


--
-- Name: commodity_turnover_receipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('commodity_turnover_receipt_id_seq', 8, true);


--
-- Name: commodity_turnover_receiptcontent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('commodity_turnover_receiptcontent_id_seq', 953, true);


--
-- Name: commodity_turnover_selling_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('commodity_turnover_selling_id_seq', 264, true);


--
-- Name: commodity_turnover_sellingcontent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('commodity_turnover_sellingcontent_id_seq', 530, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 715, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('django_content_type_id_seq', 20, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('django_migrations_id_seq', 23, true);


--
-- Name: glue_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('glue_brand_id_seq', 7, true);


--
-- Name: glue_glue_glue_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('glue_glue_glue_type_id_seq', 20, true);


--
-- Name: glue_glue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('glue_glue_id_seq', 15, true);


--
-- Name: glue_gluetype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('glue_gluetype_id_seq', 5, true);


--
-- Name: main_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('main_brand_id_seq', 44, true);


--
-- Name: main_theconsignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('main_theconsignment_id_seq', 499, true);


--
-- Name: main_vendorcode_combination_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('main_vendorcode_combination_id_seq', 146, true);


--
-- Name: main_vendorcode_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('main_vendorcode_id_seq', 404, true);


--
-- Name: photowp_photowp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: evada_user
--

SELECT pg_catalog.setval('photowp_photowp_id_seq', 442, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: commodity_turnover_contractor commodity_turnover_contractor_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_contractor
    ADD CONSTRAINT commodity_turnover_contractor_pkey PRIMARY KEY (id);


--
-- Name: commodity_turnover_purchasereturn commodity_turnover_purchasereturn_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_purchasereturn
    ADD CONSTRAINT commodity_turnover_purchasereturn_pkey PRIMARY KEY (id);


--
-- Name: commodity_turnover_purchasereturncontent commodity_turnover_purchasereturncontent_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_purchasereturncontent
    ADD CONSTRAINT commodity_turnover_purchasereturncontent_pkey PRIMARY KEY (id);


--
-- Name: commodity_turnover_receipt commodity_turnover_receipt_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_receipt
    ADD CONSTRAINT commodity_turnover_receipt_pkey PRIMARY KEY (id);


--
-- Name: commodity_turnover_receiptcontent commodity_turnover_receiptcontent_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_receiptcontent
    ADD CONSTRAINT commodity_turnover_receiptcontent_pkey PRIMARY KEY (id);


--
-- Name: commodity_turnover_selling commodity_turnover_selling_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_selling
    ADD CONSTRAINT commodity_turnover_selling_pkey PRIMARY KEY (id);


--
-- Name: commodity_turnover_sellingcontent commodity_turnover_sellingcontent_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_sellingcontent
    ADD CONSTRAINT commodity_turnover_sellingcontent_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: glue_brand glue_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_brand
    ADD CONSTRAINT glue_brand_pkey PRIMARY KEY (id);


--
-- Name: glue_glue_glue_type glue_glue_glue_type_glue_id_gluetype_id_0e6cbc3f_uniq; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_glue_glue_type
    ADD CONSTRAINT glue_glue_glue_type_glue_id_gluetype_id_0e6cbc3f_uniq UNIQUE (glue_id, gluetype_id);


--
-- Name: glue_glue_glue_type glue_glue_glue_type_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_glue_glue_type
    ADD CONSTRAINT glue_glue_glue_type_pkey PRIMARY KEY (id);


--
-- Name: glue_glue glue_glue_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_glue
    ADD CONSTRAINT glue_glue_pkey PRIMARY KEY (id);


--
-- Name: glue_gluetype glue_gluetype_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_gluetype
    ADD CONSTRAINT glue_gluetype_pkey PRIMARY KEY (id);


--
-- Name: main_brand main_brand_name_country_of_origin_17815d52_uniq; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_brand
    ADD CONSTRAINT main_brand_name_country_of_origin_17815d52_uniq UNIQUE (name, country_of_origin);


--
-- Name: main_brand main_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_brand
    ADD CONSTRAINT main_brand_pkey PRIMARY KEY (id);


--
-- Name: main_theconsignment main_theconsignment_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_theconsignment
    ADD CONSTRAINT main_theconsignment_pkey PRIMARY KEY (id);


--
-- Name: main_theconsignment main_theconsignment_vendor_code_id_the_consi_d453663f_uniq; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_theconsignment
    ADD CONSTRAINT main_theconsignment_vendor_code_id_the_consi_d453663f_uniq UNIQUE (vendor_code_id, the_consignment);


--
-- Name: main_vendorcode_combination main_vendorcode_combinat_from_vendorcode_id_to_ve_16748f52_uniq; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_vendorcode_combination
    ADD CONSTRAINT main_vendorcode_combinat_from_vendorcode_id_to_ve_16748f52_uniq UNIQUE (from_vendorcode_id, to_vendorcode_id);


--
-- Name: main_vendorcode_combination main_vendorcode_combination_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_vendorcode_combination
    ADD CONSTRAINT main_vendorcode_combination_pkey PRIMARY KEY (id);


--
-- Name: main_vendorcode main_vendorcode_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_vendorcode
    ADD CONSTRAINT main_vendorcode_pkey PRIMARY KEY (id);


--
-- Name: main_vendorcode main_vendorcode_vendor_code_key; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_vendorcode
    ADD CONSTRAINT main_vendorcode_vendor_code_key UNIQUE (vendor_code);


--
-- Name: photowp_photowp photowp_photowp_pkey; Type: CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY photowp_photowp
    ADD CONSTRAINT photowp_photowp_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: commodity_turnover_purchas_purchase_returns_id_4714eff3; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX commodity_turnover_purchas_purchase_returns_id_4714eff3 ON commodity_turnover_purchasereturncontent USING btree (purchase_returns_id);


--
-- Name: commodity_turnover_purchas_selling_content_id_e320d6f5; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX commodity_turnover_purchas_selling_content_id_e320d6f5 ON commodity_turnover_purchasereturncontent USING btree (selling_content_id);


--
-- Name: commodity_turnover_purchasereturn_selling_id_3bfb02fe; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX commodity_turnover_purchasereturn_selling_id_3bfb02fe ON commodity_turnover_purchasereturn USING btree (selling_id);


--
-- Name: commodity_turnover_receipt_shipper_id_2e6d7867; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX commodity_turnover_receipt_shipper_id_2e6d7867 ON commodity_turnover_receipt USING btree (shipper_id);


--
-- Name: commodity_turnover_receiptcontent_content_type_id_a44280b1; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX commodity_turnover_receiptcontent_content_type_id_a44280b1 ON commodity_turnover_receiptcontent USING btree (content_type_id);


--
-- Name: commodity_turnover_receiptcontent_receipt_id_b133d181; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX commodity_turnover_receiptcontent_receipt_id_b133d181 ON commodity_turnover_receiptcontent USING btree (receipt_id);


--
-- Name: commodity_turnover_selling_buyer_id_cb501639; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX commodity_turnover_selling_buyer_id_cb501639 ON commodity_turnover_selling USING btree (buyer_id);


--
-- Name: commodity_turnover_sellingcontent_content_type_id_1edacbc8; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX commodity_turnover_sellingcontent_content_type_id_1edacbc8 ON commodity_turnover_sellingcontent USING btree (content_type_id);


--
-- Name: commodity_turnover_sellingcontent_selling_order_id_15b96864; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX commodity_turnover_sellingcontent_selling_order_id_15b96864 ON commodity_turnover_sellingcontent USING btree (selling_order_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: glue_glue_brand_id_d240e1b4; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX glue_glue_brand_id_d240e1b4 ON glue_glue USING btree (brand_id);


--
-- Name: glue_glue_glue_type_glue_id_a5a417e9; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX glue_glue_glue_type_glue_id_a5a417e9 ON glue_glue_glue_type USING btree (glue_id);


--
-- Name: glue_glue_glue_type_gluetype_id_b09f678e; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX glue_glue_glue_type_gluetype_id_b09f678e ON glue_glue_glue_type USING btree (gluetype_id);


--
-- Name: main_theconsignment_vendor_code_id_ebbf031d; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX main_theconsignment_vendor_code_id_ebbf031d ON main_theconsignment USING btree (vendor_code_id);


--
-- Name: main_vendorcode_brand_id_86e917a3; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX main_vendorcode_brand_id_86e917a3 ON main_vendorcode USING btree (brand_id);


--
-- Name: main_vendorcode_combination_from_vendorcode_id_1167d6a8; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX main_vendorcode_combination_from_vendorcode_id_1167d6a8 ON main_vendorcode_combination USING btree (from_vendorcode_id);


--
-- Name: main_vendorcode_combination_to_vendorcode_id_c12ccf71; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX main_vendorcode_combination_to_vendorcode_id_c12ccf71 ON main_vendorcode_combination USING btree (to_vendorcode_id);


--
-- Name: main_vendorcode_vendor_code_da7aa6f6_like; Type: INDEX; Schema: public; Owner: evada_user
--

CREATE INDEX main_vendorcode_vendor_code_da7aa6f6_like ON main_vendorcode USING btree (vendor_code varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commodity_turnover_purchasereturncontent commodity_turnover_p_purchase_returns_id_4714eff3_fk_commodity; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_purchasereturncontent
    ADD CONSTRAINT commodity_turnover_p_purchase_returns_id_4714eff3_fk_commodity FOREIGN KEY (purchase_returns_id) REFERENCES commodity_turnover_purchasereturn(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commodity_turnover_purchasereturncontent commodity_turnover_p_selling_content_id_e320d6f5_fk_commodity; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_purchasereturncontent
    ADD CONSTRAINT commodity_turnover_p_selling_content_id_e320d6f5_fk_commodity FOREIGN KEY (selling_content_id) REFERENCES commodity_turnover_sellingcontent(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commodity_turnover_purchasereturn commodity_turnover_p_selling_id_3bfb02fe_fk_commodity; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_purchasereturn
    ADD CONSTRAINT commodity_turnover_p_selling_id_3bfb02fe_fk_commodity FOREIGN KEY (selling_id) REFERENCES commodity_turnover_selling(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commodity_turnover_receiptcontent commodity_turnover_r_content_type_id_a44280b1_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_receiptcontent
    ADD CONSTRAINT commodity_turnover_r_content_type_id_a44280b1_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commodity_turnover_receiptcontent commodity_turnover_r_receipt_id_b133d181_fk_commodity; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_receiptcontent
    ADD CONSTRAINT commodity_turnover_r_receipt_id_b133d181_fk_commodity FOREIGN KEY (receipt_id) REFERENCES commodity_turnover_receipt(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commodity_turnover_receipt commodity_turnover_r_shipper_id_2e6d7867_fk_commodity; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_receipt
    ADD CONSTRAINT commodity_turnover_r_shipper_id_2e6d7867_fk_commodity FOREIGN KEY (shipper_id) REFERENCES commodity_turnover_contractor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commodity_turnover_selling commodity_turnover_s_buyer_id_cb501639_fk_commodity; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_selling
    ADD CONSTRAINT commodity_turnover_s_buyer_id_cb501639_fk_commodity FOREIGN KEY (buyer_id) REFERENCES commodity_turnover_contractor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commodity_turnover_sellingcontent commodity_turnover_s_content_type_id_1edacbc8_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_sellingcontent
    ADD CONSTRAINT commodity_turnover_s_content_type_id_1edacbc8_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: commodity_turnover_sellingcontent commodity_turnover_s_selling_order_id_15b96864_fk_commodity; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY commodity_turnover_sellingcontent
    ADD CONSTRAINT commodity_turnover_s_selling_order_id_15b96864_fk_commodity FOREIGN KEY (selling_order_id) REFERENCES commodity_turnover_selling(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: glue_glue glue_glue_brand_id_d240e1b4_fk_glue_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_glue
    ADD CONSTRAINT glue_glue_brand_id_d240e1b4_fk_glue_brand_id FOREIGN KEY (brand_id) REFERENCES glue_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: glue_glue_glue_type glue_glue_glue_type_glue_id_a5a417e9_fk_glue_glue_id; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_glue_glue_type
    ADD CONSTRAINT glue_glue_glue_type_glue_id_a5a417e9_fk_glue_glue_id FOREIGN KEY (glue_id) REFERENCES glue_glue(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: glue_glue_glue_type glue_glue_glue_type_gluetype_id_b09f678e_fk_glue_gluetype_id; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY glue_glue_glue_type
    ADD CONSTRAINT glue_glue_glue_type_gluetype_id_b09f678e_fk_glue_gluetype_id FOREIGN KEY (gluetype_id) REFERENCES glue_gluetype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_theconsignment main_theconsignment_vendor_code_id_ebbf031d_fk_main_vend; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_theconsignment
    ADD CONSTRAINT main_theconsignment_vendor_code_id_ebbf031d_fk_main_vend FOREIGN KEY (vendor_code_id) REFERENCES main_vendorcode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_vendorcode main_vendorcode_brand_id_86e917a3_fk_main_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_vendorcode
    ADD CONSTRAINT main_vendorcode_brand_id_86e917a3_fk_main_brand_id FOREIGN KEY (brand_id) REFERENCES main_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_vendorcode_combination main_vendorcode_comb_from_vendorcode_id_1167d6a8_fk_main_vend; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_vendorcode_combination
    ADD CONSTRAINT main_vendorcode_comb_from_vendorcode_id_1167d6a8_fk_main_vend FOREIGN KEY (from_vendorcode_id) REFERENCES main_vendorcode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: main_vendorcode_combination main_vendorcode_comb_to_vendorcode_id_c12ccf71_fk_main_vend; Type: FK CONSTRAINT; Schema: public; Owner: evada_user
--

ALTER TABLE ONLY main_vendorcode_combination
    ADD CONSTRAINT main_vendorcode_comb_to_vendorcode_id_c12ccf71_fk_main_vend FOREIGN KEY (to_vendorcode_id) REFERENCES main_vendorcode(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

