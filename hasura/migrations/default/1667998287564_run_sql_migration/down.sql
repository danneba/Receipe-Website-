-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE OR REPLACE FUNCTION rates_average()
--  RETURNS double precision
--  LANGUAGE sql
--  STABLE
-- AS $function$
--     select AVG(rating) FROM ratings
-- $function$;