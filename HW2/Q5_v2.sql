SELECT instructor
FROM hersheykurra.q5_dataa join hersheykurra.q5_created_data
on hersheykurra.q5_dataa.subject=hersheykurra.q5_created_data.subject
GROUP BY instructor
HAVING COUNT(*) = (SELECT COUNT(*) FROM hersheykurra.q5_created_data)

-- Explanation:
-- hersheykurra.q5_dataa is the main table 
-- hersheykurra.q5_created_data is the new table we created to check the subjects. 
-- I created a new table called q5_created_data in my database - hersheykurra which wil contain whatever subjects you would like to check in the main table (q5_dataa)
-- I queried it as: join both the tables based on subject then i am telling
-- to group by instructor names who are having count as 3. This will check if they are teaching all the 3 subjects.