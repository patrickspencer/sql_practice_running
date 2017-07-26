# Solution

```
select m1.row, m2.col, sum(m1.value*m2.value)
from matValues m1
join matValues m2 on m2.row = m1.col
where m1.matrixID = 1 and m2.matrixID = 2
group by m1.row, m2.col
```
