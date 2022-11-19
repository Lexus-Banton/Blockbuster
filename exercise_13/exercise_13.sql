-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
select
country.country, AVG(payment.amount)
FROM
country
left join city on city.country_id = country.country_id
left join address  on address.city_id = city.city_id
left join customer on customer.address_id = address.address_id
inner join payment on payment.customer_id = customer.customer_id
group by
country.country
order by
avg desc
Limit
10
