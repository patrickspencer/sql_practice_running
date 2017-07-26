# Superheros SQL Databases and Problems

These are PostgreSQL databases and practice problems based on
superheros! This was taken from a talk given by Courtney Epstein.

There are two databases: one about superheros in running races and
another just about superheros in general.

## Runners DB

This database is about superheros who run and their performance in races.

### Schema

The tables along with their first rows are as follows:

#### Runner
| RunnerId | FirstName | LastName | HomeZip |
| -------- | --------- | -------- | ------- |
|     1    |   Barry   |   Allen  |  10012  |

#### Zip

| Zip1  | Zip2  | Distance |
| ----- | ----- | -------- |
| 10012 | 11381 |    13    |

#### Race

| RaceId | RaceZip |
| ------ | ------- |
|   1    |  11381  |

### Results

| RaceId | RunnerId | Time |
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

This database is about superheros superheros in general.

### Schema

The tables along with their first rows are as follows:

#### Status

The status of each superhero.

| ID | PersonalID | TypeID | FromDate | ToDate |
| -------- | --------- | -------- | ------- | ------- |
| 2 | 1 | 3 | 2014-01-12 | 2014-03-15 |

#### Connections

Who is the leader and who is the follower in superhero pairs.

| LeaderID  | FollowerID |
| ----- | ----- |
| 2 | 1 |

#### Type_REF

Are the superheros good, bad, neither?

| TypeID | TypeName | IsGood |
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
