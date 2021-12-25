SELECT REPLACE('Hello World', 'Hell', '&%#@');
-- +----------------------------------------+
-- | REPLACE('Hello World', 'Hell', '&%#@') |
-- +----------------------------------------+
-- | &%#@o World                            |
-- +----------------------------------------+

SELECT 
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'Wierd String'
FROM books;
-- +--------------+
-- | weird string |
-- +--------------+
-- | Th3 Nam3sa   |
-- | Nors3 Myth   |
-- +--------------+