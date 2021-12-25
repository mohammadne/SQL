-- Select all books written by Carver or Lahiri or Smith

-- A1
SELECT title, author_lname FROM books
WHERE author_lname='Carver' OR
      author_lname='Lahiri' OR
      author_lname='Smith';

-- A2
SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
