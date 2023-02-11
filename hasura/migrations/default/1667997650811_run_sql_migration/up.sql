CREATE OR REPLACE FUNCTION public.rate_average(receipe_row receipe)
 RETURNS double precision
 LANGUAGE sql
 STABLE
AS $function$
    select AVG(rating) FROM ratings where receipe_id = receipe_row.id;
$function$;
