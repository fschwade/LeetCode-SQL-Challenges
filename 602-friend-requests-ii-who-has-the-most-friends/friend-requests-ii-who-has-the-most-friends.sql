WITH id_counts AS (
    SELECT requester_id AS id
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id
    FROM RequestAccepted
    )
SELECT id,
        COUNT(*) as num
FROM id_counts
GROUP BY id
ORDER BY num DESC
LIMIT 1