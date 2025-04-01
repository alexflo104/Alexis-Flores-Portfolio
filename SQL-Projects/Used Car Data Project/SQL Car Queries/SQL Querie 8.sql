-- Which car has the lowest mileage but has had more than two owners?
SELECT Brand, Model, MIN(Mileage) AS 'Lowest Milage On a Car', Owner_Count
FROM car_price_dataset
WHERE Owner_Count >= 2
GROUP BY Brand , Model, Owner_Count
ORDER BY Brand ASC , Model ASC