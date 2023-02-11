-- CREATE OR REPLACE FUNCTION rates_average(r receipe)
--  RETURNS double precision
--  LANGUAGE sql
--  STABLE
-- AS $function$
--     select AVG(rating) FROM ratings 
-- $function$

drop function rate_average();
