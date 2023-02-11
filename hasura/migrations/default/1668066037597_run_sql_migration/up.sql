CREATE OR REPLACE FUNCTION rates_averages(r receipe)
 RETURNS double precision
 LANGUAGE sql
 STABLE
AS $function$
    select AVG(rating) FROM ratings where receipe_id = r.id
$function$;
