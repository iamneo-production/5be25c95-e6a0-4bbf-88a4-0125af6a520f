/*1.Write a SQL Query to How many products were sold in February 2019?*/

select COUNT(*) AS products_sold
 from ecommerce
 where purchase_date >='2019-02-01' and purchase_date < '2019-03-01';
/*2.Write a SQL Query to Total sale amount in each year?*/

select substr(purchase_date,1,4) as sales_year , 
sum(price*quantity) as total_amount
 from ecommerce
 group by substr(purchase_date,1,4);
/*3.Write a SQL Query to What was the total sales amount of each product on a month-wise basis in the year 2019?*/

 select productname,
substr(PURCHASE_DATE,1,7) as Month,
sum(price*QUANTITY) as total_sales from ecommerce
where PURCHASE_DATE>='2019-01-01' and PURCHASE_DATE<'2020-01-01'
group by
PRODUCTNAME,
substr(PURCHASE_DATE,1,7)
order by
productname,
month;
/*4.Write a SQL Query to Count the Customers from each country?*/

select COUNTRY ,count(*) as number_of_customers
from ecommerce
GROUP BY COUNTRY;
/*5.Write a SQL Query to List all the unique product names sold from each year?*/

select distinct substr(PURCHASE_DATE,1,4) as year,
productname
from ecommerce order by substr(PURCHASE_DATE,1,4);
