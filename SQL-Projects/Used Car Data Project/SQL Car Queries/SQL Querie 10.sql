-- Which year has the highest average price for cars?
SELECT ROW_NUMBER() OVER (ORDER BY avg(Price) DESC) AS Number, Year, AVG(price) as 'Average Price'
FROM car_price_dataset
GROUP BY Year
ORDER BY 'Average Price' DESC