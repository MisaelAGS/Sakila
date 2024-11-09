/* "Quanto estamos ganhando, em média, por mês? Faça uma consulta que mostre a 
receita média por mês de locação, ao longo de todos os anos de dados que temos." */

USE sakila;
SELECT 
    DATE_FORMAT(payment.payment_date, "%m/%Y") AS periodo,
    AVG(payment.amount)  AS total
FROM payment
GROUP BY DATE_FORMAT(payment.payment_date, "%m/%Y");