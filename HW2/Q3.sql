SELECT 
  P.pid
FROM
  hersheykurra.q3_data Q,
  hersheykurra.q3_data P
WHERE
  Q.step = 0
  AND P.step = 1
  AND P.status = 'W'
  AND Q.status = 'C'
  AND Q.pid = P.pid;