# Write your MySQL query statement below
SELECT  s.student_id,
        s.student_name,
        j.subject_name,
        IFNULL(COUNT(e.subject_name),0) AS attended_exams
FROM Students s CROSS JOIN Subjects j
                LEFT JOIN Examinations e ON s.student_id = e.student_id 
                AND e.subject_name = j.subject_name
GROUP BY    s.student_id,
            s.student_name,
            j.subject_name
ORDER BY    s.student_id,
            j.subject_name