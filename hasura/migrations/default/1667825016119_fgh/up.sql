CREATE FUNCTION AVG(rating text)
RETURNS SETOF ratings AS $$
    SELECT AVG(rating)
    FROM ratings
$$ LANGUAGE sql STABLE;
