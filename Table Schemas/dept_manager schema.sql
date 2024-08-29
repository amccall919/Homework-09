-- Table: public.dept_manager

-- DROP TABLE IF EXISTS public.dept_manager;

CREATE TABLE IF NOT EXISTS public.dept_manager
(
    dept_no character(4) COLLATE pg_catalog."default" NOT NULL,
    emp_no integer NOT NULL,
    CONSTRAINT dept_manager_pkey PRIMARY KEY (emp_no, dept_no),
    CONSTRAINT employee_fkey FOREIGN KEY (emp_no)
        REFERENCES public.employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dept_manager
    OWNER to postgres;