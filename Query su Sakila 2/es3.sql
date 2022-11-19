--Fare l'elenco con nome e cognome di tutti gli attori che hanno recitato nel film “IRON MOON”
SELECT actor.first_name, actor.last_name
FROM film_actor, actor, film
WHERE film_actor.actor_id = actor.actor_id 
    AND film.film_id = film_actor.film_id
        AND film.title = "IRON MOON";
