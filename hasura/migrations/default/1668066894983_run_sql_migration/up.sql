CREATE OR REPLACE FUNCTION rate_average(avg_rate receipe)
 RETURNS double precision
 LANGUAGE sql
 STABLE
AS $function$
    select AVG(rating) FROM ratings where receipe_id = avg_rate.id
$function$;
