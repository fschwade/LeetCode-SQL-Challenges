WITH weight_run_sum AS
        (SELECT person_name,
                weight,
                SUM(weight) OVER (ORDER BY turn) AS weight_total
        FROM Queue
        )
SELECT person_name
FROM weight_run_sum
WHERE weight_total <= 1000
ORDER BY Weight_total DESC
LIMIT 1