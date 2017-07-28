# Solutions to 'Runners' problems

## How far does each runner have to travel to compete in each race?

```
SELECT r.runnerId, a.raceId, z.distance
FROM runners r
CROSS JOIN races a
INNER JOIN zips z
    ON r.homeZip = z.zip1
    AND a.raceZip = z.zip2
```

or

```
SELECT ru.runnerId, ra.raceId, z.distance
FROM races ra
LEFT JOIN zips z
  ON z.zip2 = ra.raceZip
LEFT JOIN runners ru
  on ru.homeZip = z.zip1
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
SELECT r.raceId, re.runnerId
FROM (
  SELECT raceid, MIN(time) as FastestTime
  FROM results
  GROUP BY raceId
) AS r
LEFT JOIN results re
    ON r.FastestTime = re.time
```

## Find the list of all runners that ran in each race, including runners who have yet to compete and races that have no participants

```
SELECT r.runnerId, a.raceId
FROM runners r
LEFT JOIN results e
    ON r.runnerId = e.runnerId
FULL OUTER JOIN races a
    ON e.raceId = a.raceId
```
