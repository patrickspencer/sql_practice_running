DROP DATABASE IF EXISTS heros;
CREATE DATABASE heros;

-- Connect to Heros database
\c heros;

CREATE TABLE Status(
    ID INT,
    PersonalID INT,
    TypeId INT,
    FromDate DATE,
    ToDate DATE,
    PRIMARY KEY(ID)
);

CREATE TABLE Connections(
    LeaderID INT,
    FollowerID INT
);

CREATE TABLE Type_REF(
    TypeID INT,
    TypeName VARCHAR(100),
    IsGood INT,
    PRIMARY KEY(TypeID)
);

INSERT INTO Status VALUES (2, 1, 3, to_date('2014-01-12', 'YYYY-MM-DD'), to_date('2014-03-15', 'YYYY-MM-DD'));
INSERT INTO Status VALUES (3, 1, 4, to_date('2014-03-15', 'YYYY-MM-DD'), to_date('2014-08-20', 'YYYY-MM-DD'));
INSERT INTO Status VALUES (4, 1, 2, to_date('2014-08-20', 'YYYY-MM-DD'), null);
INSERT INTO Status VALUES (5, 2, 1, null,to_date('2014-10-03', 'YYYY-MM-DD'));
INSERT INTO Status VALUES (6, 2, 2, to_date('2014-10-03', 'YYYY-MM-DD'), to_date('2014-10-19', 'YYYY-MM-DD'));
INSERT INTO Status VALUES (7, 2, 1, to_date('2014-10-19', 'YYYY-MM-DD'), null);
INSERT INTO Status VALUES (8, 3, 5, null, to_date('', 'YYYY-MM-DD'));
INSERT INTO Status VALUES (9, 3, 1, to_date('2014-02-14', 'YYYY-MM-DD'), null);
INSERT INTO Status VALUES (10, 4, 2, null,to_date('2014-02-14', 'YYYY-MM-DD'));
INSERT INTO Status VALUES (11, 4, 5, to_date('2014-08-20', 'YYYY-MM-DD'), null);
INSERT INTO Status VALUES (12, 5, 4, null, null );
INSERT INTO Status VALUES (13, 6, 3, null, to_date('2014-01-03', 'YYYY-MM-DD'));
INSERT INTO Status VALUES (14, 6, 1, to_date('2014-01-13', 'YYYY-MM-DD'), null);


INSERT INTO Connections VALUES (2, 1);
INSERT INTO Connections VALUES (4, 1);
INSERT INTO Connections VALUES (6, 8);
INSERT INTO Connections VALUES (9, 6);
INSERT INTO Connections VALUES (10, 11);
INSERT INTO Connections VALUES (10, 12);
INSERT INTO Connections VALUES (10, 13);

INSERT INTO Type_REF VALUES (1, 'Hero', 1);
INSERT INTO Type_REF VALUES (2, 'Villian', 0);
INSERT INTO Type_REF VALUES (3, 'Sidekick', 1);
INSERT INTO Type_REF VALUES (4, 'Crony', 0);
INSERT INTO Type_REF VALUES (5, 'Civilian', null);

