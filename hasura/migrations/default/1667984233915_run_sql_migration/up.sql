CREATE OR REPLACE FUNCTION public.rating_avg(
	rec_id text)
    RETURNS text
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE total text;
BEGIN SELECT AVG(rating)into total from ratings where receipe_id = rec_id;
return total;
END 
$BODY$;

ALTER FUNCTION public.rating_avg(text)
    OWNER TO postgres;
