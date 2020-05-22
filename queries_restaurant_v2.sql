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
SELECT r.name as Restaurant, COUNT(*)
FROM restaurant r, review rv
WHERE r.rest_id = rv.rest_id
GROUP BY name;

-- List all the reviews along with the restaurant, and the reviewer's name. The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together.


-- Get the average stars given by each reviewer. (reviewer name, average star rating)


-- Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)


-- Get the number of restaurants in each category. (category name, restaurant count)


-- Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count)


-- Get the average star rating for a food category. (category name, average star rating)

