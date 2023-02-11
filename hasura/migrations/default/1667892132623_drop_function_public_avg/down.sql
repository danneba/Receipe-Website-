CREATE OR REPLACE FUNCTION public.avg(rating text)
 RETURNS SETOF ratings
 LANGUAGE sql
 STABLE
AS $function$
    SELECT AVG(rating)
    FROM ratings
$function$;
