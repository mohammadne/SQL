SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;
-- +----------------+----------+
-- | author_lname   | COUNT(*) |
-- +----------------+----------+
-- | Lahiri         |        2 |
-- | Gaiman         |        3 |
-- +----------------+----------+

-- COUNT(*) means counts in each row 
SELECT author_fname, author_lname, COUNT(*) 
    FROM books 
    GROUP BY author_lname;

-- it will group by unique 
-- author_lname and author_fname combination
SELECT author_fname, author_lname, COUNT(*) 
    FROM books 
    GROUP BY author_lname, author_fname;

SELECT CONCAT('In ', released_year, ' ', COUNT(*), 'book(s) released')
    AS 'books per year'
    FROM books 
    GROUP BY released_year
    ORDER BY released_year DESC;
