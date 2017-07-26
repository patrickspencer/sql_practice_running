# Solutions to 'Runners' problems

## Answered questions

### For each runner, determine how they placed in each race?

```
SELECT r1.raceid, r1.runnerid, COUNT(r1.time) AS rank
FROM results r1
JOIN results r2
  ON r1.raceid = r2.raceid
  AND r2.time <= r1.time
GROUP BY r1.raceid, r1.runnerid
ORDER BY r1.raceid, rank
```

###  Who won each race?

```
SELECT r.raceid, results.runnerid
FROM (
  SELECT raceid, MIN(time) as FastestTime
  FROM results
  GROUP BY raceid
) AS r
LEFT JOIN results
ON r.FastestTime = results.time
```

## Unanswered questions

- How far does each runner have to travel to compete in each race?
- Find each runner's personal best time.
- Find the list of all runners that ran in each race, including runners who have yet to compete and races that have no participants?
