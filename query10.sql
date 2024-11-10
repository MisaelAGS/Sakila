/* "Quero saber de onde nossos clientes vêm. 
Traga a quantidade de clientes por país e por cidade, ordenados por país e cidade." */
USE sakila;
SELECT 
    COUNT(customer.customer_id) AS qtd_cliente,
    city.city,
    country.country
FROM sakila.customer
INNER JOIN sakila.address ON customer.address_id = address.address_id
INNER JOIN sakila.city ON address.city_id = city.city_id
INNER JOIN sakila.country ON city.country_id = country.country_id
GROUP BY country.country_id, city.city_id
ORDER BY COUNT(customer.customer_id) DESC;