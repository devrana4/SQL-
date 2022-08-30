--What if you want to easily query the table to see in which year the 13th Summer Olympics were held? You'd need to number the rows for that.
SELECT
  Year,

  -- Assign numbers to each year
  ROW_NUMBER()OVER() AS Row_N
FROM (
  SELECT distinct year
  FROM Summer_Medals
  ORDER BY Year ASC
) AS Years
ORDER BY Year ASC;
