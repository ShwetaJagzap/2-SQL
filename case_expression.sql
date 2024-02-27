select * from customer
select customer_id,
CASE
when (customer_id <= 100) then 'Premium'
	 when (customer_id between 100 and 200) then 'Plus'
	 else 'Normal'
end 
from customer

--Case and expression
select customer_id,
case customer_id
when 2 then 'Wnner'
when 5 then 'Second Place'
else 'Normal'
end as eaffel_results
from customer

select * from film;

select 
case rental_rate
when 0.99 then 1
else 0
end
from film


select 
sum(case rental_rate
when 0.99 then 1
else 0
end) as number_of_bargains,
sum(case rental_rate
when 2.99 then 1
else 0
 end) as regular, 
 sum(case rental_rate
	when 4.99 then 1
	else 0
	end) as premium
 from film


