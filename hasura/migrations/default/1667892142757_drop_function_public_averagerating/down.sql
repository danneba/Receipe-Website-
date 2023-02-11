CREATE OR REPLACE FUNCTION public.averagerating()
 RETURNS SETOF ratings
 LANGUAGE sql
 STABLE
AS $function$
  SELECT AVG(rating)
  FROM ratings
$function$;
