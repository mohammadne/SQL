-- INNER JOIN
-- intersection product
-- اشتراک کل ضرب های کراس جوین که شرط خواسته شده رو دارند
-- we will join two tables based on a condition

-- Q: give every customer corresponding order

-- IMPLICIT INNER JOIN
SELECT *
FROM customers, orders
WHERE customers.id = orders.customer_id;
-- +----+------------+-----------+------------------+----+------------+--------+-------------+
-- | id | first_name | last_name | email            | id | order_date | amount | customer_id |
-- +----+------------+-----------+------------------+----+------------+--------+-------------+
-- |  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
-- |  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
-- |  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
-- |  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
-- |  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
-- +----+------------+-----------+------------------+----+------------+--------+-------------+

-- EXPLICIT INNER JOIN
SELECT *
FROM customers
JOIN orders ON customers.id = orders.customer_id;

-- OR

SELECT *
FROM orders
JOIN customers ON customers.id = orders.customer_id;

-- OR, inner join is most common, so the pure join == inner join

SELECT *
FROM orders
INNER JOIN customers ON customers.id = orders.customer_id;

-- focus that you can have a meaningless arbitrary join as follow
SELECT *
FROM customers
JOIN orders ON customers.id = orders.id;

-- getting fancier
SELECT *
FROM orders
JOIN customers ON customers.id = orders.customer_id;
ORDER BY amount;

SELECT *
FROM customers
JOIN orders ON customers.id = orders.customer_id
GROUP BY orders.customer_id;
-- +----+------------+-----------+------------------+----+------------+--------+-------------+
-- | id | first_name | last_name | email            | id | order_date | amount | customer_id |
-- +----+------------+-----------+------------------+----+------------+--------+-------------+
-- |  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
-- |  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
-- |  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
-- +----+------------+-----------+------------------+----+------------+--------+-------------+

-- Q: find the total spending for each customer
SELECT 
    first_name,
    last_name,
    order_date,
    SUM(amount) as total_spent
FROM customers
JOIN orders ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;
-- +------------+-----------+-------------+
-- | first_name | last_name | total_spent |
-- +------------+-----------+-------------+
-- | George     | Michael   |      813.17 |
-- | Bette      | Davis     |      450.25 |
-- | Boy        | George    |      135.49 |
-- +------------+-----------+-------------+
