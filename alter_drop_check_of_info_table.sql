create table information(
info_id serial primary key,
title varchar(500) not null,
person varchar(50) not null unique
)

select * from information

--ALTER
alter table information rename to new_info
--rename the table
select * from information
select * from new_info

--rename specific column
alter table new_info
rename column person to people
select * from new_info

--Inserting the value
insert into new_info(title)
values
('some new title')

insert into new_info(title)
values
('some_new_title')

ALTER TABLE new_info
ALTER COLUMN people
DROP NOT null

INSERT INTO new_info(title)
VALUES
('some new title')

SELECT * FROM new_info
--dropping column
alter table new_info 
drop column people
SELECT * FROM new_info
--error
alter table new_info 
drop column people

alter table new_info
drop column if exists people

