SELECT author_fname FROM books ORDER BY author_lname DESC;
-- +--------------+
-- | author_fname |
-- +--------------+
-- | John         |
-- | Patti        |
-- +--------------+

SELECT title, released_year FROM books ORDER BY released_year;

-- it will filter based on released_year column
SELECT title, released_year FROM books ORDER BY 2;

SELECT author_fname, author_lname 
FROM books 
ORDER BY author_lname, author_fname;