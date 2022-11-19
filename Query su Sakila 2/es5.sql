--Indicare il numero di film e la durata media dei film in cui ha recitato GRETA MALDEN
SELECT COUNT(*) AS numero_film, AVG(film.length) AS durata_media
FROM film_actor, actor, film
WHERE film_actor.actor_id = actor.actor_id 
    AND film.film_id = film_actor.film_id
        AND actor.first_name = "GRETA"
            AND actor.last_name = "MALDEN";
