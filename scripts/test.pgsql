
-- What are the 5 cheapest restaurants based on avg_cost?
SELECT name, cuisine, avg_cost
FROM restaurants
ORDER BY avg_cost ASC
LIMIT 5;

-- Which nearby restaurants (within 5 miles) are highly rated (4.0+)?
SELECT name, cuisine, distance_miles, rating
FROM restaurants
WHERE distance_miles <= 5 AND rating >= 4.0
ORDER BY rating DESC, distance_miles ASC;


-- a. Return name, distance_miles for restaurants within 2.0 miles, ordered by distance.
SELECT name, distance_miles
FROM restaurants
WHERE distance_miles <= 2
ORDER BY distance_miles ASC;

-- b. Show the top 3 restaurants by rating (highest first).
SELECT name, rating
FROM restaurants
ORDER BY rating DESC
LIMIT 3;

-- c. List `name, avg_cost` and cost with 7.5% tax as `cost_with_tax`.
SELECT name, avg_cost, ROUND(avg_cost * 1.075, 2) AS cost_with_tax
FROM restaurants
ORDER BY avg_cost ASC;


-- d. How many restaurants are there per cuisine, highest count first?
SELECT cuisine, COUNT(cuisine)
FROM restaurants
GROUP BY cuisine
ORDER BY COUNT(cuisine) DESC;

