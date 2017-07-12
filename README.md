# Running SQL Database and Problems

This is Postgresql database for practicing SQL commands based super
heros and running! This was taken from a talk given by Courtney Epstein.

Run `psql -f running.sql` in the command line to create the database.

Pull requests are welcome!

## Schema

The tables along with their first rows are as follows:

### Runner
| RunnerId | FirstName | LastName | HomeZip |
| -------- | --------- | -------- | ------- |
|     1    |   Barry   |   Allen  |  10012  |

### Zip

| Zip1  | Zip1  | Distance |
| ----- | ----- | -------- |
| 10012 | 11381 |    13    |

### Race

| RaceId | RaceZip |
| ------ | ------- |
|   1    |  11381  |

### Results

| RaceId | RaceZip | Time |
| ------ | ------- | ---- |
|   1    |    1    |  30  |

## Questions

- How far does each runner have to travel to compete in each race?
- Find each runner's personal best time.
- For each runner, determine how they placed in each race.
- Who won each race?
- Find the list of all runners that ran in each race, including runners
  who have yet to compete and races that have no participants?
