CREATE OR REPLACE FUNCTION public.rating_avg(rec_id text)
RETURNS text  AS $$
DECLARE 
total text;
BEGIN
SELECT AVG(rating) INTO total FROM ratings where receipe_id = rec_id;
return total; 
END;
$$ LANGUAGE plpgsql;
