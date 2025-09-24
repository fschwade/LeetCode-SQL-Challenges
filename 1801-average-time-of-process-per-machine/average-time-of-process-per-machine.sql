# Write your MySQL query statement below
SELECT  s.machine_id,
        ROUND(AVG(s.timestamp - e.timestamp),3) as processing_time
FROM Activity s JOIN Activity e 
                ON s.process_id = e.process_id 
                    AND s.machine_id = e.machine_id 
                    AND s.activity_type < e.activity_type
GROUP BY machine_id