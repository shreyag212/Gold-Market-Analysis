select * from prices;

select distinct(Currency) from prices;

select * from prices
where Currency = 'USD';

select * from currency_conv;

select distinct(currency) from currency_conv;

select * from currency_conv
where Currency = 'USD';


INSERT INTO currency_conv
SELECT 
    Date, 'USD', 1
FROM
    prices
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            currency_conv
        WHERE
            prices.date = date)
        AND currency = 'USD';
        
        
        
CREATE TABLE price_USD (
    Date DATE,
    Country VARCHAR(100),
    Value DECIMAL(10 , 2 ),
    PRIMARY KEY (Date , Country)
);

INSERT INTO price_USD
SELECT 
    prices.date, prices.currency, Rate_in_USD * Value
FROM
    prices
        INNER JOIN
    Currency_conv ON prices.date = currency_conv.date
        AND prices.currency = currency_conv.currency;

select * from price_USD;

drop table prices;

drop table currency_conv;