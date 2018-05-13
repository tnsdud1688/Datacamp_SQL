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

select release_year, avg(budget) as avg_budget, avg(gross) as avg_gross
from films
where release_year > 1990
group by release_year
Having avg(budget) > 60000000
Order by avg(gross) DESC

-- select country, average budget, average gross
select country, avg(budget) as avg_budget, avg(gross) as avg_gross
-- from the films table
from films
-- group by country 
group by country
-- where the country has a title count greater than 10
having count(title) > 10
-- order by country
order by country
-- limit to only show 5 results
limit 5

SELECT title, imdb_score
FROM films
JOIN reviews
ON films.id = reviews.film_id
WHERE title = 'To Kill a Mockingbird';
