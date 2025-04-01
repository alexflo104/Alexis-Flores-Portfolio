-- Which fuel type (e.g., gasoline, diesel, electric) is most common in the dataset?
SELECT Fuel_Type, COUNT(Fuel_Type) AS '# of Cars'
FROM car_price_dataset
GROUP BY Fuel_Type
ORDER BY COUNT(Fuel_Type) DESC
