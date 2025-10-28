(SELECT u.name as results 
FROM MovieRating r LEFT JOIN Users u ON r.user_id = u.user_id
GROUP BY r.user_id,
        u.name
ORDER BY COUNT(r.movie_id) DESC, 
        u.name ASC
LIMIT 1)

UNION ALL

(SELECT m.title AS results 
FROM MovieRating r LEFT JOIN Movies m ON r.movie_id = m.movie_id 
WHERE r.created_at BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY r.movie_id, 
        results
ORDER BY AVG(r.rating) DESC,
         m.title ASC
LIMIT 1)