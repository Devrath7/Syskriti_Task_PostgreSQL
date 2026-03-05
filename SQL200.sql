select * from sakila.film;

#Q1 Film prices From film, show: film_id, title, rental_rate Get only the films where rental_rate is 9.99 or 4.99. 
select film_id,title,rental_rate from sakila.film
where rental_rate = 9.99 or rental_rate=4.99;

#Q2 Actor last names From actor, show: actor_id, first_name, last_name Find actors whose last_name starts with S OR ends with N. 
select title,length,rating from sakila.film
where length between 90 and 120;

select * from sakila.actor;
#Q3 Actor last names From actor, show: actor_id, first_name, last_name Find actors whose last_name starts with S OR ends with N. 
select actor_id, first_name, last_name from sakila.actor
where last_name like "S%"  and last_name like "%E";

select * from sakila.customer;
#Q4 Active customers + email filter From customer, show: customer_id, first_name, last_name, email Find active customers whose email contains “.org” OR “.net”. 
select customer_id, first_name, last_name, email from sakila.customer
where email like "%.org" or email like "%.net";

select customer_id, first_name, last_name, email from sakila.customer
where email like "%.net";

#Q5 Inactive customers in store 1 From customer, show: customer_id, store_id, active Find customers from store 1 who are not active. 
select * from sakila.customer;

select customer_id, store_id, active from sakila.customer
where store_id=1 and active=0;

#Q6 Payment amount + date range From payment, show: payment_id, customer_id, amount, payment_date Find payments with amount between 2.00 and 5.00 and made in February 2007. 
select * from sakila.payment;

select distinct year(payment_date) from sakila.payment;

select payment_id, customer_id, amount, payment_date from sakila.payment
where amount between 2.00 and 5.00 and year(payment_date) = 2005 and month(payment_date)=02;

select payment_id, customer_id, amount, payment_date from sakila.payment
where amount between 2.00 and 5.00 and year(payment_date) = 2005;

#Q7 Rentals not returned From rental, show: rental_id, rental_date, return_date, customer_id Find rentals where return_date is NULL. 
select * from sakila.rental;

select rental_id,rental_date,return_date,customer_id from sakila.rental
where return_date = null;

select return_date from sakila.rental;

#Q8 Address district + postal code present From address, show: address_id, address, district, postal_code Find addresses where district is Texas or California AND postal_code is not NULL. 
select * from sakila.address;

select address_id, address, district, postal_code from sakila.address
where district="Texas" or district="California" and postal_code IS NOT NULL;

select address_id, address, district, postal_code from sakila.address
where postal_code IS NOT NULL;

#Q9 Replacement cost + exclude titles From film, show: film_id, title, replacement_cost Find films where replacement_cost is 12.99, 16.99, or 28.99 AND the title does NOT contain the letter A.
select * from sakila.film;

select film_id, title, replacement_cost from sakila.film
where replacement_cost in (12.99, 16.99, 28.99) and title not like '%A%';

#Q10 Inventory logic challenge From inventory, show: inventory_id, film_id, store_id Find inventory items where: • (store_id = 1 AND film_id between 1 and 50) OR • (store_id = 2 AND film_id between 51 and 100)
select * from sakila.inventory;

select inventory_id, film_id, store_id  from sakila.inventory
where (store_id = 1 AND film_id BETWEEN 1 AND 50) OR (store_id = 2 AND film_id BETWEEN 51 AND 100);





