1--Write an SQL query to retrieve every record and column from the sales_2024
SELECT *
FROM salesdata_2024;

2--Write an SQL query to select specific column for your project
SELECT customer_id,category,region,revenue,delivery_days,quantity
FROM salesdata_2024;

3--Wrie an SQL query to calculate the overall quantity of items sold across transactions
SELECT sum(quantity) AS Total_quantity_sold
FROM salesdata_2024;

4--what is the average quantity sold per transaction
SELECT AVG(quantity) AS average_quantity_sold
FROM salesdata_2024;

5--Whats the minimum quantity sold
SELECT min(quantity)
FROM salesdata_2024;

6--Whats the maximum quantity sold
SELECT max(quantity)
FROM salesdata_2024;

7--Write an SQL query to find the top 2 categories for a specific region like the north
SELECT top(2)  category
FROM salesdata_2024
where region = 'north'

 8--Write an SQL query to generate the total revenue for the entire year
SELECT sum(revenue) AS Total_Revenue
FROM salesdata_2024;

9--Write an SQL query 
SELECT category, sum(revenue) as category_revenue
FROM salesdata_2024
GROUP BY category
ORDER BY category_revenue  desc

10--Write a SQL query to retreive the total number of orders
SELECT COUNT(*) ,customer_id
FROM salesdata_2024;

11--Write a query to select total sales in the electronics and clothing categories
SELECT category, sum(quantity) AS sales
FROM salesdata_2024
GROUP BY category 
HAVING category IN ('electronics','clothing');

OR---------------------------------------------------
SELECT category, sum(quantity) AS sales
FROM salesdata_2024 
WHERE  category IN ('electronics','clothing')
GROUP BY category

13 Write an SQL query to determine  total sales in individual categories
SELECT * ,sum (quantity) over(partition BY category) AS total_sales
FROM salesdata_2024;

14--Write an SQL query rank all transactions by quatity in ascending and descending order
SELECT * ,rank() over(order by quantity desc) as descending,
rank()over(order by quantity asc) as ascending
FROM salesdata_2024;
 
15--Write an SQL to display top two highest and lowest revenue generating transaction
;WITH CTE As(
 SELECT * ,
       rank() over(order by revenue desc) as  Descending,
        rank() over(order by revenue asc) as Ascending
FROM salesdata_2024
)
SELECT *
FROM CTE
WHERE descending <=2 OR  ascending <=2;

16--Wrie a SQL query to retreive data for specific regions like west and north
SELECT *
FROM SALESDATA_2024
FROM region IN ( 'west' ,'north');

17--Write a query for name in the category column  starting with C with 7 with characters 
SELECT *
FROM SALESDATA_2024
WHERE category LIKE 'c_______'




















