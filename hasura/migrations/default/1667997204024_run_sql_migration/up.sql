ALTER TABLE ratings
ALTER COLUMN rating TYPE Numeric 
USING rating::Numeric;
