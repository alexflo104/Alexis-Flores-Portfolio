-- Which brand has the highest average price for cars with automatic transmission?
SELECT ROW_NUMBER() OVER (ORDER BY avg(Price) DESC) AS Number, Brand, Transmission, AVG(Price) as Average
FROM car_price_dataset
WHERE Transmission = 'Automatic'
GROUP BY Brand, Transmission
ORDER BY Average DESC