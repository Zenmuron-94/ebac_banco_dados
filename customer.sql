-- Table: public.customer

-- DROP TABLE IF EXISTS public.customer;

CREATE TABLE IF NOT EXISTS public.customer
(
    nome character varying(30) COLLATE pg_catalog."default",
    cpf integer,
    email character varying(50) COLLATE pg_catalog."default" NOT NULL,
    data_nascimento timestamp(6) without time zone,
    id integer NOT NULL DEFAULT nextval('customer_id_seq'::regclass),
    CONSTRAINT email_unique UNIQUE (email)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.customer
    OWNER to postgres;