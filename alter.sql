CREATE TABLE employe (id serial, name varchar(50), age int);

--Renaming table name 
 alter table employe rename to employee;

-- add column ...
 alter table employee add column email varchar(50);


-- drop a column 
alter table employee drop column email;

-- renaming a column name 
alter table employee rename column name to user_name;

--Modifying constraint
alter table employee alter column user_name type varchar(20);

--add constraint
alter table employee alter column email set not null;

--drop constraint
alter table employee alter column email drop not null;