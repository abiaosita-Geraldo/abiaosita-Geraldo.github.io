SELECT *
FROM salesdata_2024;

SELECT customer_id,category,region,revenue,delivery_days,quantity
FROM salesdata_2024;

SELECT sum(quantity) AS Total_quantity_sold
FROM salesdata_2024;

SELECT AVG(quantity) AS average_quantity_sold
FROM salesdata_2024;

SELECT min(quantity)
FROM salesdata_2024;


SELECT max(quantity)
FROM salesdata_2024;

SELECT top(2)  category
FROM salesdata_2024
where region = 'north'

SELECT sum(revenue) as Total_Revenue
FROM salesdata_2024;

SELECT category, sum(revenue) as category_revenue
FROM salesdata_2024
GROUP BY category
ORDER BY category_revenue  desc
 
SELECT COUNT(*) ,customer_id
FROM salesdata_2024;


SELECT category, sum(quantity) as sales
FROM salesdata_2024
GROUP BY category 
HAVING category in ('electronics','clothing');


SELECT category, sum(quantity) as sales
FROM salesdata_2024 
WHERE  category in ('electronics','clothing')
GROUP BY category

SELECT * ,sum (quantity) over(partition by category) as total_sales
FROM salesdata_2024;


SELECT * ,rank() over(order by quantity desc) as descending,
rank()over(order by quantity asc) as ascending
FROM salesdata_2024;
 

;WITH CTE As(
 SELECT * ,
       rank() over(order by revenue desc) as  Descending,
        rank() over(order by revenue asc) as Ascending
FROM salesdata_2024
)
SELECT *
FROM CTE
WHERE descending <=2 OR  ascending <=2;





SELECT *
FROM SALESDATA_2024
FROM region IN ( 'west' ,'north');


SELECT *
FROM SALESDATA_2024
WHERE category LIKE 'c_______'







