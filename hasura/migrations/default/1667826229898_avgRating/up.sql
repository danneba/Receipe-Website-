CREATE FUNCTION averageRating()
RETURNS SETOF ratings AS $$
  SELECT AVG(rating)
  FROM ratings
$$ LANGUAGE sql STABLE;
