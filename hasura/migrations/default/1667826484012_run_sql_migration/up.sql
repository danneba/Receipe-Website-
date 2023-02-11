CREATE OR REPLACE FUNCTION public.averagerating()
 RETURNS SETOF ratings
 LANGUAGE sql
 STABLE
AS $$
  SELECT AVG(rating)
  FROM ratings
$$;
