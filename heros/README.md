# Superheros SQL Databases and Problems

These are PostgreSQL databases and practice problems based on
superheros! This was taken from a talk given by Courtney Epstein.

There are two databases: one about superheros in running races and
another just about superheros in general.

## Runners DB

This database is about superheros who run and their performance in races.

### Schema

The tables along with their first rows are as follows:

#### runners

| runnerId | firstName | lastName | homeZip |
| -------- | --------- | -------- | ------- |
|     1    |   Barry   |   Allen  |  10012  |

#### zips

| zip1  | zip2  | distance |
| ----- | ----- | -------- |
| 10012 | 11381 |    13    |

#### races

| raceId | raceZip |
| ------ | ------- |
|   1    |  11381  |

### results

| raceId | runnerId | time |
| ------ | -------- | ---- |
|   1    |     1    |  30  |

### Questions

- How far does each runner have to travel to compete in each race?
- Find each runner's personal best time.
- For each runner, determine how they placed in each race.
- Who won each race?
- Find the list of all runners that ran in each race, including runners
  who have yet to compete and races that have no participants?

## Heros DB

This database is about superheros in general (and not just those that have super speed).

### Schema

The tables along with their first rows are as follows:

#### status

The status of each superhero.

| id | personalId | typeId | fromDate | toDate |
| -------- | --------- | -------- | ------- | ------- |
| 2 | 1 | 3 | 2014-01-12 | 2014-03-15 |

#### connections

Who is the leader and who is the follower in superhero pairs.

| leaderID  | followerID |
| ----- | ----- |
| 2 | 1 |

#### type_ref

Are the superheros good, bad, neither?

| typeId | typeName | isGood |
| ------ | ------- | ------- |
|   1    |  Hero  | 1 |
|   2    |  Villain  | 0 |

### Questions

- How many superheros are there?
- How many of each type are there currently? Include whether they are
  good or bad.
- Compare the numbers at the end of the year to the beginning of the
  year. (You can assume beginning of the year has FromDate = NULL and
  the end of the year as ToDate = NULL)
- Which leaders had at least one follower? Order from highest number of followers to lowest.
- How many times did people change from good to evil (or vice versa)?
- Do you get more promotions (sidekick -> hero vs. crony -> villain ) on the good side or the bad side?
- Which happens more often? Civilians going to the good or the bad side? (Don’t count retirement).
