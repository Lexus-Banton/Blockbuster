-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
select
city.city, sum(payment.amount)
from
city
INNER join address on address.city_id = city.city_id
INNER join customer on customer.address_id = address.address_id
inner join payment on payment.customer_id = customer.customer_id
group by
city.city
order by
sum desc
limit 10
