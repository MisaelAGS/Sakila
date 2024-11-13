/* "Existe algum caso em que foi registrado um pagamento, mas o aluguel foi cancelado? 
Verifique se temos pagamentos sem registros de aluguel correspondentes." */

USE sakila;
SELECT payment.payment_id, rental.rental_id 
FROM sakila.payment 
LEFT JOIN sakila.rental ON payment.rental_id = rental.rental_id
WHERE rental.rental_id IS NULL;

