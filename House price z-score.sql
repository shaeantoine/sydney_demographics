-- Calculate mean and standard deviation for 'Median House Price (2021)'
SELECT 
    AVG("Median House Price (2021)") AS mean_price,
    STDDEV("Median House Price (2021)") AS std_price
FROM 
    "Assignment"."House Prices";

-- Calculate z-scores for 'Median House Price (2021)'
SELECT 
    "Name",
    ("Median House Price (2021)" - mean_price) / std_price AS price_z_score
FROM 
    "Assignment"."House Prices",
    (SELECT AVG("Median House Price (2021)") AS mean_price,
            STDDEV("Median House Price (2021)") AS std_price
     FROM "Assignment"."House Prices") AS stats;
