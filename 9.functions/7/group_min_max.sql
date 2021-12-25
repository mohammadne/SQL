-- Q: find the year each author published their first book?
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author,
    Max(pages) AS 'longets book'
FROM books
GROUP BY 
    author_fname, 
    author_lname;
-- +----------------------+--------------+
-- | author               | longets book |
-- +----------------------+--------------+
-- | Jhumpa Lahiri        |          291 |
-- | Neil Gaiman          |          465 |
-- | Dave Eggers          |          504 |
-- | Michael Chabon       |          634 |
-- | Patti Smith          |          304 |
-- | Raymond Carver       |          526 |
-- | Don DeLillo          |          320 |
-- | John Steinbeck       |          181 |
-- | David Foster Wallace |          343 |
-- +----------------------+--------------+