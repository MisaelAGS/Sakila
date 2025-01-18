/*
9 - Categorias com Maior Receita por Cliente
"Quais categorias de filmes trazem a maior receita média por cliente? 
Para cada categoria, traga o valor médio pago por cliente, a quantidade total de clientes e o total de locações. 
Ordene da maior para a menor receita média por cliente."
*/

SELECT
    c.name AS categoria, 
    COUNT(r.rental_id) AS total_locacoes,
    COUNT(DISTINCT(r.customer_id)) AS quantidade_total_clientes,
    ROUND(SUM(p.amount) / COUNT(DISTINCT(r.customer_id)), 2) receita_media_por_cliente
FROM sakila.category AS c
INNER JOIN sakila.film_category AS fc
ON c.category_id = fc.category_id
INNER JOIN sakila.inventory AS i
ON fc.film_id = i.film_id
INNER JOIN sakila.rental AS r
ON i.inventory_id = r.inventory_id
INNER JOIN sakila.payment AS p
ON r.rental_id = p.rental_id
GROUP BY c.name
ORDER BY receita_media_por_cliente DESC;