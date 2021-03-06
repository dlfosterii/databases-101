
-- The names of the restaurants that you gave a 5 stars to
SELECT restaurant_name 
FROM restaurant
WHERE stars = 5;


-- The favorite dishes of all 5-star restaurants
SELECT fav_dish
FROM restaurant
WHERE stars >= 5;


-- The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
SELECT id
FROM restaurant
WHERE restaurant_name 
LIKE '%Redeye Mule%';

-- Restaurants in the category of 'BBQ'
SELECT restaurant_name
FROM restaurant
WHERE category
LIKE '%BBQ%';

-- Restaurants that do take out
SELECT restaurant_name
FROM restaurant
WHERE takeout_avail = true;

-- Restaurants that do take out and are in the category of 'BBQ'
SELECT restaurant_name
FROM restaurant
WHERE category LIKE '%BBQ%'
AND takeout_avail = true;

-- Restaurants within 2 miles
SELECT restaurant_name
FROM restaurant
WHERE distance < 2; 

-- Restaurants you haven't eaten at in the last week
SELECT restaurant_name
FROM restaurant
WHERE visit_date <= '2020-05-13';

-- Restaurants you haven't eaten at in the last week and has 5 stars
SELECT restaurant_name
FROM restaurant
WHERE visit_date <= '2020-05-13'
AND stars = 5;

-- Aggregation and Sorting Queries PT2
-- List restaurants by the closest distance.
SELECT *
FROM restaurant
ORDER BY distance;


-- List the top 2 restaurants by distance.
SELECT restaurant_name
FROM restaurant
ORDER BY distance DESC
LIMIT 2;

-- List the top 2 restaurants by stars.
SELECT restaurant_name
FROM restaurant
ORDER BY stars DESC
LIMIT 2;

-- List the top 2 restaurants by stars where the distance is less than 2 miles.
SELECT restaurant_name
FROM restaurant
WHERE distance < 2
ORDER BY stars DESC
LIMIT 2;

-- Count the number of restaurants in the db.
SELECT COUNT(*)
FROM restaurant;

-- Count the number of restaurants by category.
SELECT category, COUNT(*)
FROM restaurant
GROUP BY category;

-- Get the average stars per restaurant by category.
SELECT category,AVG(stars)
FROM restaurant
GROUP BY category;

-- Get the max stars of a restaurant by category.
SELECT category,MAX(stars)
FROM restaurant
GROUP BY category;
