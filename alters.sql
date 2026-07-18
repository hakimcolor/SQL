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

--Add a new column named phone_number with the data type VARCHAR(15).
ALTER TABLE employee
ADD COLUMN phone_number VARCHAR(15);