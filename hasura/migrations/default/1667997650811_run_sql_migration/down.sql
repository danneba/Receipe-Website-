-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE OR REPLACE FUNCTION public.rate_average(receipe_row receipe)
--  RETURNS double precision
--  LANGUAGE sql
--  STABLE
-- AS $function$
--     select AVG(rating) FROM ratings where receipe_id = receipe_row.id;
-- $function$;
