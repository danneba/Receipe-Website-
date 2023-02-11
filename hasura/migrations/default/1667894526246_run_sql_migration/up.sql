CREATE OR REPLACE FUNCTION public.rating_avg(rec_id text)
RETURNS text LANGUAGE plpgsql AS $function$
DECLARE total text;
BEGIN SELECT AVG(rating) into total FROM ratings where receipe_id = rec_id;
return total; 
END $function$;
