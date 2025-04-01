-- What is the distribution of cars based on body type (e.g., sedan, SUV, coupe, hatchback)?
SELECT 
	Brand,
    CASE
        WHEN Doors = 2 THEN 'Coupe'
        WHEN Doors = 3 THEN 'Hatchback'
        WHEN Doors = 4 THEN 'Sedan'
        WHEN Doors = 5 THEN 'SUV'
    END AS Car_Type,
    COUNT(Doors) AS '# of Cars'
FROM car_price_dataset
GROUP BY Brand , Doors
ORDER BY Brand ASC;