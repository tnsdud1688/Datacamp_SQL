select name
from people

select title, release_year, country
from films

select distinct role
from roles

select count(distinct(country))
from films

select count(*)
from films
where release_year < 2000;

select title, release_year
from films
where release_year > 2000;

select name, birthdate
from people
where birthdate = '1974-11-11'

select *
from films
where language = 'Spanish'
AND release_year > '2000' and release_year < '2010'

SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
AND (language = 'French' OR language = 'Spanish')
AND gross > 2000000;

SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
AND (language = 'Spanish' or language = 'French');

select title, release_year
from films
where release_year IN (1990, 2000)
and duration > 120

select count(*)
from films
where language IS NULL

select name
from people
where name NOT Like 'A%'

select MAX(duration)
from films

Select MIN(gross)
from films

Select MAX(gross)
from films
where release_year between 1994 AND 2012

select title, (gross-budget) AS net_profit
from films

select AVG(duration/60.0) AS avg_duration_hours
from films

select count(deathdate)*100.0/count(*) AS percentage_dead
from people

select (MAX(release_year) - MIN(release_year))/10.0 AS number_of_decades
from films
