DROP DATABASE IF EXISTS matrices;
CREATE DATABASE matrices;

-- Connect to running database
\c matrices;

-- delete everything above this comment if you
-- copy and paste the contents of this file into
-- sqlfiddle
CREATE TABLE matValues(
    row INT,
    col INT,
    matrixID INT,
    value INT
);

INSERT INTO matValues Values(1, 1, 1, 1);
INSERT INTO matValues Values(1, 2, 1, -2);
INSERT INTO matValues Values(1, 3, 1, 3);
INSERT INTO matValues Values(2, 1, 1, 6);
INSERT INTO matValues Values(2, 2, 1, -1);
INSERT INTO matValues Values(2, 3, 1, 4);

INSERT INTO matValues Values(1, 1, 2, -3);
INSERT INTO matValues Values(1, 2, 2, 5);
INSERT INTO matValues Values(2, 1, 2, 2);
INSERT INTO matValues Values(2, 2, 2, 7);
INSERT INTO matValues Values(3, 1, 2, 8);
INSERT INTO matValues Values(3, 2, 2, 9);
