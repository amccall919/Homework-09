-- Table: public.dept_emp

-- DROP TABLE IF EXISTS public.dept_emp;

CREATE TABLE IF NOT EXISTS public.dept_emp
(
    emp_no integer NOT NULL,
    dept_no character(4) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dept_emp_pkey PRIMARY KEY (emp_no, dept_no),
    CONSTRAINT employee_fkey FOREIGN KEY (emp_no)
        REFERENCES public.employees (emp_no) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dept_emp
    OWNER to postgres;