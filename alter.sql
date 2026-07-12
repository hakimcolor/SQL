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

--set defult value for a column 
insert into employee(user_name, age, email) values('hakimali', 22, 'hakimcoloer777@gmail.com');
alter table employee alter column email set default 'stest@gmail.com'

  --Remove defult value
  alter table employee alter column email drop default;
  
-- add constraint table level constraint
alter table employee add constraint u_e_email unique(email);


-- drop constraint table leverl constraint 
alter table employee drop constraint u_e_email ;

-- add prymary key ..
alter table employee add constraint pk_emp_id primary key(id);

-- drop prymary key 
alter table employee drop constraint pk_emp_id;













