-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5
select
film.title
from
film
Left Join inventory on inventory.film_id = film.film_id
Left Join rental on rental.inventory_id = inventory.inventory_id
Left Join customer on customer.customer_id = rental.customer_id
Where customer.first_name = 'Roberta'