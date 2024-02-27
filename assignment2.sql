create table students(
student_id serial primary key,
first_name varchar(500) not null,
last_name varchar(50) not null,
homeroom_number varchar(20),
phone varchar (10),
email varchar(100),
graduation_year varchar(50)

)

create table teachers(
teacher_id serial primary key,
first_name varchar(500) not null,
last_name varchar(50) not null,
homeroom_number varchar(20),
department varchar(20),

email varchar(20) unique,
phone varchar (10) unique

)

select * from students
select * from teachers

insert into students(student_id, first_name, last_name, homeroom_number,phone,email,graduation_year)
values(1,'Rahul','Galande',5,7775551234,'Rahyl.galande@gmail.com',2023)

insert into teachers(teacher_id, first_name,last_name,homeroom_number,department,email,phone)
values(1,'Chandrashekhar','Gogate',5,'Biology','Gogate@gmail.com',7775554321)
select * from teachers

update students
set first_name= 'Om' where student_id=1;
select * from students;
alter table students;