--KPIs; 

select * from pizza_sales

select sum(total_price) AS Total_Revenue from pizza_sales

select sum(total_price) / count(distinct order_id) as Avg_Order_Value from pizza_sales

select sum(quantity) AS Total_Pizza_sold from pizza_sales

select count(distinct order_id) AS Total_Orders from pizza_sales

select sum(quantity)/ 
count(distinct order_id) AS Avg_Pizza_order
from pizza_sales

-- Trends;

-- daily trend
select DATENAME(DW, order_date) as order_day, 
count(distinct order_id) AS Total_orders
from pizza_sales
group by DATENAME(DW, order_date)

-- hourly trend
select DATEPART(HOUR, order_time) as order_hours,
count(distinct order_id) AS Total_orders
from pizza_sales
group by DATEPART(HOUR, order_time)
order by DATEPART(HOUR, order_time)

--% sales by category

select pizza_category, CAST(sum(total_price) AS DECIMAL(10,2)) as Total_sales, CAST(sum(total_price) * 100 / 
(select sum(total_price) from pizza_sales
WHERE MONTH(order_date) = 1) AS DECIMAL(10,2)) as Perc_sales
from pizza_sales
WHERE MONTH(order_date) = 1
group by pizza_category

--% sales by pizza size
select pizza_size, CAST(sum(total_price) AS DECIMAL(10,2)) as Total_sales,CAST(sum(total_price) * 100 / 
(select sum(total_price) from pizza_sales WHERE DATEPART(QUARTER, order_date) = 1) AS DECIMAL(10,2)) as Perc_sales
from pizza_sales
WHERE DATEPART(QUARTER, order_date) = 1
group by pizza_size
order by Perc_sales DESC

-- total sales per category
select pizza_category, sum(quantity) as Total_Pizza_sold
from pizza_sales
group by pizza_category

--top 5 best sellers
select top 5 pizza_name, sum(quantity) as Total_Pizza_sold
from pizza_sales
group by pizza_name
order by Total_Pizza_sold DESC

--Bottom 5 worst sellers
select top 5 pizza_name, sum(quantity) as Total_Pizza_sold
from pizza_sales
group by pizza_name
order by Total_Pizza_sold ASC