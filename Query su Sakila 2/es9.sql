--Trova qual è il film con il maggior numero di attori, indicandone titolo e numero di attori. Se
--fossero più di uno elencali in ordine di titolo.

SELECT film.title, COUNT(*)
FROM actor, film_actor, film
WHERE film_actor.actor_id = actor.actor_id 
    AND film.film_id = film_actor.film_id
GROUP BY film.title;

--max
SELECT MAX(T.numero_attori)
FROM (
    SELECT COUNT(*) AS numero_attori
    FROM actor, film_actor, film
    WHERE film_actor.actor_id = actor.actor_id 
        AND film.film_id = film_actor.film_id
    GROUP BY film.title
) AS T;

--finale
SELECT film.title, COUNT(actor.actor_id) AS numero_attori
FROM actor, film_actor, film
WHERE film_actor.actor_id = actor.actor_id 
        AND film.film_id = film_actor.film_id
GROUP BY film.title
HAVING numero_attori = (
    SELECT MAX(T.numero_attori)
    FROM (
        SELECT COUNT(actor.actor_id) AS numero_attori
        FROM actor, film_actor, film
        WHERE film_actor.actor_id = actor.actor_id 
            AND film.film_id = film_actor.film_id
        GROUP BY film.title
    ) AS T
)
ORDER BY film.title
;
