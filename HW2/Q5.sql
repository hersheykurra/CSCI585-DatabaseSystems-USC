


SELECT instructor
FROM hersheykurra.q5_dataa
WHERE subject IN (SELECT subject FROM hersheykurra.q5_created_data)
GROUP BY instructor
HAVING COUNT(*) = (SELECT COUNT(*) FROM hersheykurra.q5_created_data)

-- Explanation:
-- hersheykurra.q5_dataa is the main table 
-- hersheykurra.q5_created_data is the new table we created to check the subjects. 
-- I created a new table called q5_created_data in my database - hersheykurra which wil contain whatever subjects you would like to check
-- in the main table (q5_dataa)
-- I queried it as: if the subjects in the maintable match the subjects in the newly
-- created table(q5_created_data). Basically retrieving instructors who teach any of the -- subjects in the q5_created_data and then i am telling
-- to group by instructor names who are having count as 3. This will check if they are
-- teaching all the 3 subjects.