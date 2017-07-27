# Solution

```
SELECT m1.row, m2.col, sum(m1.value*m2.value)
FROM matValues m1
JOIN matValues m2 
  ON m2.row = m1.col
WHERE m1.matrixID = 1 
  AND m2.matrixID = 2
GROUP BY m1.row, m2.col
```
