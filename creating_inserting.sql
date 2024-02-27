--CREATE
create table account_job(
user_id integer references account(user_id),
job_id integer references job(job_id),
hire_date timestamp
)

--INSERT

insert into account(username,password,email,created_on) 
values
('Ram','root','ram1@sanjivani.org.in',current_timestamp)
insert into account(username,password,email,created_on) 
values
('Om','root1','om1@sanjivani.org.in',current_timestamp)
select * from account

insert into job(job_name) 
values
('Data Scientist')
select * from job

insert into account_job(job_id,user_id,hire_date)
values 
(1,1,current_timestamp)
select * from account_job

--UPDATE

update account 
set last_login=current_timestamp
select * from account

update account
set last_login=created_on
returning account_id,last_login

select * from job
select * from account_job

update account_job 
set hire_date=account.created_on
from account
where account_job.user_id=account.user_id

select * from account_job

update account
set last_login=current_timestamp
returning email,created_on,last_login

insert into job(job_name)
values
('Cowboy')
select * from job

--DELETE

delete from job where job_name='Cowboy'
returning job_id,job_name
select * from job
