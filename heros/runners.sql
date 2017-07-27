DROP DATABASE IF EXISTS runners;
CREATE DATABASE runners;

-- Connect to running database
\c runners;

-- delete everything above this comment if you
-- copy and paste the contents of this file into
-- sqlfiddle
CREATE TABLE runners(
    runnerId INT,
    firstName VARCHAR(200),
    lastName VARCHAR(200),
    homeZip INT,
    PRIMARY KEY(runnerId)
);

CREATE TABLE zips(
    zip1 INT,
    zip2 INT,
    distance INT
);

CREATE TABLE races(
    raceId INT,
    raceZip INT,
    PRIMARY KEY(raceId)
);

CREATE TABLE results(
    raceId INT,
    runnerId INT,
    time INT
);

INSERT INTO runners VALUES (1, 'Barry', 'Allen', '10002');
INSERT INTO runners VALUES (2, 'Clark', 'Kent', '10041');
INSERT INTO runners VALUES (3, 'Carol', 'Danvers', '10103');
INSERT INTO runners VALUES (4, 'Diana', 'Prince', '10254');
INSERT INTO runners VALUES (5, 'Wally', 'West', '10455');
INSERT INTO runners VALUES (6, 'Kara', 'Zor-El', '10506');

-- Distance from all runners to race 1
INSERT INTO zips VALUES (10002, 11381, 50);
INSERT INTO zips VALUES (10041, 11381, 62);
INSERT INTO zips VALUES (10103, 11381, 18);
INSERT INTO zips VALUES (10254, 11381, 27);
INSERT INTO zips VALUES (10455, 11381, 33);
INSERT INTO zips VALUES (10506, 11381, 81);

-- Distance from all runners to race 2
INSERT INTO zips VALUES (10002, 11652, 11);
INSERT INTO zips VALUES (10041, 11652, 85);
INSERT INTO zips VALUES (10103, 11652, 40);
INSERT INTO zips VALUES (10254, 11652, 22);
INSERT INTO zips VALUES (10455, 11652, 45);
INSERT INTO zips VALUES (10506, 11652, 25);

-- Distance from all runners to race 3
INSERT INTO zips VALUES (10002, 10501, 38);
INSERT INTO zips VALUES (10041, 10501, 15);
INSERT INTO zips VALUES (10103, 10501, 60);
INSERT INTO zips VALUES (10254, 10501, 55);
INSERT INTO zips VALUES (10455, 10501, 33);
INSERT INTO zips VALUES (10506, 10501, 22);

-- Distance from all runners to race 4
INSERT INTO zips VALUES (10002, 11403, 11);
INSERT INTO zips VALUES (10041, 11403, 91);
INSERT INTO zips VALUES (10103, 11403, 35);
INSERT INTO zips VALUES (10254, 11403, 49);
INSERT INTO zips VALUES (10455, 11403, 28);
INSERT INTO zips VALUES (10506, 11403, 15);

-- Distance from all runners to race 5
INSERT INTO zips VALUES (10002, 10611, 21);
INSERT INTO zips VALUES (10041, 10611, 45);
INSERT INTO zips VALUES (10103, 10611, 18);
INSERT INTO zips VALUES (10254, 10611, 38);
INSERT INTO zips VALUES (10455, 10611, 31);
INSERT INTO zips VALUES (10506, 10611, 52);

-- Distance from all runners to race 6
INSERT INTO zips VALUES (10002, 10822, 80);
INSERT INTO zips VALUES (10041, 10822, 25);
INSERT INTO zips VALUES (10103, 10822, 17);
INSERT INTO zips VALUES (10254, 10822, 41);
INSERT INTO zips VALUES (10455, 10822, 10);
INSERT INTO zips VALUES (10506, 10822, 35);

-- Races and their zips
INSERT INTO races VALUES (1, 11381);
INSERT INTO races VALUES (2, 11652);
INSERT INTO races VALUES (3, 10501);
INSERT INTO races VALUES (4, 11403);
INSERT INTO races VALUES (5, 10611);
INSERT INTO races VALUES (6, 10822);

-- Results for race 1
INSERT INTO results VALUES (1, 1, 90);
INSERT INTO results VALUES (1, 2, 73);
INSERT INTO results VALUES (1, 3, 61);
INSERT INTO results VALUES (1, 4, 54);

-- Results for race 2
INSERT INTO results VALUES (2, 1, 83);
INSERT INTO results VALUES (2, 2, 80);
INSERT INTO results VALUES (2, 3, 62);

-- Results for race 3
INSERT INTO results VALUES (3, 1, 79);
INSERT INTO results VALUES (3, 2, 65);
INSERT INTO results VALUES (3, 4, 70);

-- Results for race 4
INSERT INTO results VALUES (4, 2, 59);
INSERT INTO results VALUES (4, 3, 67);
INSERT INTO results VALUES (4, 4, 50);
