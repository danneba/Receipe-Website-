CREATE OR REPLACE FUNCTION public.rate_average()
 RETURNS double precision
 LANGUAGE sql
 STABLE
AS $function$
    select AVG(rating) FROM ratings 
$function$;
