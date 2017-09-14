# Solutions to 'Heros' problems

Some of these problems don't have solutions :(  
Pull requests welcome!

## How many superheros (good, bad, neither) are there?

```sql
SELECT COUNT(DISTINCT personalid)
FROM status
```

You may think you can run but this returns the count of *all* the rows and not just the distinct rows. I think this is because `DISTINCT` is run *after* `COUNT`.

## How many of each type are there currently? Include whether they are good or bad.

```sql
SELECT * FROM type_ref
```

## Compare the numbers at the end of the year to the beginning of the year. (You can assume beginning of the year has FromDate = NULL and the end of the year as ToDate = NULL)

```sql
SELECT 
    sum(case when fromdate is null then 1 else 0 end) members_beginning_year,
    sum(case when todate is null then 1 else 0 end) members_end_of_year
FROM status
```

## Which leaders had at least one follower? Order from highest number of followers to lowest.

```sql
SELECT leaderid, COUNT(followerid) 
FROM connections
GROUP BY leaderid
```

## How many times did people change from good to evil (or vice versa)?

## Do you get more promotions (sidekick -> hero vs. crony -> villain ) on the good side or the bad side?

## Which happens more often? Civilians going to the good or the bad side? (Don’t count retirement).
