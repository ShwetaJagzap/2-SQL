create table employees(
emp_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
birthdate DATE CHECK (birthdate > '1900-01-01'),
hire_date DATE CHECK (hire_date > birthdate),
salary INTEGER CHECK(salary > 0))

slect * from employees

INSERT INTO employees(
first_name,
last_name,
birthdate,
hire_date,
salary)
values
('Jose','Portilla','1990-11-03','2010-01-01',100)

select * from employees

INSERT INTO employees(
first_name,
last_name,
birthdate,
hire_date,
salary)
values
('Sammy','Smith','1990-11-03','2010-01-01',100)

--Case
select* from customer