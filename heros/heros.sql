DROP DATABASE IF EXISTS heros;
CREATE DATABASE heros;

-- Connect to Heros database
\c heros;

-- delete everything above this comment if you
-- copy and paste the contents of this file into
-- sqlfiddle
CREATE TABLE status(
    id INT,
    personalId INT,
    typeId INT,
    fromDate DATE,
    toDate DATE,
    PRIMARY KEY(id)
);

CREATE TABLE connections(
    leaderId INT,
    followerId INT
);

CREATE TABLE type_ref(
    typeId INT,
    typeName VARCHAR(100),
    isGood INT,
    PRIMARY KEY(typeId)
);

INSERT INTO status VALUES (2, 1, 3, to_date('2014-01-12', 'YYYY-MM-DD'), to_date('2014-03-15', 'YYYY-MM-DD'));
INSERT INTO status VALUES (3, 1, 4, to_date('2014-03-15', 'YYYY-MM-DD'), to_date('2014-08-20', 'YYYY-MM-DD'));
INSERT INTO status VALUES (4, 1, 2, to_date('2014-08-20', 'YYYY-MM-DD'), null);
INSERT INTO status VALUES (5, 2, 1, null,to_date('2014-10-03', 'YYYY-MM-DD'));
INSERT INTO status VALUES (6, 2, 2, to_date('2014-10-03', 'YYYY-MM-DD'), to_date('2014-10-19', 'YYYY-MM-DD'));
INSERT INTO status VALUES (7, 2, 1, to_date('2014-10-19', 'YYYY-MM-DD'), null);
INSERT INTO status VALUES (8, 3, 5, null, to_date('2014-02-14', 'YYYY-MM-DD'));
INSERT INTO status VALUES (9, 3, 1, to_date('2014-02-14', 'YYYY-MM-DD'), null);
INSERT INTO status VALUES (10, 4, 2, null,to_date('2014-02-14', 'YYYY-MM-DD'));
INSERT INTO status VALUES (11, 4, 5, to_date('2014-08-20', 'YYYY-MM-DD'), null);
INSERT INTO status VALUES (12, 5, 4, null, null );
INSERT INTO status VALUES (13, 6, 3, null, to_date('2014-01-03', 'YYYY-MM-DD'));
INSERT INTO status VALUES (14, 6, 1, to_date('2014-01-13', 'YYYY-MM-DD'), null);


INSERT INTO connections VALUES (2, 1);
INSERT INTO connections VALUES (4, 1);
INSERT INTO connections VALUES (6, 8);
INSERT INTO connections VALUES (9, 6);
INSERT INTO connections VALUES (10, 11);
INSERT INTO connections VALUES (10, 12);
INSERT INTO connections VALUES (10, 13);

INSERT INTO type_ref VALUES (1, 'Hero', 1);
INSERT INTO type_ref VALUES (2, 'Villian', 0);
INSERT INTO type_ref VALUES (3, 'Sidekick', 1);
INSERT INTO type_ref VALUES (4, 'Crony', 0);
INSERT INTO type_ref VALUES (5, 'Civilian', null);
