-- Table: public.product

-- DROP TABLE IF EXISTS public.product;

CREATE TABLE IF NOT EXISTS public.product
(
    nome character varying(30) COLLATE pg_catalog."default" NOT NULL,
    valor integer,
    validade timestamp(6) without time zone,
    product_id integer NOT NULL,
    CONSTRAINT product_pkey PRIMARY KEY (product_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product
    OWNER to postgres;