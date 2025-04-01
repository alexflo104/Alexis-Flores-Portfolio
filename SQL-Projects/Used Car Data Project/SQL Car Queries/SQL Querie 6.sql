-- Which car model has the highest average engine size?
SELECT Brand, Model, AVG(Engine_Size)
FROM car_price_dataset
GROUP BY Brand , Model , Engine_Size
ORDER BY Brand ASC , Model ASC , Engine_Size DESC
