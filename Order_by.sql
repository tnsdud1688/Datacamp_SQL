Select name, birthdate
from people
order by birthdate

select *
from films
where release_year Not IN ('2015')
order by duration

select title, gross
from films
where title Like 'M%'
order by title

select title, duration
from films
order by duration DESC

select name, birthdate
from people
order by name, birthdate

select imdb_score, count(film_id)
from reviews
group by imdb_score

select country, release_year, MIN(gross)
from films
group by release_year, country

select release_year
from films
group by release_year
Having Count(title) > 200
