-- What are the top 5 most expensive cars in the dataset based on price?
SELECT ROW_NUMBER() OVER (ORDER BY avg(Price) DESC) AS Number, Brand, Model, AVG(Price) as Average
FROM `car_price_dataset`
Group by Brand, Model
Order by Average Desc
LIMIT 5;
