WITH 6days AS (
    SELECT visited_on,
            SUM(SUM(amount)) OVER (
                     ORDER BY visited_on
                        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
                        ) AS 7day_amount,
            COUNT(visited_on) OVER (
              ORDER BY visited_on
             ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
             ) as window_avg_count
FROM Customer
GROUP BY visited_on
)
SELECT visited_on,
        7day_amount AS amount,
        ROUND(7day_amount / 7, 2) AS average_amount
FROM 6days
WHERE window_avg_count = 7
ORDER BY visited_on