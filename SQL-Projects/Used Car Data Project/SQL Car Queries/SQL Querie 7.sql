-- What is the average price of cars grouped by year of manufacture?
SELECT Brand, Model, COUNT(Model) AS '# of Cars', Year, AVG(Price) AS 'Average Price'
FROM car_price_dataset
GROUP BY Brand , Model , Year
ORDER BY Brand ASC , Model ASC , Year DESC