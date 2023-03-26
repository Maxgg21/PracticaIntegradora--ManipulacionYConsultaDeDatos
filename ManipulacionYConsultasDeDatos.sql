----------MICRO DESAFIO ( 1 )

--Seleccion de tabla
select * from movies_db.genres;

--insertando dato 1.1

insert into genres values (
	13, now(), null ,"Investigacion", 13, 1
);

--Modificacion dato 1.2 

update genres 
set name = "Invetigacion cientifica" 
where id = 13;

--Eliminar un dato 1.3

delete from genres where id = 13;

--Mostrar tabla de movies 1.4

select * from movies_db.movies;

--Mostrar tabla de actores 
select * from movies_db.actors;

--mostrar nomber, apellido y rating 1.5

select first_name, last_name, rating from movies_db.actors;

--Mostrar nombre de actores con una columna con alias de Nombre 1.6

select first_name as Nombre from actors;

------------Micro desafio ( 2 )

--Mostrar nombre, apellido, y rating mayor 7.5  2.1

select * from movies_db.actors
where rating > 7.5;

--Mostrar el título de las películas, el rating y los premios de las películas con un rating
mayor a 7.5 y con más de dos premios. 2.2

select title, awards, rating  from movies_db.movies
where rating > 7.5
and awards >= 2;

--Mostrar el título de las películas y el rating ordenadas por rating en forma
ascendente. 2.3

select title, rating  from movies_db.movies
order by rating asc;

----------MICRO DESAFIO( 3 )

--Las tres primeras peliculas 3.1

select * from movies_db.movies
limit 3;

--Mostras las 5 peliculas dem mayor ranting 3.2

select * from movies_db.movies
order by rating desc 
limit 5;

--Mostrar de 5 a 10 peliculas de mayor rating 3.3
select * from movies_db.movies
order by rating desc 
limit 5
offset 5;


--Listar los primeros 10 actores 3.4/A
select * from movies_db.actors
limit 10;

--/A
select * from movies_db.actors 
limit 10
offset 20;

----------MICRO DESAFIO( 4 )

--Mostrar el título y rating de todas las películas cuyo título sea Harry Potter. 4.1
select title, rating from movies_db.movies
where title like "%Harry Potter%";

--Mostrar a todos los actores cuyos nombres empiecen con Sam. 4.2
select * from movies_db.actors
where first_name like "%Sam%";

--Mostrar el título de las películas que salieron entre el 2004 y 2008. 4.3
select title, release_date from movies_db.movies
where release_date between "2004-01-01" and "2008-12-31";

