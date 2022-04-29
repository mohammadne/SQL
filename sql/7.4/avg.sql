-- Q: average stock quantity for books released in the same year ?
SELECT
    released_year,
    AVG(stock_quantity) 
FROM books
GROUP BY released_year;

SELECT
    author_fname,
    author_lname,
    AVG(pages)
FROM books
GROUP BY
    author_fname,
    author_lname;