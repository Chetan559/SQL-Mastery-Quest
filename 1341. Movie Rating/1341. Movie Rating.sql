-- Write your PostgreSQL query statement below
WITH top_user AS (SELECT u.name AS results FROM MovieRating mr
                    JOIN Users u ON mr.user_id = u.user_id
                    GROUP BY mr.user_id, u.name
                    ORDER BY COUNT(movie_id) DESC, u.name ASC
                    LIMIT 1),

top_movie AS (SELECT m.title AS results FROM MovieRating mr
            JOIN Movies m ON mr.movie_id = m.movie_id 
            -- WHERE TO_CHAR(created_at, 'YYYY-MM') = '2020-02' -- this is slower than the next one because it needs to convert the date to a string
            WHERE created_at >= '2020-02-01' AND created_at < '2020-03-01'
            GROUP BY title
            ORDER BY AVG(mr.rating) DESC, m.title ASC
            LIMIT 1)

SELECT * FROM top_user UNION ALL SELECT * FROM top_movie