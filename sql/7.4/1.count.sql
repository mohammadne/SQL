SELECT COUNT(DISTINCT author_fname) 
FROM books;
-- +------------------------------+
-- | COUNT(DISTINCT author_fname) |
-- +------------------------------+
-- |                            9 |
-- +------------------------------+

SELECT COUNT(DISTINCT author_lname, author_fname) AS 'selection count' 
FROM books 
WHERE title 
LIKE '%the%';
-- +-----------------+
-- | selection count |
-- +-----------------+
-- |               4 |
-- +-----------------+

SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year 
FROM books 
GROUP BY released_year;
-- +----------------------------+
-- | year                       |
-- +----------------------------+
-- | In 2003 2 book(s) released |
-- | In 2016 1 book(s) released |
-- | In 2001 2 book(s) released |
-- | In 1996 1 book(s) released |
-- | In 2012 1 book(s) released |
-- | In 2013 1 book(s) released |
-- | In 2000 1 book(s) released |
-- | In 2010 1 book(s) released |
-- | In 1981 1 book(s) released |
-- | In 1989 1 book(s) released |
-- | In 1985 1 book(s) released |
-- | In 1945 1 book(s) released |
-- | In 2004 1 book(s) released |
-- | In 2005 1 book(s) released |
-- +----------------------------+