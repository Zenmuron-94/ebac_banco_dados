-- Table: public.stock

-- DROP TABLE IF EXISTS public.stock;

CREATE TABLE IF NOT EXISTS public.stock
(
    nome character varying(30) COLLATE pg_catalog."default",
    quantidade integer,
    serial integer,
    product_id integer NOT NULL,
    CONSTRAINT stock_pkey PRIMARY KEY (product_id),
    CONSTRAINT fk_stock_product FOREIGN KEY (product_id)
        REFERENCES public.product (product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.stock
    OWNER to postgres;