--select student whose first name starts with 'A'
 select * from students where first_name like 'A%'
 select * from students where first_name like '__a%'
select * from students where first_name like '%a'
 select * from students where first_name like '%a_'
 select * from students where first_name like '%a___'
-- all small or upper.. any thing 
select * from students where first_name Ilike '%a'