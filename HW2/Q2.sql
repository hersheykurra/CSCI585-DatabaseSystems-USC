SELECT
  q2_data.class_name,
  COUNT(*) AS Total
FROM
  hersheykurra.q2_data
GROUP BY
  q2_data.class_name
ORDER BY
  Total DESC,
  q2_data.class_name;