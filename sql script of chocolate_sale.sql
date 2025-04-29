select distinct extract(Month from saleDate) as All_months from sales;
-- or
select distinct month(saleDate) from sales;

-- Total Sales group by Year
select year(saledate) as year ,sum(Amount) as total_sales from sales
group by year(saleDate);

-- Total Sales group by Month
select month(saledate) as Month,sum(Amount) as total_sales,sum(Boxes) as total_boxes from sales
group by month(saleDate)
order by Month desc;

-- tells about distinct products
select distinct(product) from products;

-- Gives the count of distinct products
select count(distinct(product)) from products;

-- limitin results for specific time period 
select 
month(saleDate) as Month,
sum(Amount) as total_sales,
sum(Boxes) as total_boxes 
from sales
where month(saleDate) between 2 AND 8
AND year(saleDate)=2021
group by Month;

 


