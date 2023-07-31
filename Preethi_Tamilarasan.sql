set timing on;
--1.Write a query to display how many products were sold in February 2019.

select count(Productname) as products_sold
from ecommerce
where purchase_date between '2019-02-01' and '2019-02-29';

--2.Write a sql query to total sales amount in each year?

SELECT (EXTRACT(YEAR FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS YEAR ,SUM(price*quantity) as totalsale 
FROM ecommerce
GROUP BY (EXTRACT(YEAR FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')));

--3.Write a sql query to what was  total sales amount of each product month_wise basis in the year 2019?

SELECT productname, (EXTRACT(MONTH FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS month ,SUM(price*quantity) AS sales
FROM ecommerce
WHERE (EXTRACT(YEAR FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) = 2019
GROUP BY productname,(EXTRACT(MONTH FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')))
ORDER BY productname asc;

--4.Write a sql query to count the customers from each country?

select country,count(customerno) as No_of_cust 
from ECOMMERCE
group by country; 

--5.Write a sql query to list all the unique productnames sold from each year?

SELECT DISTINCT(EXTRACT(YEAR FROM TO_DATE(PURCHASE_DATE,'YYYY-MM-DD'))) AS Year, productname
FROM ecommerce
ORDER BY year;