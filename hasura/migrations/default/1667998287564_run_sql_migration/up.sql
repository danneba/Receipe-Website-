CREATE OR REPLACE FUNCTION rates_average()
 RETURNS double precision
 LANGUAGE sql
 STABLE
AS $function$
    select AVG(rating) FROM ratings 
$function$;
