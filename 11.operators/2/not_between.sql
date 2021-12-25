-- Select all books not published between 2004 and 2015

-- A1
SELECT title, released_year FROM 
books WHERE released_year < 2004 && 
released_year > 2015;

-- A2
SELECT title, released_year FROM books 
WHERE released_year NOT BETWEEN 2004 AND 2015;
