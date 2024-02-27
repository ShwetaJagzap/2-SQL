--Advance SQL
show all;
show timezone
select now()
select timeofday()
select current_date
extract()
select * from payment
select extract(year from payment_date) as myyear from payment
select extract(year from payment_date) as pay_month from payment

select extract(quarter from payment_date) as pay_month from payment
select age (payment_date) from payment
select to_char(payment_date,'') from payment
select to_char(payment_date,'MM/DD/YYYY') from payment;

---------------------------------------------------------------------------------
select distinct(to_char(payment_date,'MONTH')) from payment;
select count(*) from payment where extract (dow from payment_date)=1
select * from film;
select rental_rate/replacement_cost from film;
select rental_rate+replacement_cost from film;
select rental_rate-replacement_cost from film;
select rental_rate*replacement_cost from film;
select rental_rate^replacement_cost from film;
select rental_rate%replacement_cost from film;
select rental_rate|/replacement_cost from film;
select rental_rate|//replacement_cost from film;
select rental_rate!replacement_cost from film;
select rental_rate!!replacement_cost from film;
select @ replacement_cost from film;
select rental_rate&replacement_cost from film;
select rental_rate|replacement_cost from film;
select rental_rate<<replacement_cost from film;
select rental_rate>>replacement_cost from film;
select rental_rate#replacement_cost from film;
select ~replacement_cost from film;


select round(rental_rate/replacement_cost,2) from film;
select round(rental_rate/replacement_cost,4) * 100 from film;
select round(rental_rate/replacement_cost,4) * 100 as percent_cost from film;
select 0.1 * replacement_cost as deposit from film;
--length function
--used fro date preparation
select * from customer;
select length (first_name) from customer;
--concatination
select first_name || last_name from customer;
select first_name ||' '|| last_name as full_name from customer;
select upper(first_name) ||' '|| upper(last_name) as full_name from customer;
select left(first_name,1) || last_name || '@gmail.com' from customer;
select right(first_name,1) || last_name || '@gmail.com' from customer;
select lower(left(first_name,1))|| lower(last_name)|| '@gmail.com' from customer
select lower(left(first_name,1))|| lower(last_name)|| '@gmail.com' as custom_email from customer
------------------------------------------------------------------------
--
select * from  film;
select avg (rental_rate) from film;
---------
select title,rental_rate
from film
where rental_rate > (select avg(rental_rate) from film);
---------
select * from rental;
select * from inventory;
---------
select * from rental
where return_date between '2005-05-29' and '2005-05-30';
---------
(select inventory.film_id
from rental
inner join inventory on inventory.inventory_id  = rental.inventory_id
where return_date between '2005-05-29' and '2005-05-30')
--------
select film_id,title
from film
where film_id in
(select inventory.film_id
from rental
inner join inventory
on inventory.inventory_id = rental.inventory_id
where return_date between '2005-05-29' and '2005-05-30')
--------
