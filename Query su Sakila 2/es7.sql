--Trova qual è il film con la durata maggiore, indicandone titolo e durata. Se fossero più di uno
--elencali in ordine di titolo.


--durata maggiore
SELECT MAX(film.length)
FROM film;


SELECT film.title, film.length
FROM film
WHERE length = (
    SELECT MAX(film.length)
    FROM film
)
ORDER BY film.title
;