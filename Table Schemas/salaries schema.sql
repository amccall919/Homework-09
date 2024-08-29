-- Table: public.salaries

-- DROP TABLE IF EXISTS public.salaries;

CREATE TABLE IF NOT EXISTS public.salaries
(
    emp_no integer NOT NULL,
    salary integer NOT NULL,
    CONSTRAINT salaries_pkey PRIMARY KEY (emp_no),
    CONSTRAINT employees_fkey FOREIGN KEY (emp_no)
        REFERENCES public.employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.salaries
    OWNER to postgres;