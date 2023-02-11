ALTER TABLE ratings
ALTER COLUMN rating TYPE double precision 
USING rating::double precision;
