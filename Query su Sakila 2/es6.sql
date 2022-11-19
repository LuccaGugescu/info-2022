--Fai un elenco degli attori con nome, cognome e numero di film fatti, ordinato da chi ha fatto più
--film a chi ne ha fatti meno e in caso di ugual numero di film ordinali per cognome. Nell'elenco
--devono comparire solo gli attori che hanno fatto più di 35 film (35 compreso).


SELECT actor.first_name, actor.last_name, COUNT(*) as numero_film
FROM actor, film_actor, film
WHERE film_actor.actor_id = actor.actor_id 
    AND film.film_id = film_actor.film_id
GROUP BY actor.actor_id
HAVING numero_film > 35
ORDER BY numero_film DESC;


