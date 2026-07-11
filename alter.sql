--create table
CREATE TABLE emplye (id serial, name varchar(52), age int)
--Renaming table name 
ALTER TABLE emplye
RENAME TO employee
--add a colum in a table
ALTER TABLE employee
ADD COLUMN email varchar(50);


--Drop a column;
--ALTER TABLE employee
--DROP COLUMN email;

-- reanameing a column 
alter table employee rename name to user_name  ;




