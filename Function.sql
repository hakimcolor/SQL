--scaler functions
 --upper , lower , concat , length 
select upper(first_name) as "upFNM" ,first_name, age from students
-- lower
select lower(first_name) as "upFNM" ,first_name, age from students
--concat or add two or more 
select concat(first_name, last_name) as "Full Nm" ,first_name, age from students

