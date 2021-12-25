SELECT author_lname FROM books;
-- +----------------+
-- | author_lname   |
-- +----------------+
-- | Lahiri         |
-- | Gaiman         |
-- | Gaiman         |
-- | Lahiri         |
-- | Eggers         |
-- | Eggers         |
-- | Chabon         |
-- | Smith          |
-- | Eggers         |
-- | Gaiman         |
-- | Carver         |
-- | Carver         |
-- | DeLillo        |
-- | Steinbeck      |
-- | Foster Wallace |
-- | Foster Wallace |
-- +----------------+
-- 16 rows in set (0.00 sec)


SELECT DISTINCT author_lname FROM books;
-- +----------------+
-- | author_lname   |
-- +----------------+
-- | Lahiri         |
-- | Gaiman         |
-- | Eggers         |
-- | Chabon         |
-- | Smith          |
-- | Carver         |
-- | DeLillo        |
-- | Steinbeck      |
-- | Foster Wallace |
-- +----------------+
-- 9 rows in set (0.00 sec)

SELECT DISTINCT CONCAT(author_fname,' ', author_lname) AS 'full name' FROM books;
-- +----------------------+
-- | full name            |
-- +----------------------+
-- | Jhumpa Lahiri        |
-- | Neil Gaiman          |
-- | Dave Eggers          |
-- | Michael Chabon       |
-- | Patti Smith          |
-- | Raymond Carver       |
-- | Don DeLillo          |
-- | John Steinbeck       |
-- | David Foster Wallace |
-- +----------------------+
-- 9 rows in set (0.00 sec)
