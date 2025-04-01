-- Which manufacturer produces the highest number of electric vehicles in the dataset?
SELECT Brand, COUNT(Fuel_Type) AS '# of Electric Cars'
FROM car_price_dataset
WHERE Fuel_Type = 'electric'
GROUP BY Brand
ORDER BY COUNT(Fuel_Type) DESC;