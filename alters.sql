CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(30),
    age INT,
    salary NUMERIC(10,2)
);
-- Add NOT NULL constraint to the email column
ALTER TABLE employee
ALTER COLUMN email SET NOT NULL;

-- Drop address column
ALTER TABLE employee
DROP COLUMN address;