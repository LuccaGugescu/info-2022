--Indicare quanti attori hanno recitato nel film OPERATION OPERATION
SELECT COUNT(*) AS numero_attori
FROM film_actor, actor, film
WHERE film_actor.actor_id = actor.actor_id 
    AND film.film_id = film_actor.film_id
        AND film.title = "OPERATION OPERATION";