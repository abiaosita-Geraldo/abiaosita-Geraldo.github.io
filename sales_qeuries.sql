select*
from salesdata_2024;

select customer_id,category,region,revenue,delivery_days,quantity
from salesdata_2024;

select sum(quantity) as Total_units_sold
from salesdata_2024;

select AVG(quantity) as average_quantity_sold
from salesdata_2024;

select min(quantity)
from salesdata_2024


select max(quantity)
from salesdata_2024

select top(2)  category
from salesdata_2024
where region = 'north'

select sum(revenue) as Total_Revenue
from salesdata_2024

select category, sum(revenue) as category_revenue
from salesdata_2024
group by category
order by category_revenue  desc
 
select count(*) customer_id
from salesdata_2024


select category, sum(quantity) as sales
from salesdata_2024
group by category 
having category in ('electronics','clothing');


select category, sum(quantity) as sales
from salesdata_2024 
where  category in ('electronics','clothing')
group by category

select* ,sum (quantity) over(partition by category) as total_sales
from salesdata_2024


select* ,rank() over(order by quantity desc) as descending,
rank()over(order by quantity asc) as ascending
from salesdata_2024
 

;with CTE As(
 select * ,
       rank() over(order by revenue desc) as  Descending,
        rank() over(order by revenue asc) as Ascending
from salesdata_2024
)
select*
from CTE
where descending <=2 or  ascending <=2;





Select*
from SALESDATA_2024
where region in ( 'west' ,'north')


select*
from SALESDATA_2024
where category like 'c_______'







