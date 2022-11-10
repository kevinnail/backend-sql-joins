-- the average film length by category
-- include the category name and avg length
select category.name, avg(film.length)
from film
left join film_category on film.film_id = film_category.film_id
left join category on film_category.category_id = category.category_id
group by category.name
limit 16