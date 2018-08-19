use sakila;

SELECT 
    first_name, last_name
FROM
    actor;

SELECT 
    CONCAT(UCASE(first_name), ' ', UCASE(last_name)) AS 'Actor Name'
FROM
    actor;

SELECT 
    actor_id, first_name, last_name
FROM
    actor
WHERE
    first_name = 'Joe';

SELECT 
    *
FROM
    actor
WHERE
    last_name LIKE '%gen%';

#2c. Find all actors whose last names contain the letters LI. This time, order the rows by last name and first name, in that order: */
SELECT 
    *
FROM
    actor
WHERE
    last_name LIKE '%li%'
ORDER BY last_name , first_name;

#2d. Using IN, display the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China: */
SELECT * FROM country
WHERE country in ('Afghanistan', 'Bangladesh', 'China');

#3a. You want to keep a description of each actor. You don't think you will be performing queries on a description, so create a column in the table actor named description and use the data type BLOB (Make sure to research the type BLOB, as the difference between it and VARCHAR are significant).
ALTER TABLE actor
ADD COLUMN description blob AFTER last_name;

#3b. Delete description column
Alter table actor drop description;


