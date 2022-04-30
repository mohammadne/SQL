-- Q: analyse the reviewers
SELECT 
    first_name,
    last_name,
    COUNT(rating) AS COUNT,
       Ifnull(Min(rating), 0)                      AS MIN, 
       Ifnull(Max(rating), 0)                      AS MAX, 
       Round(Ifnull(Avg(rating), 0), 2)            AS AVG,
    -- IF(Count(rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS 
    CASE 
        WHEN Count(rating) >= 10 THEN 'POWER USER' 
        WHEN COUNT(rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS STATUS
FROM reviewers
LEFT JOIN reviews
    ON reviewers.id = reviews.series_id
GROUP BY reviewers.id
ORDER BY COUNT;
-- +------------+-----------+-------+-----+-----+------+--------+
-- | first_name | last_name | COUNT | MIN | MAX | AVG  | STATUS |
-- +------------+-----------+-------+-----+-----+------+--------+
-- | Marlon     | Crafford  |     2 | 9.1 | 9.7 | 9.40 | ACTIVE |
-- | Thomas     | Stoneman  |     5 | 7.5 | 8.9 | 8.12 | ACTIVE |
-- | Wyatt      | Skaggs    |     5 | 6.0 | 9.9 | 8.08 | ACTIVE |
-- | Kimbra     | Masters   |     5 | 7.0 | 8.0 | 7.52 | ACTIVE |
-- | Domingo    | Cortes    |     5 | 7.5 | 8.5 | 7.94 | ACTIVE |
-- | Colt       | Steele    |     5 | 9.0 | 9.9 | 9.36 | ACTIVE |
-- | Pinkie     | Petit     |     5 | 6.5 | 9.1 | 8.12 | ACTIVE |
-- +------------+-----------+-------+-----+-----+------+--------+
