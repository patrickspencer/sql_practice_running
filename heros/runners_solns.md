# Solutions to 'Runners' problems

## How far does each runner have to travel to compete in each race?

```
SELECT r.RunnerId, a.RaceId, z.Distance
FROM Runner r
CROSS JOIN Race a
INNER JOIN Zip z
    ON r.HomeZip = z.Zip1
    AND a.RaceZip = z.Zip2
```

## Find each runner's personal best time

```
SELECT r.RunnerId, MIN(a.Time) AS BestTime
FROM Runner r
LEFT JOIN Results e
    ON r.RunnerId = e.RunnerId
GROUP BY r.RunnerId
```

## For each runner, determine how they placed in each race?

```
SELECT r1.raceid, r1.runnerid, COUNT(r1.time) AS rank
FROM results r1
JOIN results r2
  ON r1.raceid = r2.raceid
  AND r2.time <= r1.time
GROUP BY r1.raceid, r1.runnerid
ORDER BY r1.raceid, rank
```

##  Who won each race?

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

## Find the list of all runners that ran in each race, including runners who have yet to compete and races that have no participants

```
SELECT r.RunnerId, a.RaceId
FROM Runner r
LEFT JOIN Results e
    ON r.RunnerId = e.RunnerId
FULL OUTER JOIN Race a
    ON e.RaceId = a.RaceId
```
