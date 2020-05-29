-- List all the reviews for a given restaurant given a specific restaurant ID.
SELECT r.name, rw.review
FROM review rw, restaurant r
WHERE rw.rest_id = r.rest_id 
AND rw.rest_id = 3;

-- List all the reviews for a given restaurant, given a specific restaurant name.
SELECT r.name, rw.review
FROM review rw, restaurant r
WHERE rw.rest_id = r.rest_id 
AND r.name = 'Redeye Mule';

-- List all the reviews for a given reviewer, given a specific author name.
SELECT rvr.name, rv.review
FROM review rv, reviewer rvr
WHERE rv.rev_id = rvr.revr_id
AND rvr.name = 'Jack Sprat';

SELECT *
FROM review rv
INNER JOIN reviewer rvr
ON rv.rev_id = rvr.revr_id
WHERE rvr.name = 'Jack Sprat';

-- List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.
restaurant name and the review text.
SELECT rest.name, rv.review
FROM restaurant rest, review rv
WHERE rest.rest_id = rv.rest_id

-- Get the average stars by restaurant. The result should have the restaurant name and its average star rating.
SELECT name,AVG(stars)
FROM restaurant r, review rv
WHERE r.rest_id = rv.rest_id
GROUP BY name;

-- Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.
SELECT r.name, COUNT(*)
FROM restaurant r, review rv
WHERE r.rest_id = rv.rest_id
GROUP BY name
name is 'restaurant name' count is 'Review Count';


-- List all the reviews along with the restaurant, and the reviewer's name. The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together.
SELECT r.name, rv.review, rvr.name
FROM restaurant r, review rv, reviewer rvr
WHERE r.rest_id = rv.rest_id
AND rv.rev_id = rvr.revr_id;

-- Get the average stars given by each reviewer. (reviewer name, average star rating)
SELECT rvr.name, AVG(rv.stars)
FROM review rv, reviewer rvr
WHERE rv.revr_id = rvr.revr_id
GROUP BY rvr.revr_id;

-- Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)
SELECT rvr.name, MIN(rv.stars)
FROM review rv, reviewer rvr
WHERE rv.revr_id = rvr.revr_id
GROUP BY rvr.revr_id;

-- Get the number of restaurants in each category. (category name, restaurant count)
SELECT category, COUNT(*)
FROM restaurant r
GROUP BY category;

-- Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count)
SELECT r.name, COUNT(rv.stars) AS total_5_stars
FROM restaurant r, review rv
WHERE r.rest_id = rv.rest_id
AND rv.stars = 5
GROUP BY r.name;


-- Get the average star rating for a food category. (category name, average star rating)
SELECT r.category, AVG(rv.stars)
FROM restaurant r, review rv
WHERE rv.revr_id = r.rest_id
GROUP BY r.category;
