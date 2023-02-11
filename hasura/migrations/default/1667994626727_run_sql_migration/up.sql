WITH cte AS (
SELECT
    CASE 
        WHEN rating ~ '[0-9]' THEN CAST(rating AS decimal) 
    END AS num,
    CASE 
        WHEN rating ~ '[a-zA-Z]' THEN rating
    END AS a
FROM ratings
)
SELECT AVG(num), COUNT(a) FROM cte;
