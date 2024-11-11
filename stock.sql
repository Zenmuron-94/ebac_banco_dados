-- Table: public.stock

-- DROP TABLE IF EXISTS public.stock;

CREATE TABLE IF NOT EXISTS public.stock
(
    nome character varying(30) COLLATE pg_catalog."default",
    quantidade integer,
    serial integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.stock
    OWNER to postgres;