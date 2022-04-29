-- Q: sum all pages of each author
SELECT 
    author_fname, 
    author_lname, 
    SUM(pages)
FROM books
GROUP BY
    author_fname,
    author_lname;
