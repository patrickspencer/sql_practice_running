# Matrix multiplication

## Goal

Multiply matrices with sql!

## Setup

Suppose you have two matrices that look like this:

Matrix 1:

```
| 1 | -2 | 3 |
| 6 | -1 | 4 |
```

Matrix 2:

```
| -3 | 5 |
| 2  | 7 |
| 8  | 9 |
```

and you have an sql table that looks like this:

| id | row | col | matrixID | value |
|----|-----|-----|----------|-------|
| 1  | 1   | 1   | 1        | 1     |
| 2  | 1   | 2   | 1        | -2    |
| 3  | 1   | 3   | 1        | 3     |
| 4  | 2   | 1   | 1        | 6     |
| 5  | 2   | 2   | 1        | -1    |
| 6  | 2   | 3   | 1        | 4     |
| 7  | 1   | 1   | 2        | -3    |
| 8  | 1   | 2   | 2        | 5     |
| 9  | 2   | 1   | 2        | 2     |
| 10 | 2   | 2   | 2        | 7     |
| 11 | 3   | 1   | 2        | 8     |
| 12 | 3   | 2   | 2        | 9     |

You should run an sql query and get this:

| id | row | col | value |
|----|-----|-----|-------|
| 1  | 1   | 1   | 17    |
| 2  | 1   | 2   | 18    |
| 4  | 2   | 1   | 12    |
| 5  | 2   | 2   | 59    |

This table represents the matrix

```
| 17 | 18 |
| 12 | 59 |
```

which is the product of the matrices 1 and 2 above.
