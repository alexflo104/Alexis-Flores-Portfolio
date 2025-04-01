-- Which manufacturer has the most cars listed in the dataset?
SELECT Brand, COUNT(model) AS 'Number of Cars'
FROM car_price_dataset
GROUP BY Brand
ORDER BY COUNT(model) DESC;