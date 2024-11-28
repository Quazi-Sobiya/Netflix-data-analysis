-- [movies] Write a query to display the title, rating, country, release_year, and director, for all movies directed by Michael Bay.
-- Sort the output by release_year (ascending)
use netflix;

select title, rating, country, release_year, director
from movies
where director= "Michael Bay";

-- [movies] Write a query to display the title, country, duration_in_minutes, and date_added, for all movies that were added before March 2011. Sort the output by duration_in_minutes (ascending)

select title, country, duration_in_minutes, date_added
from movies
where date_added< "2011-03-01"
order by duration_in_minutes asc;

select date_added from movies;

-- [movies] Write a query to display the title, country, duration_in_minutes, and release_year, for all movies that were released between 2014 and 2016.
-- Sort the output by duration_in_minutes (descending)

select title, country, duration_in_minutes, release_year 
from movies
where release_year between 2014 and 2016
order by duration_in_minutes desc;

-- [movies] Write a query to display the title, director, country, and duration_in_minutes,
-- for all movies with duration between 3-4 hours. Sort the output by duration_in_minutes (descending)

select title, director, country, duration_in_minutes
from movies 
where duration_in_minutes  between 180 and 240
order by duration_in_minutes desc;

-- [series] Write a query to display the title, director, rating, num_of_seasons for all series with 10 to 14 seasons.
-- Sort the output by num_of_seasons (descending)

select title, director, rating, num_of_seasons 
from series
where num_of_seasons between 10 and 14
order by num_of_seasons desc;

-- [series] Write a query to display the title, director, rating, num_of_seasons
-- for all series
-- a. containing value in the director column (diretor not equals null)
-- b. and having num_of_seasons > 7

select title, director, rating, num_of_seasons
from series
where director is not null and num_of_seasons>7;

-- [movies] Write a query to display the title, director, cast, country and rating, for all movies having Ryan Reynolds in their cast

select title, director, cast, country, rating
from movies
where cast like  "%Ryan Reynolds%";

select cast from movies;

-- [movies] Write a query to display the title, director, cast, country and rating, for all movies having Ryan Reynolds and Nicolas Cage in their cast

select title, director, cast, country, rating 
from movies 
where cast like "%Ryan Reynolds%" and cast like "%Nicolas Cage%";

-- [movies] Write a query to display the title, director, cast, country, duration_in_minutes, and rating
-- a. for all movies having PG (Parental Guidance) in their rating
-- b. and movie duration is greater than 3 hours

select title, director, cast, country, duration_in_minutes, rating
from movies
where rating like "%PG%" and duration_in_minutes > 180;

select rating from movies;

-- [series] Write a query to display title, director, cast, country, and release_year for all series released in 2014, 2016, or 2018. Sort the output by title (ascending)

select title, director, cast, country, release_year
from series
where release_year in (2014, 2016, 2018)
order by title asc;