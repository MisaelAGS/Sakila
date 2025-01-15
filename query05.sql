/*
5 - Receita Média por Mês
"Quanto estamos ganhando, em média, por mês? 
Faça uma consulta que mostre a receita média por mês de locação, ao longo de todos os anos de dados que temos. 
Inclua também a quantidade total de locações por mês e ordene por ano e mês."
*/

SELECT
    MONTH(r.rental_date) AS mes,
    YEAR(r.rental_date) AS ano,
    COUNT(r.rental_id) AS quantidade_locacoes,
    AVG(p.amount) AS receita_media
FROM sakila.rental AS r
INNER JOIN sakila.payment AS p
ON r.rental_id = p.rental_id
GROUP BY ano, mes
ORDER BY ano, mes;