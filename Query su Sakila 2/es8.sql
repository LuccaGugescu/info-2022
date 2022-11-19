--Trova quanti sono i film la cui durata è maggiore di almeno 60 minuti della durata media di tutti i film.

--media
SELECT AVG(film.length)
FROM film;

--differenza

SELECT COUNT(*)
FROM film
WHERE film.length - (SELECT AVG(film.length)
                     FROM film) > 60; 