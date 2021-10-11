Create database gold_stats;

use gold_stats;

CREATE TABLE prices (
    Date DATE,
    Currency VARCHAR(3),
    Value DECIMAL(10 , 2 ),
    PRIMARY KEY (Date , Currency)
);

CREATE TABLE currency_conv (
    Date DATE,
    Currency VARCHAR(3),
    Rate_in_USD DECIMAL(10 , 2 ),
    PRIMARY KEY (DATE , Currency)
);

CREATE TABLE cons_Demand (
    Date DATE,
    Country VARCHAR(100),
    Currency VARCHAR(3),
    Tonnes DECIMAL(10 , 2 ),
    PRIMARY KEY (Date , Country)
);

CREATE TABLE Sup_dem (
    Date DATE,
    Supply DECIMAL(10 , 2 ),
    Demand DECIMAL(10 , 2 ),
    Surplus DECIMAL(10 , 2 ),
    PRIMARY KEY (DATE)
);

