--scaler functions
 --upper , lower , concat , length 
select upper(first_name) as "upFNM" ,first_name, age from students
-- lower
select lower(first_name) as "upFNM" ,first_name, age from students
--concat or add two or more 
select concat(first_name, last_name) as "Full Nm" ,first_name, age from students



-- select null 
select * from students where email is not null

-- coalesce ..it's like placeholder
select first_name, age, coalesce(email, 'provite your email ') as email from students

 -- select first 5 data 
 select * from students limit 5
