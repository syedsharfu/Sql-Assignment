## Creating a data base for ATS and inserting technology in the table and finding out the which id has all the technologies DATA SCIENCE,TABLUE,SQL,Python 


create database Linkedin;
use linkedin;
create table students(
id int,
technology varchar(25)
);
select * from students;

insert into students values(1,"DATA SCIENCE"),
(1,"TABLUE"),
(1,"SQL"),
(2,"R"),
(2,"POWERBI"),
(1,"PYTHON");

select technology from students where id=1;

select id from students where technology="DATA SCIENCE"or technology="TABLUE" or technology="SQL"or technology="PYTHON";

select id from students where technology="DATA SCIENCE"
and id in(select id from students where technology="TABLUE"
and id in(select id from students where technology="SQL"
and id in(select id from students where technology="PYTHON"
)));

## NEXT ASSIGNMENT

create database FACEBOOK;
use FACEBOOK;

create table product_info(
pr_id int,
product_name varchar(25)
);

insert into product_info values(1001,"BLOG"),(1002,"youtube"),(1003,"sducation");

create table product_info_likes(
user_id int,
pr_id int,
liked_date date
);

insert into product_info_likes values(1,1001,"2023-08-19"),(1,1003,"2023-08-18");

select * from product_info;
select * from product_info_likes;


SELECT p.pr_id
FROM product_info p
LEFT JOIN product_info_likes pl ON p.pr_id = pl.pr_id
WHERE pl.pr_id IS NULL;
