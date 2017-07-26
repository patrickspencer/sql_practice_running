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

You want to find ```matrix 1 * matrix 2``` using sql.

The table the represents both matrices looks like this:

| row | col | matrixID | value |
|-----|-----|----------|-------|
| 1   | 1   | 1        | 1     |
| 1   | 2   | 1        | -2    |
| 1   | 3   | 1        | 3     |
| 2   | 1   | 1        | 6     |
| 2   | 2   | 1        | -1    |
| 2   | 3   | 1        | 4     |
| 1   | 1   | 2        | -3    |
| 1   | 2   | 2        | 5     |
| 2   | 1   | 2        | 2     |
| 2   | 2   | 2        | 7     |
| 3   | 1   | 2        | 8     |
| 3   | 2   | 2        | 9     |

You should run an sql query and get this:

| row | col | value |
|-----|-----|-------|
| 1   | 1   | 17    |
| 1   | 2   | 18    |
| 2   | 1   | 12    |
| 2   | 2   | 59    |

This table represents the matrix

```
| 17 | 18 |
| 12 | 59 |
```

which is the product of multiplying matrix 1 above on the right by matrix 2.
