<!-- -
Title: Example queries on the Sakila MySQL database
Description: A small collection of example MySQL queries on the Sakila database
First Published: 2015-07-25
- -->

Example queries on the Sakila MySQL database
============================================

<p class='lead'>
**[Sakila][sakila]** is a sample database provided by MySQL, meant to be used 
in tests and documentation examples. This page lists some example queries 
against that database.
</p>

Get a non-normalized selection of actors and films in which they played:

```mysql
SELECT  actor.first_name, 
        actor.last_name, 
        film.title 
FROM actor, film, film_actor 
WHERE film_actor.actor_id = actor.actor_id 
AND film_actor.film_id = film.film_id;
```

<!-- Links -->
[sakila]: http://dev.mysql.com/doc/sakila/en/index.html "Sakila Sample Database"
